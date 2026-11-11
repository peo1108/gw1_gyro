# Thông số ghìm tâm gọn lại — thiết kế

Ngày: 2026-11-11 · Bản build dự kiến: m38

## Vấn đề

Lưu thông số hay lỗi và quá nhiều thứ phải chỉnh. Đọc cấu hình thật trên máy (`mdm_keymaps/content/<id>.json`,
bundle `com.zjx.pubg.rcConfig`) và bộ nạp `pubg/g.j()` cho thấy:

- Mỗi súng chỉ có 1 bản ghi / scope (đứng, không phụ kiện). Tư thế và phụ kiện là **hệ số nhân** trong
  `coefficients[scope]` (crouch 0.8, prone 0.6, 10 hệ số phụ kiện).
- Bảng "Thông số" (`mdm.RcParamsView` / `RcParams`) có 2 lỗi:
  1. **Lệch scope 1 nấc**: hiện nhãn "x1" cho ô `scope=0`, nhưng ô 0 là Tâm trắng (`c$g` ordinal: 0 hippie,
     1 X1, 2 X2, 3 X3, 4 X4, 5 X6, 6 X8, 7 X63, 8 X84, 9 tactic, 10 tactic_84; ô 11–12 thừa, không dùng).
  2. **Ngồi/nằm không lưu**: tìm bản ghi `gesture=1/2` không tồn tại → không ghi được gì.
- Cùng một lực bị sửa ở 4 nơi: bảng Thông số, bảng nhỏ "Điều chỉnh giá trị" (+ trang "Động" sửa đường cong,
  trang "Hệ số" sửa 13 hệ số), và thanh độ nhạy scope trong Cài đặt AI — khi đóng Cài đặt, thanh này **nhân lại
  mọi giá trị** của mọi súng theo tỉ lệ độ nhạy mới.

## Mục tiêu (người dùng đã chốt)

- Mỗi súng: **3 tư thế (Đứng / Ngồi / Nằm) × 7 scope (x0 = Tâm trắng, x1, x2, x3, x4, x6, x8)**, mỗi ô **một
  con số phẳng**. Súng không gắn được scope nào thì không hiện dòng đó.
- Bỏ nhận dạng phụ kiện, mọi thông số phụ kiện, trang "Hệ số", trang "Động".
- x6.3 → dùng số x6; x8.4 → dùng số x8; tactic / tactic 8.4 → dùng số x1.
- Bảng nhỏ trong trận: chỉ 1 số cho đúng ô đang bắn, ghi rõ "AUG · Đứng · x2", thanh trượt + Lưu.
- Độ nhạy scope trong Cài đặt AI giữ nguyên (đặt bằng nhạy game), nhưng **không còn tự nhân lại** bảng số.
- **Mục mới "Thông số" trên thanh menu nổi**: mở bảng xem/sửa thông số từng súng của cấu hình đang chọn.
- Cấu hình cũ: **reset về mặc định mới**.
- Mặc định cho mọi súng:

  |      | x0 | x1 | x2 | x3 | x4  | x6 | x8  |
  |------|----|----|----|----|-----|----|-----|
  | Đứng | 10 | 20 | 22 | 66 | 100 | 66 | 100 |
  | Ngồi | 8  | 16 | 18 | 53 | 80  | 53 | 80  |
  | Nằm  | 6  | 12 | 13 | 40 | 60  | 40 | 60  |

  (Ngồi = Đứng × 0.8, Nằm = Đứng × 0.6, làm tròn.)

## Cách làm: giữ engine, đổi dữ liệu + giao diện

`pubg/g.j()` dựng cây tra cứu cho mọi tổ hợp (súng, scope 0..10, tư thế, grip, muzzle, stock). Với mỗi tổ hợp nó
tìm bản ghi **khớp đủ 5 trường**; có thì dùng đúng `recoilValue` đó (`g$b`), không có thì lấy bản ghi đứng/không
phụ kiện nhân hệ số (`g$c`). Vậy chỉ cần ghi đủ bản ghi theo tư thế là engine tự dùng — **không vá luồng bắn**.

