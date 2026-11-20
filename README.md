# TA Tool

Bản chính thức hiện tại: [TA Tool v1.6.3.5 — Sửa tỷ lệ ký hiệu Hatch trong TKH](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.6.3.5).

[Tải Setup 1.6.3.5](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.5/TA_Tool_Setup_1.6.3.5.zip). Đóng AutoCAD, giải nén toàn bộ rồi chạy TA_Tool_Setup.exe. Máy từ 1.6.3 trở lên có thể dùng TAUPDATE qua `online-manifest-v2.json`; máy 1.6.2 trở xuống chạy Setup một lần. Feed cũ giữ nguyên.

TKH/TKHSEL giữ đúng scale/spacing của hatch gốc trong bảng ký hiệu; khung mẫu và bảng vẫn theo tỷ lệ DIMTXT hiện hành. Bảng ký hiệu cũ cần tạo lại để áp dụng bản sửa. Hatch gốc, số lượng và diện tích được giữ nguyên.

Mặc định hatch khi khởi động, R2LS/preset và C2M/CADTOMAX tiếp tục giữ nguyên. [Ứng dụng CAD → Max (.mzp) 1.6.3.2](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.2/TA_CadToMax_Max_1.6.3.2.mzp) tiếp tục dùng như trước.

Chi tiết kiểm chứng: [release notes](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.5/RELEASE_NOTES_1.6.3.5.md), [báo cáo xác minh](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.5/verification.json). Runtime CAD 2022–2024/2026, LISPSYS=1/2, nhiều DPI, thao tác chuột/phím thủ công và vòng updater online đầy đủ: **NOT VERIFIED**.

Bản [1.6.3.4](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.6.3.4) vẫn tải được để quay lại; đóng CAD trước khi cài lại hoặc phục hồi backup bundle.
