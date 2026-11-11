# Thông số ghìm tâm gọn lại — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Mỗi súng PUBG chỉ còn 3 tư thế × 7 scope số phẳng, sửa được ở bảng "Thông số" mới (mở từ dòng cấu hình và từ menu nổi) và ở bảng nhỏ trong trận; bỏ phụ kiện; độ nhạy không còn tự nhân bảng số.

**Architecture:** Engine `pubg/g.j()` đã ưu tiên bản ghi khớp đủ (súng, scope, tư thế, grip, muzzle, stock), nên chỉ cần đổi dữ liệu sang định dạng "mdm_v2" (33 bản ghi/súng, hệ số = 1.0) qua một lớp Java thuần `mdm.RcStore`. Reset diễn ra lúc nạp trong `LocalKeymapStore`. Phần còn lại là vá smali nhỏ (tắt phụ kiện, bỏ nhân lại, đồng bộ ô bí danh) và UI Java mới (`mdm.ParamsSheet`, `mdm.ParamsMenu`, `mdm.RcPanel`).

**Tech Stack:** apktool tree `build/` (smali), Java 8 helpers trong `java/src/mdm` → `java/build.sh` → smali, Android minSdk 28.

**Spec:** `docs/superpowers/specs/2026-11-11-rc-params-simplify-design.md`

## Global Constraints

- Ô scope (ordinal `pubg/c$g`): 0 x0 (Tâm trắng), 1 x1, 2 x2, 3 x3, 4 x4, 5 x6, 6 x8; bí danh 7←5, 8←6, 9←1, 10←1.
- Tư thế (`pubg/c$b`): 0 Đứng, 1 Ngồi, 2 Nằm.
- Mặc định Đứng: x0 10 · x1 20 · x2 22 · x3 66 · x4 100 · x6 66 · x8 100; Ngồi = Đứng × 0.8, Nằm = Đứng × 0.6, `Math.round`.
- Giá trị hợp lệ 0..999; `recoilValue` luôn đúng 1 cặp `[0.0, n]` (số là `Double`).
- Dấu định dạng: `content["mdm_format"] = 2` (Double 2.0 sau Gson cũng tính là 2).
- Chỉ đổi PUBG (`com.zjx.pubg.rcConfig`); gnyx/GeneralRC giữ nguyên `RcParamsView`.
- Không sửa luồng bắn `pubg/i`, nhận dạng súng/scope/tư thế, gyro.
- Chữ giao diện tiếng Việt có dấu. Smali gốc là CRLF: mọi script vá phải giữ CRLF.
- `java/src/mdm/RcParamsView.java` CŨ hơn smali đang chạy: không biên dịch lại nó.
- Overlay dùng `mdm.TabletScale` (x1.3 khi smallestScreenWidthDp ≥ 600).

## Review Focus

- Cấu hình có `recoil_data` ngắn hơn 67 hoặc đã bị đệm tới 77 súng → mặc định phủ mọi chỉ số có mặt và ít nhất 67 (test ở Task 1).
- Sửa ô bí danh (đang ngắm x6.3 rồi chỉnh ở bảng nhỏ) → ô x6 thật và mọi bí danh của nó đổi theo, sửa tại chỗ (test ở Task 1).
- Khôi phục `.mdmcfg` cũ / cấu hình định dạng cũ → reset khi nạp, bản sao `.v1.bak.json` chỉ ghi lần đầu, không đè (Task 2, kiểm bằng adb).
- Gõ chữ, để trống hoặc số > 999 vào ô nhập của bảng Thông số → bỏ qua / kẹp 0..999, không crash (test kẹp ở Task 1, UI ở Task 5).
- Mở "Thông số" từ menu nổi khi chưa chọn cấu hình RC → toast "Chưa chọn cấu hình ghìm tâm", không crash (Task 5).

---

### Task 1: `mdm.RcStore` — định dạng mdm_v2 (Java thuần, có test)

**Files:**
- Create: `java/src/mdm/RcStore.java`
- Test: `java/test/RcStoreTest.java`

