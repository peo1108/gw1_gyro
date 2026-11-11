# MDM (gg1 + gyro)

Bản mod của gg1 (`com.zx.yxt` v1.8.41) cho khách: thêm gyro ghìm tâm qua module Zygisk `sensor_cal`,
giao diện MDM (đen + vàng champagne), nhận diện súng/phụ kiện cập nhật từ gg2.
Bản mới nhất: **m38**, file `release/MDM_release_m38.apk` (thông số ghìm tâm gọn: 3 tư thế × 7 scope, quy đổi theo độ nhạy).

## Cấu trúc

| Thư mục | Nội dung |
|---|---|
| `build/` | **Mã nguồn chính**: cây apktool (smali + res + assets) của bản m27. Sửa ở đây rồi build lại |
| `source/` | APK gốc: `gg1.apk` (bản nền), `gg2.apk` (bản tham khảo, nguồn gốc gyro và nhận diện) |
| `java/` | Mã Java của các lớp tự viết (`src/mdm/*`, `src/k/{h,i,l}`), stub để biên dịch, test |
| `scripts/` | `build.sh`, `sign_debug.sh`, và script vá theo từng đợt (`port_gyro/`, `mdm_ui/`, `recog/`) |
| `tools/` | `apktool.jar` 2.10.0 |
| `keys/` | Khoá ký **release** (`mdm-release.jks` + mật khẩu) và khoá debug để test |
| `module/` | Module `sensor_cal` v1.5 (mã nguồn + `sensor_cal_v1.5.zip` để flash) |
| `release/` | APK đã ký release để gửi khách |
| `brand/` | Logo gốc (`IMG_8567.PNG`) và bản thiết kế giao diện |

> **Giữ kỹ `keys/`.** Mất `mdm-release.jks` thì khách không cập nhật đè được nữa (phải gỡ app, mất dữ liệu).
> Không gửi thư mục này cho ai.

## Build

Cần: Java (JDK 17+), Android SDK build-tools 36.0.0 và platform android-36, chạy trong Git Bash.

```bash
scripts/build.sh MDM_m26          # -> out/MDM_m26-release.apk (đã ký release)
```

Build thử cho máy test đang cài bản ký debug: `scripts/sign_debug.sh out/MDM_m26.apk`.

## Sửa code

- **Smali**: sửa thẳng trong `build/smali*/`. Tên lớp gg1 hầu như không bị làm rối
  (`MainService`, `App.getContext()`…), phần PUBG nằm ở `com/zjx/jyandroid/Extensions/pubg/`.
- **Lớp mới bằng Java**: viết trong `java/src/`, chạy `java/build.sh src/mdm/TenLop.java`, rồi chép
  `java/smali_out/...smali` vào `build/smali_classes3/` (lớp `mdm.*`) hoặc đúng chỗ của lớp bị thay.
  Lớp gọi vào code gg1 thì cần stub trong `java/stub/` (khai báo đúng tên thành viên trong smali).
- **Chuỗi/ID mới**: thêm vào `res/values*/strings.xml` và `res/values/public.xml` với id cố định
  (string tiếp theo sau `0x7f1103ad`, id view tiếp theo sau `0x7f090429`); trong smali dùng số id trực tiếp.

## Code tự thêm (tóm tắt)

| Ở đâu | Làm gì |
|---|---|
| `K6/*`, `F6/*`, `D6/*`, `com/zjx/gw2lic/*`, … | Gyro chép từ gg2 (372 lớp). Chỉ dùng chế độ Module |
| `pubg/i$d` → `K6/m.rcOut` | Ghìm tâm dọc qua gyro, luôn bật |
| `K6/GyroUI`, `K6/GyroInvL`, `K6/GyroSensL` | Ô Đảo chiều + Độ nhạy gyro trong cài đặt PUBG (lưu ở prefs `gw2_gyro`) |
| `mdm/*` (smali_classes3) | Giao diện MDM: thanh điều hướng, trạng thái gyro, thẻ cài module, ủng hộ… |
| `k/h`, `k/i`, `k/l` | Nhận diện tay cầm / nòng / báng theo gg2 (Ergonomic, Hãm, Kéo dài, Duckbill, Báng nặng) |
| `mdm/ForceRedDot`, `RecogCompat`, `PostureColor` | Ép Red Dot, nhận súng không giữ súng cũ, nhận ngồi bản quốc tế |
| `mdm/RcPad` | Sửa lỗi cấu hình thiếu súng dùng chung một bản ghi ghìm tâm |
| `mdm/RcStore`, `mdm/ParamsSheet`, `mdm/ParamsMenu`, `mdm/RcPanel`, `mdm/RcEngine` | Thông số ghìm tâm PUBG mdm_v2 (m38, xem mục bên dưới). `mdm/RcParams` + `RcParamsView` là bảng cũ (m28), không còn nút nào trỏ tới: nút "Thông số" của PUBG mở `ParamsSheet`, GeneralRC/gnyx vẫn là luồng Chia sẻ gốc |
| `y/d.a()` | Chỉ kích hoạt bằng Root: luôn trả `ADBConnectionMode.ROOT` (ô chọn chế độ đã ẩn; trước m26 máy cài mới mặc định USB) |
| `mdm/RootGate` ← `MainActivity.onResume` | Không có root thì không vào được app: phủ màn hình tới khi `su` trả uid 0, lỗi thì hiện "Cần quyền Root" (Thử lại / Thoát), quay lại app thì tự kiểm tra lại |
| enum `pubg/c$l,d,c,h` | Thêm ABAKAN, M338, MP7, AS50, MG97 và phụ kiện mới |

