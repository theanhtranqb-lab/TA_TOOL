# TA Tool

Bản chính thức hiện tại: [TA Tool v1.6.3.3 — R2LS hai cột và preset](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.6.3.3).

[Tải Setup 1.6.3.3](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.3/TA_Tool_Setup_1.6.3.3.zip). Đóng AutoCAD, giải nén toàn bộ rồi chạy TA_Tool_Setup.exe. Máy từ 1.6.3 trở lên có thể dùng TAUPDATE trên `online-manifest-v2.json`; máy 1.6.2 trở xuống chạy Setup một lần. Feed cũ giữ nguyên.

**R2LS** giữ giao diện hiện tại, chia cột **35% / 65%**, ẩn/hiện cả cụm Block/Xref và giữ giá trị khi chuyển. Lưu toàn bộ cấu hình theo tên preset; chọn preset nạp ngay các giá trị và hiển thị đúng kiểu chèn. Preset còn sau khi đóng/mở lại AutoCAD. Bấm **Lưu** để áp dụng và đóng TAOPTION; **Lưu preset** chỉ ghi preset.

C2M/CADTOMAX tiếp tục nằm trong DLL chung. [Ứng dụng CAD → Max (.mzp) 1.6.3.2](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.2/TA_CadToMax_Max_1.6.3.2.mzp) giữ nguyên; kéo vào viewport Max để cài/cập nhật. Xem [hướng dẫn CAD → Max](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.6.3.2).

Đã build net8/net48/Setup, đối chiếu snapshot bản quyền và danh sách lệnh; kiểm đúng DLL phát hành trong Core Console/GUI AutoCAD 2025, preset qua hai phiên, R2LS trong TAOPTION và 39 kiểm tra bộ cài. Các payload ngoài hai DLL giữ SHA-256 của 1.6.3.2.

Runtime CAD 2022–2024/2026, nhiều DPI, chuột/phím thủ công và vòng updater online thật của bản này: **NOT VERIFIED**. Chi tiết: [release notes](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.3/RELEASE_NOTES_1.6.3.3.md), [báo cáo xác minh](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.3/verification.json).

Bản [1.6.3.2](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.6.3.2) vẫn tải được để quay lại; đóng CAD trước khi cài lại hoặc phục hồi backup bundle.