**Interfaces:**
- Produces (tất cả `public static`, không import Android):
  - `int[] SLOTS = {0,1,2,3,4,5,6}`, `String[] SLOT_LABELS = {"x0","x1","x2","x3","x4","x6","x8"}`, `String[] STANCES = {"Đứng","Ngồi","Nằm"}`
  - `int realSlot(int scope)` (7→5, 8→6, 9→1, 10→1, còn lại giữ nguyên)
  - `boolean isV2(Map content)`
  - `void makeDefault(Map content)` — thay `recoil_data` (giữ khoá khác), đặt `mdm_format`=2.0
  - `double get(Map content, int weapon, int stance, int slot)` (0 nếu thiếu)
  - `boolean set(Map content, int weapon, int stance, int slot, double value)` — kẹp 0..999, ghi ô thật + mọi bí danh, tại chỗ
  - `void syncAliases(List v, Map edited)` — từ bản ghi vừa sửa, chép số sang ô thật/bí danh cùng tư thế trong danh sách `v` của súng đó, tại chỗ
  - `int[] availableSlots(int weapon)` (theo bảng nhóm súng trong spec; súng ẩn trả mảng rỗng)
  - `boolean visible(int weapon)`; `String weaponName(int)`; `String weaponGroup(int)` (tên nhóm: "Súng trường","DMR","Sniper","LMG","SMG","Shotgun","Khác")

- [ ] **Step 1: Write the failing test** — `RcStoreTest.main` (không JUnit, như `RcPadTest`; mỗi kiểm tra `check(cond, msg)`, cuối in `ALL OK` hoặc thoát mã 1). Dựng content giả đúng hình thật: 77 súng × 13 bản ghi scope 0..12 (gesture/grip/muzzle/stock 0, `recoilValue [[0.0,45.0]]`), 13 `coefficients` có `crouch 0.8`, khoá `sensitivity`.
  - `defaultsShape`: sau `makeDefault`, mỗi súng 0..76 có đúng 33 bản ghi, mọi `grip/muzzle/stock==0`, 13 map hệ số mọi giá trị 1.0, `sensitivity` còn nguyên, `isV2==true`.
  - `defaultsValues`: `get(c,23,0,s)` cho slot 0..6 == {10,20,22,66,100,66,100}; `get(c,23,1,·)` == {8,16,18,53,80,53,80}; `get(c,23,2,·)` == {6,12,13,40,60,40,60}.
  - `aliasesAtDefault`: bản ghi scope 7 tư thế 2 của súng 23 có số 40 (= ô 5), scope 9 tư thế 0 = 20.
  - `shortContent`: content chỉ có 10 súng → sau `makeDefault` có ≥ 67 súng.
  - `setWritesAliases`: `set(c,23,1,5,77)` → ô 5 và 7 tư thế 1 = 77; ô 5 tư thế 0 vẫn 66; súng 24 không đổi.
  - `setClamps`: `set(c,23,0,0,5000)` → 999; `set(...,-3)` → 0.
  - `syncFromAlias`: lấy map bản ghi scope 8 tư thế 0 của súng 23, đặt cặp thành 91, gọi `syncAliases(v, map)` → ô 6 tư thế 0 = 91, và **cùng một đối tượng list** `recoilValue` của ô 6 trước/sau (sửa tại chỗ).
  - `oldFormatNotV2`: content gốc chưa `makeDefault` → `isV2==false`.

- [ ] **Step 2: Run test to verify it fails**

Run: `mkdir -p "$TEMP/rct" && javac --release 8 -encoding UTF-8 -d "$TEMP/rct" java/src/mdm/RcStore.java java/test/RcStoreTest.java && java -cp "$TEMP/rct" RcStoreTest`
Expected: lỗi biên dịch (RcStore chưa có).

- [ ] **Step 3: Implement `mdm/RcStore.java`** theo Interfaces. Ghi chú: số súng của `makeDefault` = `max(67, recoil_data.size())`; mỗi súng `v` có 11 scope × 3 tư thế (scope 0..10, số lấy ô thật qua `realSlot`); `coefficients` 13 map với 13 khoá như file thật (`laserGrip, halfGrip, compensatorMuzzle, suppressorMuzzle, flashHidderMuzzle, crouch, lightGrip, thumbGrip, generalStock, verticalGrip, horizontalGrip, prone, stand`) = 1.0. Bảng `availableSlots`/nhóm lấy đúng bảng "Súng gắn được scope nào" của spec, tra theo tên trong `RcParams.WEAPONS` (chép mảng tên vào RcStore để test chạy độc lập).

