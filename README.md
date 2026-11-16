# TA Tool

Bản chính thức hiện tại: [TA Tool v1.6.3](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.6.3).

Tải TA_Tool_Setup_1.6.3.zip, đóng AutoCAD, giải nén toàn bộ rồi chạy TA_Tool_Setup.exe. Khi chuyển từ 1.6.2 phải chạy Setup một lần. Sau đó dùng TAUPDATE trên kênh online-manifest-v2.json.

Gói giữ TA_tool.dll đã gộp, TA_Tool_V1.vlx và TA_Bootstrap.vlx; sáu DLL phụ thuộc System/Wpf.Ui vẫn riêng. Không cần LSP rời. Hiện Trạng tích hợp ở nhánh .NET 8 (2025–2026); nhánh 2022–2024 chưa tích hợp module này.

Đã kiểm AutoCAD 2025, bộ cài, updater và hash gói. Runtime 2022–2024/2026 chưa được chạy kiểm. Xem release notes và verification.json để biết giới hạn, hộp thoại bảo mật và cách rollback. Stable cũ 1.6.2 vẫn tải được để khôi phục.

Feed online-manifest.json giữ 1.6.2 để updater cũ không tải nhầm gói có bố cục mới. Tải Setup 1.6.3 trực tiếp để chuyển sang kênh mới.
