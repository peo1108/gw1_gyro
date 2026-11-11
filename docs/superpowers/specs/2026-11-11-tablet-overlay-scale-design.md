# Phóng to menu nổi trên tablet — thiết kế

Ngày: 2026-11-11 · Bản build: m36

## Mục tiêu

Trên tablet một số menu nổi trong game nhỏ quá. Phóng to ba nhóm sau, **điện thoại giữ nguyên 100%**:

1. Panel PUBG nhanh — `pubg_panel`, `pubg_map_panel_view`, bảng chỉnh nhanh RC
   (`pubg_adjust_rc_value_panel_view`, `pubg_adjust_dynamic_rc_value_view`, `pubg_adjust_coefficient_view`).
2. Keymap — chọn keymap (`select_keymap_container_view` + dòng), thanh sửa keymap
   (`keymap_upload_floating_panel`), các bảng cài đặt nút + macro.
3. Cài đặt AI — `pubg_extension_settings_view` và cửa sổ cài đặt chứa nó (`user_settings_view`),
   bảng thông số ghìm tâm x1…x8 (`mdm.RcParamsView`).

Không đụng: lớp phím keymap đặt trên màn game (`components_holder_view` — vị trí/cỡ phải khớp nút game),
quả bóng nổi, thanh icon gốc của bóng nổi, tâm ngắm.

## Định nghĩa "tablet"

Cạnh ngắn ≥ 600dp (qualifier `sw600dp`, giống m32 dùng cho trang chính). `RcParamsView` dùng cùng ngưỡng
(`Configuration.smallestScreenWidthDp >= 600`) để nhất quán với layout.

## Cách làm

**Layout (không sửa smali):** script `scripts/mdm_ui/mdm_tablet.py <build>` sinh bản sao
`res/layout-sw600dp-v13/<tên>.xml` của từng layout trong danh sách, nhân mọi giá trị `dip`/`dp`/`sp`
với `SCALE = 1.3`:

- giá trị literal (`40.0dip` → `52.0dip`);
- `@dimen/x` được giải ra giá trị thật (ưu tiên `values-sw600dp-v13`, rồi `values`) và ghi literal đã nhân;
- widget chữ không khai `textSize` nhận `14sp × SCALE` (hoặc textSize của style nếu có) để chữ to theo khung.

Danh sách = các layout gốc ở trên + bao đóng: `<include>`, layout mà class custom view trong layout đó
inflate (kể cả inner class), và mọi layout overlay dùng một widget đã phóng to (`FilledSliderWithButtons`,
`TextWithSliderView`, `TextWithSwitchView`, `TextViewComponent`) để các tab cùng cửa sổ không lệch cỡ.
Loại trừ cứng: `components_holder_view` và mọi layout của Activity (trang chính, Thêm, màn phụ).

Giữ nguyên id, tag, class, thứ tự view. Script kiểm tra id/class của bản sao khớp bản gốc.

**Cửa sổ cài đặt:** `t/a.a()` đặt chiều rộng = 0.6 × màn khi `b$c.k()` (tablet ≥ 7") và 0.7 trên điện thoại.
Đổi 0.6 → 0.82 (chỉ nhánh tablet). Chiều cao 0.8 giữ nguyên (nội dung đã có ScrollView).

**RcParamsView:** `dp` và các `setTextSize` nhân `SCALE` khi tablet.

## Giới hạn

Kích thước đặt trong smali qua `b$i.c(dp)` không đổi theo. Chưa có tablet cắm adb → kiểm tra dừng ở
build + ký + soát APK; nhìn thực tế cần người dùng cài thử.

## Kiểm tra

- Script: id/class bản sao == bản gốc; không còn `@dimen` dp/sp chưa giải trong bản sao.
- `scripts/build.sh MDM_m36` + ký release thành công.
- `aapt2 dump resources`/giải nén: layout gốc không đổi, `layout-sw600dp-v13` có đủ file trong danh sách.
