# TA Tool — Phiên bản 1.5.1.58

Cập nhật và cải thiện độ ổn định TA Tool.

[Tải bộ cài](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1.58/TA_Tool_Setup_1.5.1.58.zip) · [Gói cập nhật](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1.58/TA_Tool_Update_1.5.1.58.zip)

Cài đặt bằng PowerShell (đóng AutoCAD trước khi chạy):

```powershell
Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/theanhtranqb-lab/TA_TOOL/main/Install-TA.ps1' -OutFile "$env:TEMP\Install-TA.ps1"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "$env:TEMP\Install-TA.ps1" -AutoCADYear 2025
```

Hỗ trợ AutoCAD 2022–2026. Đổi năm trong lệnh cho phù hợp.
