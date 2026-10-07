# TA_TOOL

CÔNG CỤ CAD — TA Tool.

Phiên bản chính thức hiện tại: [v1.5.1 — Chuẩn hóa đối tượng theo dim/text hiện hành bằng C2S](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.5.1).

`CHANGE_OBJ2SCALE` (lệnh tắt `C2S`) xử lý nhiều đối tượng rời, block và block lồng: chuẩn hóa TEXT/MTEXT/ATT, DIM, Hatch đã định nghĩa trong thư viện TA và ghi chú LEADER/MLEADER. Đặt dim/text hiện hành bằng VX hoặc lệnh Vxx, chạy C2S, chọn đối tượng, Enter. Khi Hatch trùng nhiều mẫu, chọn mẫu chuẩn; Enter bỏ qua nhóm, Esc hủy lượt xử lý.

Giữ hình học và các bản chèn block không chọn. **Block động được chọn có nội dung cần chuẩn hóa sẽ thành block tĩnh riêng theo hình đang hiển thị.** Lệnh báo bỏ qua Xref, layer khóa và các trường hợp không thể xác định/áp dụng chuẩn.

Bản này tiếp tục giữ AutoDim cho block trục ZXY, DIM chi tiết phía trong hàng DIM hiện có, thư viện cấu tạo và các chức năng TA Tool trước đó. Bốn DLL cùng phiên bản 1.5.1; 212 tên lệnh tích hợp và 53 tên lệnh kiến trúc khớp giữa hai runtime.

## Cài đặt và cập nhật

- **Cài mới:** [tải bộ cài 1.5.1](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1/TA_Tool_Setup_1.5.1.zip), giải nén, đóng AutoCAD rồi chạy TA_Tool_Setup.exe trong thư mục đã giải nén.
- **Đã cài TA Tool:** chạy `TAUPDATE`, lưu bản vẽ và đóng toàn bộ AutoCAD để cài bản mới; mở lại sau khi cập nhật.
- **Offline:** [tải gói cập nhật 1.5.1](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1/TA_Tool_Update_1.5.1.zip).

Hỗ trợ hai nhánh AutoCAD 2025+ (.NET 8) và 2022–2024 (.NET Framework 4.8). DLL chính 1.5.1 đã chạy trong AutoCAD 2025 Core Console: 30 kiểm tra C2S và 4 kiểm tra gọi lệnh/Undo/Redo đạt. Đã kiểm tra phiên bản, metadata lệnh và SHA-256 của mọi payload trong cả hai gói. Host CAD 2022–2024 và giao diện bộ cài chưa kiểm trực tiếp.

[Ghi chú phát hành](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1/RELEASE_NOTES_1.5.1.md) · [Báo cáo xác minh](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1/verification.json) · [SHA-256](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1/SHA256SUMS_1.5.1.txt) · [Tài liệu, schema và mẫu TC2](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.4.3.87/TA_Construction_Docs_1.4.3.87.zip).

## Quản lý lớp cắt vật liệu

Mở `TA_OPTION` → **Cấu tạo**, hoặc chạy `THEM_CAUTAO` / `TA_OPTION_CAUTAO`.

| Lệnh | Chức năng |
|---|---|
| `THEM_CAUTAO` | Thư viện cấu tạo, preview, sửa/nhân bản/lưu trữ, nhập/xuất JSON và cấu hình. |
| `CHENLOP_CAUTAO` | Chọn một/nhiều cấu tạo, sắp thứ tự và chèn Table thủ công. |
| `TUDONG_CHENLOP_CAUTAO` | Quét ký hiệu theo phạm vi, loại mã trùng và chèn các cấu tạo mới. |
| `THONGKE_CAUTAO` | Đếm ký hiệu/bảng, đối chiếu nguồn/revision; xuất CSV hoặc chèn snapshot. |
| `CAPNHAT_CAUTAO` | Cập nhật bảng managed theo UUID/revision, nhận biết sửa tay và giữ handle/vị trí/scale. |

Module tạo bảng thuyết minh các lớp vật liệu, không sinh hình học/hatch mặt cắt hoặc bóc khối lượng. Thư viện nằm ngoài DLL tại `%APPDATA%\TA Tool\Construction\construction-library.json`. Tải gói tài liệu và nhập `samples/construction-library.sample.json` từ tab Cấu hình để thử TC2. Mặc định block/tag `KH_CVL` / `MA_CAUTAO`; dùng **Chọn block mẫu** để chọn tag thực tế, rồi lưu cấu hình.

Hai runtime có 22 kiểm tra domain/repository/layout PASS mỗi runtime; AutoCAD 2025 Core Console có 25 assert module và 12 assert DLL tích hợp/production updater PASS. Giao diện tương tác, plot, dynamic/viewport và host 2022–2024 chưa nghiệm thu đầy đủ; xem release notes/báo cáo trong gói tài liệu.

[Thông tin các bản phát hành](https://github.com/theanhtranqb-lab/TA_TOOL/releases).
