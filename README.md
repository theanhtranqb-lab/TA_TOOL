# TA Tool

Bản chính thức hiện tại: [TA Tool v1.6.3.1](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.6.3.1).

[Tải Setup 1.6.3.1](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.1/TA_Tool_Setup_1.6.3.1.zip), đóng AutoCAD, giải nén toàn bộ rồi chạy TA_Tool_Setup.exe. Bản này cập nhật thư viện CAD lưu ngày 16/11/2026; DLL và Setup đồng bộ 1.6.3.1. Máy đang dùng 1.6.3 có thể dùng TAUPDATE trên kênh online-manifest-v2.json. Khi chuyển từ 1.6.2 trở xuống phải chạy Setup một lần.

Giữ DLL gộp TA_tool.dll, TA_Tool_V1.vlx, TA_Bootstrap.vlx và sáu DLL System/Wpf.Ui. Hiện Trạng có ở nhánh .NET 8 (2025–2026); nhánh 2022–2024 chưa tích hợp module này.

Đã kiểm AutoCAD 2025 Core Console/GUI, 39 kiểm tra bộ cài, policy và hash gói. Runtime 2022–2024/2026 chưa chạy kiểm; thao tác TV/IB và vòng cập nhật online thật 1.6.3.1 chưa được xác nhận trong đợt này. Metadata cũ còn hai tham chiếu block thiếu như bản 1.6.3. Xem release notes và verification.json để biết phạm vi kiểm chứng.

Feed online-manifest.json giữ 1.6.2 cho updater cũ. Bản [1.6.3](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.6.3) vẫn tải được để khôi phục.