### Định dạng dữ liệu "mdm_v2"

`content["mdm_format"] = 2`. Với mỗi súng trong `recoil_data`:

- `v` = 11 scope × 3 tư thế = 33 bản ghi `{gesture, scope, grip:0, muzzle:0, stock:0, recoilValue:[[0, n]]}`.
  - Ô thật: 0 x0, 1 x1, 2 x2, 3 x3, 4 x4, 5 x6, 6 x8.
  - Ô bí danh luôn = bản sao: 7 ← 5 (x6.3=x6), 8 ← 6 (x8.4=x8), 9 ← 1, 10 ← 1 (tactic=x1).
- `coefficients` = 13 map, mọi hệ số = 1.0 (để nhánh dự phòng `g$c` không làm lệch).
- Giữ nguyên các khoá khác của file (`sensitivity`, `global_sensitivity_type`, `recoil_value_coefficient`…).

Một lớp Java mới **`mdm.RcStore`** là nơi duy nhất đọc/ghi định dạng này:
`isV2(content)`, `makeDefault(content)` (ghi đè `recoil_data` theo bảng mặc định, giữ khoá khác),
`get(content, weapon, stance, scopeSlot)`, `set(...)` (ghi ô thật + mọi ô bí danh của nó),
`syncAliases(content)`, `availableScopes(weapon)`.

### Chuyển đổi / reset

Khi nạp cấu hình RC (đường `LocalKeymapStore.getKeymap` cho bundle `com.zjx.pubg.rcConfig`) mà `!isV2` →
`makeDefault`, lưu lại, rồi mới trả cho app. Áp dụng cả cho cấu hình tạo mới và file khôi phục `.mdmcfg` cũ
(chúng đi qua cùng đường nạp). Bản mirror `pubg_extension/RCConfig/<id>` được ghi lại như hiện nay.

### Bỏ phụ kiện

- Ép tắt nhận dạng phụ kiện (pref của công tắc "Nhận Dạng Phụ Kiện") khi khởi động và ẩn công tắc trong
  Cài đặt AI → bộ nhận diện luôn báo phụ kiện = None → luôn khớp bản ghi chính xác.
- Ẩn luôn ô "Kích thước vùng phụ kiện" nếu còn hiện.

### Độ nhạy

Bỏ bước nhân lại `recoilValue` trong `PUBGExtensionSettingsView.onDetachedFromWindow` (đoạn đã ghi chú ở m25).
Các thanh độ nhạy vẫn lưu như cũ.

### Giao diện

**Bảng "Thông số" mới — `mdm.ParamsSheet`** (thay `RcParamsView`; file Java của `RcParamsView` đã cũ hơn smali
nên viết lớp mới thay vì sửa):

```
┌ Thông số · <tên cấu hình> ─────────────────────── Lưu  (x) ┐
│ [Tìm súng…]          │  M416                               │
│ Súng trường          │  [ Đứng | Ngồi | Nằm ]              │
│   M416  ◀            │  x0 (Tâm trắng)  [-]  10  [+]       │
│   AKM                │  x1              [-]  20  [+]       │
│   ...                │  x2  …  x8 (chỉ scope súng gắn được)│
│ SMG / Sniper / LMG…  │                                     │
└──────────────────────┴─────────────────────────────────────┘
```

- Bấm ô số để gõ trực tiếp; −/+ bước 1. Lưu ghi qua `KeymapManager.L` như hiện nay.
- Mở từ 2 nơi: nút "Thông số" trên mỗi dòng cấu hình (thay chỗ gọi `RcParamsView.open`) và **mục "Thông số"
  mới trên thanh menu nổi** (mở cấu hình RC đang chọn).