- [ ] **Step 4: Run test to verify it passes** — lệnh Step 2. Expected: `ALL OK`.

- [ ] **Step 5: Commit**

```bash
git add java/src/mdm/RcStore.java java/test/RcStoreTest.java
git commit -m "feat(rc): RcStore mdm_v2 format (3 stances x 7 scopes) with JVM test"
```

### Task 2: Reset cấu hình cũ khi nạp

**Files:**
- Modify: `java/src/mdm/LocalKeymapStore.java` (`getKeymap`, quanh dòng 373–446)
- Modify: `build/smali_classes3/mdm/LocalKeymapStore*.smali`, `build/smali_classes3/mdm/RcStore.smali` (sinh từ `java/build.sh`)

**Interfaces:**
- Consumes: `RcStore.isV2`, `RcStore.makeDefault`.
- Produces: mọi content bundle `com.zjx.pubg.rcConfig` mà app nhận đều là mdm_v2; file `content/<id>.json` và mirror `RCConfig/<id>` được ghi lại.

- [ ] **Step 1:** Trong `getKeymap`, sau khi đọc content của id thuộc bundle `com.zjx.pubg.rcConfig`: nếu `!RcStore.isV2(content)` → nếu `content/<id>.v1.bak.json` chưa tồn tại thì ghi bản gốc vào đó; `RcStore.makeDefault(content)`; `writeFile(contentFile(id), GSON.toJson(content))`; `mirrorRc(bundleId, id, content)`; rồi trả content như cũ.
- [ ] **Step 2:** Build helper: `java/build.sh src/mdm/RcPad.java src/mdm/RcStore.java src/mdm/LocalKeymapStore.java` (+ các file mà LocalKeymapStore cần như `java/build.sh` báo), xoá `build/smali_classes3/mdm/LocalKeymapStore*.smali` cũ rồi chép `java/smali_out/mdm/{LocalKeymapStore*,RcStore*}.smali` vào. Expected: build.sh in `ok`.
- [ ] **Step 3:** Commit `feat(rc): reset old-format PUBG RC configs to mdm_v2 on load (with .v1.bak backup)`.

(Kiểm trên máy ở Task 6.)

### Task 3: Vá engine — tắt phụ kiện, bỏ nhân lại theo độ nhạy, đồng bộ bí danh

**Files:**
- Modify: `build/smali/com/zjx/jyandroid/Extensions/pubg/f.smali` (method `u()Z`)
- Modify: `build/smali/com/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView.smali` (`onDetachedFromWindow`, ~dòng 1277)
- Modify: `build/smali/com/zjx/jyandroid/Extensions/pubg/g$b.smali` (method `e(Ljava/util/ArrayList;)V`)
- Modify: `build/res/layout/pubg_extension_settings_view.xml` (cell `enableAccessoryRecognitionCell`, layout `accessoryRecognitionSettingsLinearLayout`)
- Create: `scripts/recog/patch_rc_simplify.py` (thực hiện 3 vá smali, giữ CRLF, assert số chỗ khớp = 1)

**Interfaces:**
- Consumes: `RcStore.syncAliases(Ljava/util/List;Ljava/util/Map;)V`.

- [ ] **Step 1:** `f.u()Z` (getter "Nhận dạng phụ kiện", dùng bởi Cài đặt và bộ nhận dạng) → thân thay bằng `const/4 v0, 0x0` / `return v0` (giữ `.locals`).
- [ ] **Step 2:** `onDetachedFromWindow`: trong vòng `:goto_0` qua các thanh độ nhạy, ngay sau dòng `invoke-interface {v9, v12, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;` (ghi độ nhạy mới) chèn `goto` tới nhãn tăng biến đếm của vòng (nhãn đứng trước `add-int/lit8 v12, v12, 0x1` dẫn về `:goto_0`) → độ nhạy vẫn lưu, bỏ đoạn nhân `recoilValue`. Kiểm: ngoài vòng, đoạn ghi file/flush sau vòng vẫn chạy.
- [ ] **Step 3:** `g$b.e(ArrayList)`: trước `return-void`, chèn `iget-object` field `c:Ljava/util/ArrayList;` và `d:Ljava/util/Map;` của `p0` rồi `invoke-static {..}, Lmdm/RcStore;->syncAliases(Ljava/util/List;Ljava/util/Map;)V` (tăng `.locals` nếu cần 2 thanh ghi trống).
- [ ] **Step 4:** Layout: thêm `android:visibility="gone"` cho `enableAccessoryRecognitionCell` và `accessoryRecognitionSettingsLinearLayout`. Chạy lại `python scripts/mdm_ui/mdm_tablet.py build`.
- [ ] **Step 5:** `python scripts/recog/patch_rc_simplify.py build` rồi `git diff --stat -- build/smali` — Expected: mỗi file smali chỉ vài dòng (nếu cả file → hỏng CRLF, sửa lại).
- [ ] **Step 6:** Commit `feat(rc): disable accessory recognition, stop sensitivity rescale, sync alias scopes`.