## Thông số ghìm tâm gọn (m38, định dạng mdm_v2)

Mỗi súng PUBG chỉ còn **3 tư thế (Đứng/Ngồi/Nằm) × 7 scope (x0 Tâm trắng, x1, x2, x3, x4, x6, x8)**, mỗi ô
một con số phẳng. Spec: `docs/superpowers/specs/2026-11-11-rc-params-simplify-design.md`.

- Engine `pubg/g.j()` dùng bản ghi khớp đủ (súng, scope, tư thế, grip, muzzle, stock) nếu có, nên chỉ
  cần đổi dữ liệu: `mdm.RcStore` (Java thuần, test `bash java/test/run_rcstore_test.sh`) ghi 33 bản ghi/súng
  (scope 0..10 × 3 tư thế, phụ kiện = 0), hệ số = 1.0, dấu `content["mdm_format"] = 2`.
- Ô scope = ordinal `pubg/c$g`: 0 x0, 1 x1, 2 x2, 3 x3, 4 x4, 5 x6, 6 x8; bí danh luôn = bản sao:
  7 (x6.3) ← 5, 8 (x8.4) ← 6, 9/10 (tactic) ← 1.
- Mặc định: Đứng 10/20/22/66/100/66/100, Ngồi ×0.7, Nằm ×0.4 (`RcStore.STANCE_FACTOR`).
- **File `Documents/pubg_extension/RCConfig/<id>` là bản sống** (engine, bảng nhỏ trong trận và Cài đặt AI ghi
  thẳng vào nó). `LocalKeymapStore.ensureV2` đọc nó trước; cấu hình cũ (kể cả `.mdmcfg` cũ khôi phục) bị reset
  về mặc định một lần, bản gốc giữ ở `mdm_keymaps/content/<id>.v1.bak.json`. `updateKeymap` ghi cả hai bản.
- Vá engine: `scripts/recog/patch_rc_simplify.py build --panel --menu` (giữ CRLF, chạy lại không sao):
  `f.u()` (nhận dạng phụ kiện) luôn false; Cài đặt AI không còn nhân lại số khi đổi độ nhạy; `g$b.e` gọi
  `RcStore.syncAliases`; bảng nhỏ gọi `mdm.RcPanel.bind` (tiêu đề "Súng · Tư thế · Scope", ẩn Động/Hệ số/Xoá,
  cửa sổ 200×70dp); menu nổi có mục **"Thông số"** (`mdm.ParamsMenu`). Sửa ô bí danh trong trận còn đánh dấu
  các nút engine của ô cùng nhóm (`mdm.RcEngine.markAliasesDirty`) để engine đang chạy dùng số mới ngay.
  Layout của bảng nhỏ (`pubg_adjust_rc_value_*`) sửa thẳng trong `build/res/layout/`.
- Giá trị mỗi ô 0..300 (`RcStore.MAX_VALUE`, bằng giới hạn thanh trượt trong trận).
- Thanh "hệ số ghìm %" (`dataPercentageCell`) đã ẩn và không còn nhân lại cả bảng khi đóng Cài đặt AI (trước đó
  kéo lên 300% làm mọi số ×3). Số trong bảng chỉ đổi khi người dùng sửa.