- Mục menu: thêm trong `pubg/d.onFloatingPanelDisplay(RootFloatingPanelView)` theo đúng cách nút "Cài đặt AI"
  (`RootFloatingPanelView.a(view, index)`), gọi helper `mdm.ParamsMenu.install(panel)`. Bảng mở trong một cửa
  sổ overlay riêng (TYPE 0x7f6, như các panel khác) vì thanh menu quá nhỏ để chứa nó.
- Trên tablet dùng `mdm.TabletScale` như các overlay khác.

**Bảng nhỏ "Điều chỉnh giá trị"**: ẩn (GONE, giữ id) cả ba nút "Động", "Hệ số", "Xoá" — không còn đường cong
hay hệ số để sửa/xoá; tiêu đề =
"<súng> · <tư thế> · <scope>"; thanh trượt sửa đúng ô hiện tại; khi Lưu gọi `RcStore.syncAliases` để ô bí danh
(x6.3…) và ô thật luôn bằng nhau.

### Súng gắn được scope nào (cần bạn soát)

Dựa trên PUBG Mobile; bảng nằm trong `RcStore.availableScopes`, sửa một chỗ là đổi:

| Nhóm | Súng | Scope hiện |
|------|------|------------|
| Súng trường | M416, AKM, Scar, M16, Groza, AUG, QBZ, M762, MK47, G36C, FAMAS, ACE32, ABAKAN, AKS, ARX, VCVAL, HB, ASM | x0 x1 x2 x3 x4 x6 |
| DMR | MK14, SKS, SLR, QBU, Mini14, MK12, VSS, M417, MK20H, M1 | x0 x1 x2 x3 x4 x6 x8 |
| Sniper | AWM, M24, Mosin, Kar98K, AMR, M200, M338, AS50, SVD | x0 x1 x2 x3 x4 x6 x8 |
| LMG | M249, DP28, MG3, PKM, MG36, MG97 | x0 x1 x2 x3 x4 x6 |
| SMG | Vector, MP5K, Bison, UZI, P90, Thomson, UMP45, JS9, MP7 | x0 x1 x2 x3 x4 |
| Shotgun | S12K, M1014, DBS, S1897, S686, AA12G, SPAS12 | x0 x1 |
| Khác | Win94 | x0 |
| Ẩn | Empty, CrossBow, Bow, TacticsBow, FireCompositeBow, SHIELD, MORTAR | — |

Ô của scope bị ẩn vẫn được ghi theo mặc định (engine vẫn có số nếu nhận dạng lỡ báo scope đó).

## Không làm

- Không đổi nhận dạng súng / scope / tư thế, không đổi luồng ghìm (`pubg/i`), không đụng gyro.
- Không chuyển đổi số cũ (người dùng chọn reset).
- gnyx / GeneralRC giữ nguyên.

## Rủi ro

- Thanh menu nổi tính bề rộng từ số mục lúc hiện (`l/b`); nếu mục thêm sau bị thiếu chỗ phải chỉnh bề rộng.
- Bảng nhỏ ghi thẳng vào map của nút `g$b`; cần xác nhận khi Lưu nó đi qua `KeymapManager.L` (để chèn
  `syncAliases`).
- Reset làm mất số cũ của người dùng → trước khi reset, `LocalKeymapStore` lưu bản sao
  `content/<id>.v1.bak.json`.

## Kiểm tra

- Test JVM cho `RcStore` (như `RcPadTest`): tạo mặc định từ file thật lấy trên máy → đủ 33 bản ghi/súng, đúng
  bảng mặc định, bí danh khớp, hệ số = 1.0; `set` cho Ngồi x6 đổi đúng ô 5 và 7 tư thế 1, không đụng ô khác.
- Build m38, cài tablet, đọc lại file cấu hình qua adb sau khi sửa ở bảng lớn và bảng nhỏ.
- Người dùng thử trong trận: đứng/ngồi/nằm × vài scope, đổi độ nhạy thấy số không nhảy.