### Task 4: Bảng nhỏ "Điều chỉnh giá trị" — 1 số, tiêu đề rõ ô

**Files:**
- Create: `java/src/mdm/RcPanel.java`
- Modify: `build/res/layout/pubg_adjust_rc_value_base_view.xml` (3 nút `dynamicRCButton`, `coefficientButton`, `deleteButton` → `android:visibility="gone"`)
- Modify: `build/smali/com/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c.smali` (`run()`), qua `scripts/recog/patch_rc_simplify.py`

**Interfaces:**
- Produces: `public static void bind(View panel, Object node)` — `panel` là `AdjustRCValueFloatingPanelView`, `node` là `pubg/g$f` hiện tại (có thể null → không làm gì).

- [ ] **Step 1:** `RcPanel.bind`: đọc bằng reflection các field `short` của `g$f`: `l` = súng, `g` = tư thế, `h` = scope; đặt chữ cho TextView id `textView22` (tìm bằng `panel.getResources().getIdentifier("textView22","id",pkg)`) = `RcStore.weaponName(l) + " · " + RcStore.STANCES[g] + " · " + RcStore.SLOT_LABELS[RcStore.realSlot(h)]` (ô thật luôn 0..6 nên dùng thẳng làm chỉ số; `h` ngoài 0..10 → bỏ qua); ép 3 nút trên về `GONE` (code gốc bật lại nút "Động" trong `run()`). Lỗi reflection → bỏ qua, không ném.
- [ ] **Step 2:** Trong `$c.run()`, ngay sau `invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->c()Lcom/zjx/jyandroid/Extensions/pubg/g$f;` + `move-result-object`, chèn gọi `Lmdm/RcPanel;->bind(Landroid/view/View;Ljava/lang/Object;)V` với `this$0` (field `d`) và node vừa lấy (dùng thanh ghi rảnh, giữ CRLF).
- [ ] **Step 3:** Build helper `java/build.sh src/mdm/RcStore.java src/mdm/RcPanel.java`, chép `RcPanel*.smali`. Commit `feat(rc): single-value adjust panel titled weapon · stance · scope`.

### Task 5: Bảng "Thông số" mới + mục menu nổi

**Files:**
- Create: `java/src/mdm/ParamsSheet.java`, `java/src/mdm/ParamsMenu.java`
- Modify: `build/smali/com/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c.smali` (chỗ `new mdm/RcParamsView … open()` do `patch_rcparams.py` tạo → `ParamsSheet`)
- Modify: `build/smali/com/zjx/jyandroid/Extensions/pubg/d.smali` (`onFloatingPanelDisplay`, trước `return-void` cuối của nhánh thêm "Cài đặt AI")
- Modify: `scripts/recog/patch_rcparams.py` (nhánh pubg trỏ `ParamsSheet`, để chạy lại sau reset build vẫn đúng)

**Interfaces:**
- Consumes: `RcStore.*`, `LocalKeymapStore` (cùng package: `loadIndex`, `bundle`, `contentFile`), `TabletScale.density/sp`.
- Produces:
  - `new ParamsSheet(View anchor, String id, String title, String bundleId, KeymapManager km).open()` — chữ ký giống `RcParamsView` để thay thẳng.
  - `ParamsSheet.openSelected(Context ctx, KeymapManager km, Object ext)` — mở cấu hình đang chọn của `com.zjx.pubg.rcConfig`; không có → toast "Chưa chọn cấu hình ghìm tâm".
  - `ParamsMenu.install(Object rootPanel, Object ext)` — thêm mục "Thông số" (icon + chữ như mục "Cài đặt AI") bằng reflection `rootPanel.a(View,int)`; click → `openSelected(ctx, ext.D(), ext)`.