- 7 thanh độ nhạy (Tâm trắng…8X) = độ nhạy game mà bảng được chỉnh theo; engine không đọc chúng lúc bắn.
  Đóng Cài đặt chỉ lưu chúng. Nút **"Quy đổi bảng theo độ nhạy mới"** (`mdm.SensConvert`, đặt ngay dưới thanh 8X
  trong `pubg_extension_settings_view.xml`) mới tính lại: mỗi ô của scope đổi nhạy × cũ÷mới
  (`RcStore.rescaleForSensitivity`, có test), lưu bằng `g.e()` rồi nạp lại engine.
- Sao lưu `.mdmcfg` có thêm `pubgrc/` (= `pubg_extension/RCConfig`); khôi phục bản cũ không có `pubgrc/` thì xoá
  file RCConfig của các id được khôi phục để bản khôi phục được dùng; `.v1.bak.json` đã có thì không bị ghi đè.
- Bảng "Thông số" (`mdm.ParamsSheet`, cửa sổ overlay riêng): danh sách súng theo nhóm + tìm, tab tư thế,
  dòng scope theo súng (`RcStore.availableSlots`). Lưu → `KeymapManager.L` → nếu là cấu hình đang dùng thì
  `pubg/d.b0(L + id)` nạp lại ngay. Mở từ menu nổi hoặc nút "Thông số" trên dòng cấu hình
  (`python scripts/recog/patch_rcparams.py build --only pubg`).
- `java/src/mdm/RcParamsView.java` cũ hơn smali và không còn dùng cho PUBG.

## Script build phụ (chạy được cả trong WSL)

`scripts/build.sh` và `keys/sign_release.sh` giả định chạy trong Git Bash (`$HOME` là `/c/Users/...`).
Trong WSL dùng:

```bash
scripts/jbuild.sh src/mdm/RcParams.java src/mdm/RcParamsView.java   # java -> smali_out/
scripts/abuild.sh MDM_m28                                           # build/ -> out/MDM_m28.apk
scripts/asign.sh out/MDM_m28.apk                                    # -> out/MDM_m28-release.apk
```

Vá lại nút "Thông số" của PUBG (chạy lại sau khi reset `build/`): `python scripts/recog/patch_rcparams.py build --only pubg`
(không có `--only` thì GeneralRC/gnyx cũng bị trỏ sang `RcParamsView` cũ).

## Giao diện điện thoại (m32)

Trang chính và trang "Thêm" trước đây dựng cho khung 1280x800: hai cột cố định, lề 32dip, cột phụ
400dip. Trên điện thoại cột danh sách còn ~100dip và thanh điều hướng nổi đè lên nội dung.

`scripts/mdm_ui/mdm_phone.py <build>` chuyển hai trang thành **một cột cuộn dọc** (giữ nguyên mọi
id/tag mà `MainPageView` / `SettingsPageView` tìm lúc chạy): thông tin máy + nút hành động lên trước,
danh sách game nằm dưới. Mọi kích thước đi qua `res/values*/mdm_screen.xml`:

| Qualifier | Dùng cho | Khác biệt chính |
|---|---|---|
| `values/` | điện thoại dọc | lề 20dip, cột phụ `fill_parent`, logo 92dip, tiêu đề 22sp |
| `values-sw600dp-v13/` | máy tính bảng | giữ nguyên bản 1280x800 (lề 32dip, logo 132dip, tiêu đề 28sp) |
| `values-land/` | xoay ngang | chỉ siết khoảng đáy cho thanh điều hướng |

Thanh điều hướng (`mdm.CamNavBar`) lấy cao/đáy từ `@dimen/mdm_nav_height` / `mdm_nav_margin`, tab
rộng tối thiểu 88dip (trước 104dip) nên vừa màn 360dip.

Script cũng sửa luôn text từng bị double-encode (`Trang chá»§` → `Trang chủ`) bằng cách đảo đúng
một vòng UTF-8 → cp1252 → UTF-8; text đã đúng không bị đụng tới.

> **Đừng sửa `res/values*/strings.xml` bằng `Set-Content -Encoding UTF8` của PowerShell 5.1.**
> Nó đọc file bằng cp1252 rồi ghi lại UTF-8, làm toàn bộ tiếng Việt thành "Chá»‰ Ä‘Æ°á»ng".
> Dùng `Edit`/Python. Nếu đã lỡ: `python scripts/recog/fix_mojibake_strings.py build`.

## Menu nổi trên tablet (m36)

