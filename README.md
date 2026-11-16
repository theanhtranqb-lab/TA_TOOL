# TA Tool

Bản chính thức hiện tại: [TA Tool v1.6.3.2](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.6.3.2).

[Tải Setup 1.6.3.2](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.2/TA_Tool_Setup_1.6.3.2.zip). Đóng AutoCAD, giải nén toàn bộ rồi chạy TA_Tool_Setup.exe. C2M/CADTOMAX đã được gộp trong TA_tool.dll, dùng BSC xuất polyline thành mbNN.dwg, giữ đối tượng gốc/tọa độ. Đổi thư mục tại TAOPTION → CAD → 3ds Max.

[Tải ứng dụng Max (.mzp)](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.2/TA_CadToMax_Max_1.6.3.2.mzp): kéo vào viewport Max, chọn Cài đặt / Cập nhật. Có bảng file, kiểm tra trùng, tiến trình và xóa DWG đã nhập theo xác nhận/hash. Thêm action CAD → Max trong category TA Tool vào toolbar hoặc phím tắt để mở lại.

Máy từ 1.6.3 trở lên cập nhật qua TAUPDATE trên online-manifest-v2.json; máy 1.6.2 trở xuống chạy Setup một lần. Feed online-manifest.json cũ giữ nguyên.

Đã kiểm đúng DLL đóng gói trong AutoCAD 2025 Core Console/GUI, 331 tên lệnh, 58 kiểm tra C2M/TAOPTION, 39 kiểm tra bộ cài; Max 2024.2.1 có 15 kiểm tra chức năng, 9 kiểm tra cửa sổ và kiểm tra installer/archive MZP. Runtime CAD 2022–2024/2026, Max khác 2024, nhiều DPI và vòng cập nhật online thật của bản này chưa được xác nhận.

Thư viện DWG mã hóa, VLX và bố cục DLL giữ như 1.6.3.1. Hiện Trạng nằm trong nhánh .NET 8. Bản [1.6.3.1](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.6.3.1) vẫn tải được để quay lại. Xem release notes và verification.json để biết phạm vi kiểm chứng.