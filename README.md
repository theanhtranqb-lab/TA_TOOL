# TA Tool

Bản chính thức hiện tại: [TA Tool v1.6.3.4 — Mặc định Hatch khi khởi động](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.6.3.4).

[Tải Setup 1.6.3.4](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.4/TA_Tool_Setup_1.6.3.4.zip). Đóng AutoCAD, giải nén toàn bộ rồi chạy TA_Tool_Setup.exe. Máy từ 1.6.3 trở lên có thể dùng TAUPDATE trên `online-manifest-v2.json`; máy 1.6.2 trở xuống chạy Setup một lần. Feed cũ giữ nguyên.

Bản này đặt `HPLAYER = "."` (Use current) và `HPCOLOR = BYLAYER` khi TA được nạp cho bản vẽ. Giữ dữ liệu DWG, layer/màu hiện hành và các lựa chọn hatch người dùng thay đổi sau khởi động khi chuyển tab. Hai VLX được build lại và đóng gói cùng DLL/Setup 1.6.3.4.

R2LS/preset và C2M/CADTOMAX được giữ nguyên. [Ứng dụng CAD → Max (.mzp) 1.6.3.2](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.2/TA_CadToMax_Max_1.6.3.2.mzp) tiếp tục dùng như trước.

Đã kiểm Core Console và GUI AutoCAD 2025 với đúng file phát hành, tự nạp/hai DWG/đổi tab, dữ liệu bản vẽ và 39 kiểm tra bộ cài. Runtime CAD 2022–2024/2026, LISPSYS=1/2, nhiều DPI và vòng updater online đầy đủ: **NOT VERIFIED**. Các VLX được build bằng Visual LISP cổ điển; runtime đã kiểm dùng LISPSYS=0.

Chi tiết: [release notes](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.4/RELEASE_NOTES_1.6.3.4.md), [báo cáo xác minh](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.3.4/verification.json).

Bản [1.6.3.3](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.6.3.3) vẫn tải được để quay lại; đóng CAD trước khi cài lại hoặc phục hồi backup bundle.