- [ ] **Step 1:** `ParamsSheet` = cửa sổ overlay riêng (`WindowManager.addView`, type `0x7f6`, focusable để gõ số, nền mờ chạm ngoài để đóng), bố cục theo khung ASCII của spec: cột trái danh sách súng `RcStore.visible` gom theo `weaponGroup` + ô tìm; cột phải tên súng, nút chọn Đứng/Ngồi/Nằm, các dòng `availableSlots` với `[-] số [+]` (bước 1) và chạm số để gõ (kẹp 0..999, rỗng/không phải số → giữ số cũ). Màu/khung theo MDM (`mdm_overlay_card`, vàng `#E8D3A4`). Nạp content qua `km` như `RcParamsView` (r → callback), `RcStore.isV2` sai → `makeDefault` trước khi hiện.
- [ ] **Step 2:** Lưu: `KeymapManager.L(content, id, …)` như `RcParamsView`; thành công → toast "Đã lưu thông số"; nếu `id` là cấu hình RC đang chọn và `ext != null` → gọi `ext.b0(L + id)` (field tĩnh `pubg/d.L`, đọc bằng reflection) để engine nạp lại ngay.
- [ ] **Step 3:** `ParamsMenu.install` + chèn `invoke-static {p1, p0}, Lmdm/ParamsMenu;->install(Ljava/lang/Object;Ljava/lang/Object;)V` vào `d.onFloatingPanelDisplay` sau khi mục "Cài đặt AI" đã gắn listener `d$k`. Nếu thanh menu không đủ rộng cho mục mới (bề rộng tính trong `l/b.m()` từ `getChildCount()`), dời lời gọi bề rộng sau khi extension thêm mục, hoặc trong `install` cộng thêm bề rộng một mục vào `WindowManager.LayoutParams` của panel.
- [ ] **Step 4:** Đổi listener pubg `RCDataManageView$k$b$c` sang `ParamsSheet` (cùng tham số); sửa `patch_rcparams.py` tương ứng.
- [ ] **Step 5:** Build helpers (`java/build.sh` với RcStore, ParamsSheet, ParamsMenu, TabletScale, LocalKeymapStore + phụ thuộc), chép smali; commit `feat(rc): new Thông số sheet + floating-menu entry`.

### Task 6: Build, cài, kiểm trên máy, tài liệu

**Files:**
- Modify: `README.md` (mục mới "Thông số ghìm tâm gọn (m38)" thay mục m28), memory.

- [ ] **Step 1:** `bash scripts/build.sh MDM_m38` → Expected `SIGNED OK`.
- [ ] **Step 2:** Cài `adb -s 192.168.50.72:5555 install -r out/MDM_m38-release.apk`, mở app, mở cấu hình RC một lần (vào màn quản lý cấu hình hoặc vào game).
- [ ] **Step 3:** Đọc lại qua `su -c cat …/mdm_keymaps/content/<id>.json` (id cấu hình RC đang chọn, xem `index.json`): `mdm_format`=2, súng 23 có 33 bản ghi, Đứng x4 = 100, Ngồi x4 = 80, Nằm x4 = 60, hệ số = 1.0; có file `<id>.v1.bak.json`. Kiểm `logcat -b crash` rỗng.
- [ ] **Step 4:** Nhờ người dùng (không tap bằng adb): mở menu nổi → "Thông số", sửa M416 Ngồi x6 = 50, Lưu; đổi độ nhạy x4 trong Cài đặt AI rồi đóng. Đọc lại file: ô scope 5 & 7 tư thế 1 của súng 23 = 50; số x4 không đổi.
- [ ] **Step 5:** Người dùng thử trong trận: đứng/ngồi/nằm × vài scope, bảng nhỏ hiện "Súng · Tư thế · Scope", chỉnh và lưu được.
- [ ] **Step 6:** Cập nhật README + memory; commit `m38: simplified recoil parameters` và push.
