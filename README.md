# TA_TOOL

CÔNG CỤ CAD — TA Tool.

Phiên bản chính thức hiện tại: [v1.4.3.98 — Đồng bộ CAD 2022–2024 và 2025](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.4.3.98).

Đồng bộ AutoDim (`TA_Auto_dim`), `TA_OPTION_AUTODIM` và `TA_GUIYEUCAU` giữa hai nhánh. Sheet Set chọn COM theo CAD đang chạy. Bốn DLL cùng phiên bản; 210 tên lệnh tích hợp và 53 tên lệnh kiến trúc khớp giữa hai runtime.

## Cập nhật

Chạy `TAUPDATE`, lưu bản vẽ và đóng toàn bộ AutoCAD để cài bản mới. Mở lại AutoCAD sau khi cập nhật. Gói hỗ trợ nhánh AutoCAD 2025+ (.NET 8) và 2022–2024 (.NET Framework 4.8); host thực tế đã kiểm cho module mới là AutoCAD 2025 R25.0.116.0.0. Bản 2022–2024 đã build với API CAD 2022 R24.1, đạt kiểm tra JSON/layer/lập DIM trên .NET Framework 4.8; chưa chạy trên host CAD 2022, 2023 hoặc 2024. Kiểm tra metadata xác nhận tên lệnh và lớp đăng ký lệnh đồng bộ, không thay thế nghiệm thu chức năng toàn bộ lệnh.

[Tải gói cập nhật 1.4.3.98](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.4.3.98/TA_Tool_Update_1.4.3.98.zip) · [Tài liệu, schema và mẫu TC2](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.4.3.87/TA_Construction_Docs_1.4.3.87.zip) · [SHA-256](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.4.3.98/SHA256SUMS_1.4.3.98.txt).

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