Menu nổi trong game (panel PUBG nhanh, chọn/sửa keymap, "Cài đặt AI" và các tab cùng cửa sổ) vẽ
bằng dip cỡ điện thoại nên trên tablet trông bé. **Điện thoại không đổi gì**: `res/layout/` giữ nguyên,
bản to nằm ở `res/layout-sw600dp-v13/` (Android chỉ dùng khi cạnh ngắn ≥ 600dp).

```bash
python scripts/mdm_ui/mdm_tablet.py build          # sinh lại 70 layout x1.3
python scripts/mdm_ui/mdm_tablet.py build --list   # chỉ in danh sách
```

- Script nhân mọi `dip`/`sp` (cả `@dimen/` đã giải ra giá trị) với `SCALE = 1.3`, thêm `textSize`
  cho chữ đang dùng mặc định 14sp. Id/tag/class giữ nguyên, script tự kiểm tra.
- **Sửa layout overlay ở `res/layout/` thì chạy lại script**: file sinh ra có dòng đánh dấu, bị xoá và
  tạo lại mỗi lần chạy. Đừng sửa tay trong `layout-sw600dp-v13/`.
- Không phóng to: lớp phím keymap trên màn game (`components_holder_view`, phải khớp nút game),
  bóng nổi, thanh icon gốc, tâm ngắm, và mọi màn Activity.
- Cửa sổ cài đặt (`smali/t/a.smali`) trên tablet rộng 82% màn (trước 60%, điện thoại vẫn 70%).
- Bảng ghìm tâm x1…x8 dựng bằng code: smali `RcParamsView` gọi `mdm.TabletScale.density()` / `sp()`
  (cùng ngưỡng 600dp). **`java/src/mdm/RcParamsView.java` cũ hơn smali đang chạy** (thiếu 6 lớp
  ẩn danh, APK m35 dùng bản smali) — đừng biên dịch lại từ file Java đó, vá smali.

## Màn ngang 2 cột + làm lại 2 bảng nổi (m37)

- `python scripts/mdm_ui/mdm_land.py build` sinh `res/layout-w720dp-v13/{main_page_view,settings_page_view}.xml`:
  màn rộng ≥ 720dp (tablet ngang/dọc, điện thoại xoay ngang) chia 2 cột, cột trái rộng `@dimen/mdm_side_w`
  (300dip điện thoại, 380dip tablet). Điện thoại dọc vẫn dùng bản 1 cột trong `res/layout/`. Sửa hai trang này ở
  `res/layout/` rồi chạy lại script.
- Cỡ tablet (`values-sw600dp-v13/mdm_screen.xml`) thu lại: tiêu đề 24sp, logo 96dip, hàng 52dip.
- Bảng "Điều chỉnh giá trị" (`pubg_adjust_rc_value_panel_view` + `_base_view`) và bảng vùng nhận dạng AI
  (`pubg_map_panel_view`) vẽ lại kiểu MDM (thẻ `mdm_overlay_card`, nút pill, D-pad `mdm_dpad_*`, nút đóng
  `mdm_close_sm`), giữ nguyên mọi id. Chữ "展开/折叠" trong `PubgMapPanelView.smali` → "Mở rộng/Thu gọn".
- Cửa sổ "Điều chỉnh giá trị" có cỡ cứng trong code (200×100, trang Hệ số 400×180 dp): `pubg/d.smali` và
  `AdjustRCValueFloatingPanelView$a.smali` gọi `mdm.TabletScale.dpx()` thay `b$i.c()` để cửa sổ to theo
  layout x1.3 trên tablet (m36 bị tràn/cắt vì thiếu chỗ này).
- Sau khi sửa layout overlay luôn chạy lại `mdm_tablet.py` để bản tablet cập nhật.
- Smali gốc dùng CRLF: script vá phải giữ nguyên kiểu xuống dòng, nếu không diff thành cả file.

## Máy khách cần

Root (KernelSU / Magisk / Cam), **Zygisk Next** + **sensor_cal** (app có nút cài cả hai trong Cài đặt,
file nằm sẵn ở `build/assets/mdm_modules/`), khởi động lại sau khi cài, bật gyroscope trong cài đặt PUBG.

## Phân tích lại gg1 / gg2

Thư mục decompile đã xoá cho gọn, cần thì tạo lại:

```bash
java -jar tools/apktool.jar d source/gg2.apk -o decompiled/gg2/apktool
jadx -d decompiled/gg2/jadx source/gg2.apk        # jadx tải tại github.com/skylot/jadx
```

Chuỗi trong gg2 bị mã hoá XOR, giải bằng `scripts/recog/decenum.py` (key `(i*109+90) & 255`).
