# TA Tool — 1.6.1

Cải thiện hiệu năng kiểm tra bản quyền, chuyển sang key ký số TA161 và bảo vệ thư viện CAD.

[Bộ cài 1.6.1](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.1/TA_Tool_Setup_1.6.1.zip) · [Gói cập nhật 1.6.1](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.6.1/TA_Tool_Update_1.6.1.zip)

Từ 1.6.1 cần key mới TA161; toàn bộ key cũ bị từ chối. Mở TA_INFO / NHAPKEY để nhập key. Hai DWG thư viện được bảo vệ; dùng TV/IB và cần Internet lần đầu mở với key mới.

Hỗ trợ AutoCAD 2022–2026. Đóng AutoCAD trước khi cài:

```powershell
Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/theanhtranqb-lab/TA_TOOL/main/Install-TA.ps1' -OutFile "$env:TEMP\Install-TA.ps1"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "$env:TEMP\Install-TA.ps1" -AutoCADYear 2025
```