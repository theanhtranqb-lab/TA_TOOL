# TA_TOOL

CÔNG CỤ CAD — TA Tool.

Phiên bản chính thức hiện tại: [v1.5.1.05 — MLeader ghi vật liệu](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.5.1.05).

Các lệnh ghi vật liệu mới dùng tỷ lệ Dim hiện hành, có preview và pick liên tục như GHICHITIET:

| Lệnh | Lệnh tắt | Block | Thuộc tính |
| --- | --- | --- | --- |
| ghivatlieusan | gvls | .SPEC_CAP_Floor | SP là tiền tố; NO tăng 01, 02… |
| ghivatlieutran | gvlt | .SPEC_CAP_Celling | SP là tiền tố; NO tăng 01, 02… |
| ghivatlieu_finish | gvlf | .SPEC_CAP_FINISH | SP-VL tăng A-01, A-02… |
| ghivatlieu_wall | gvlw | .SPEC_CAP_WALL | SP-VL tăng A-01, A-02… |

Sàn mặc định SP=SP; trần mặc định SP=AP. Với finish/wall, nhập tiền tố A hoặc A- đều tạo A-01. Số chạy 01…09, 10, 11…100. **Tab** đổi bốn phía, **S** mở hộp thoại tiền tố, **Enter/Space** kết thúc. Mỗi pick chèn một MLeader rồi chờ pick tiếp. Bộ đếm riêng từng nhóm lưu trong DWG; lệnh tắt và lệnh dài dùng chung bộ đếm, tự tiếp tục sau mã lớn nhất đã có. Layer .A.083.Kihieu_Chitiet; style lần lượt NEO_Floor, NEO_Celling, NEO_Finish, NEO_Wall.

`TA_Auto_dim` tự nhận lưới trục ZXY dạng rời, block và block lồng nhau. Quét chọn cả vật thể, trục và DIM đã có; preview ALL hiện ngay. Dùng phím mũi tên để bật/tắt hướng, Space/Enter tạo DIM và Esc hủy. Hàng DIM chi tiết mới nằm phía trong hàng trục hiện có; giữ DIM trục/tổng đã có, không sửa DIM nguồn. DIM mới dùng layer `.A.060.Dimension`. Chạy lại ALL giữ hàng DIM và không tạo thêm DIM trùng.

`GHICHITIET` tạo ghi chú MLEADER bằng style `NEO_Callout`, block `.SPEC_Neo_Detail` với thuộc tính `NO.` / `Num`. Tỉ lệ lấy từ Dim hiện hành; đoạn nghiêng 45° và đoạn ngang đều dài 6 mm trên giấy. Ở 1:100, mỗi đoạn dài 600, block phóng 100 lần. `VX` và các lệnh `V1`, `V2`, …, `V500` tự tạo/dùng lại style theo tỉ lệ vừa đặt; ghi chú cũ giữ tỉ lệ riêng.

Vào `GHICHITIET` là có preview theo con trỏ; mỗi pick đặt đầu mũi tên rồi tiếp tục chờ pick tiếp. **Tab** đổi bốn phía, **Enter/Space** kết thúc và giữ các ký hiệu đã chèn; **S** mở hộp thoại tiền tố. `NO.` mặc định **CT-01**, tăng thành CT-02, CT-03… sau mỗi lần đặt; `Num` mặc định **`-`**. Tiền tố/số kế tiếp lưu riêng trong DWG và tiếp tục theo mã đã có. Kết thúc preview không chèn thêm ký hiệu và không tăng số. Ghi chú dùng layer **`.A.083.Kihieu_Chitiet`**, giữ layer hiện hành.

`TUDONG_GHI_TRICHCHITIET` đọc Excel: cột A là `NO.`, cột B là `Num`, rồi cập nhật `Num` cho MLeader có mã tương ứng. Giữ số 0 đầu theo định dạng Excel; kiểm tra mã trùng mâu thuẫn trước khi sửa. Cần Microsoft Excel cài trên máy.

Cả gói Setup và Update đều mang theo `TA_tool_V1.dwg` có block `.SPEC_Neo_Detail` và bốn block vật liệu. Block còn thiếu tự nạp từ thư viện, kèm các block lồng phụ thuộc. Khi cài/cập nhật, DWG được đặt cạnh DLL.

`CHANGE_OBJ2SCALE` (lệnh tắt `C2S`) xử lý nhiều đối tượng rời, block và block lồng: chuẩn hóa TEXT/MTEXT/ATT, DIM, Hatch đã định nghĩa trong thư viện TA và ghi chú LEADER/MLEADER. Đặt dim/text hiện hành bằng VX hoặc lệnh Vxx, chạy C2S, chọn đối tượng, Enter. Khi Hatch trùng nhiều mẫu, chọn mẫu chuẩn; Enter bỏ qua nhóm, Esc hủy lượt xử lý.

Giữ hình học và các bản chèn block không chọn. **Block động được chọn có nội dung cần chuẩn hóa sẽ thành block tĩnh riêng theo hình đang hiển thị.** Lệnh báo bỏ qua Xref, layer khóa và các trường hợp không thể xác định/áp dụng chuẩn.

Bản này tiếp tục giữ AutoDim cho block trục ZXY, DIM chi tiết phía trong hàng DIM hiện có, thư viện cấu tạo và các chức năng TA Tool trước đó. Bốn DLL cùng nhãn phát hành 1.5.1.05 (AssemblyVersion 1.5.1.5); 222 tên lệnh tích hợp và 53 tên lệnh kiến trúc khớp giữa hai runtime.

## Cài đặt và cập nhật

- **Cài mới:** [tải bộ cài 1.5.1.05](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1.05/TA_Tool_Setup_1.5.1.05.zip), giải nén, đóng AutoCAD rồi chạy TA_Tool_Setup.exe trong thư mục đã giải nén.
- **Đã cài TA Tool:** chạy `TAUPDATE`, lưu bản vẽ và đóng toàn bộ AutoCAD để cài bản mới; mở lại sau khi cập nhật.
- **Offline:** [tải gói cập nhật 1.5.1.05](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1.05/TA_Tool_Update_1.5.1.05.zip).

Hỗ trợ hai nhánh AutoCAD 2025+ (.NET 8) và 2022–2024 (.NET Framework 4.8). Bản 1.5.1.05 đạt 499 kiểm tra nền trên đúng DLL tích hợp đóng gói: 115 vật liệu, 311 MLeader/Excel/VX, 34 C2S và 39 trường hợp AutoDim ZXY/DIM rời/block lồng. Bộ cài chọn đúng nhánh cho 2022–2026. Nguồn AutoDim giữ nguyên bản .04; thư viện CAD và các tài nguyên cập nhật khác giữ nguyên SHA-256. Preview/phím/hộp thoại trong AutoCAD có giao diện, host 2022–2024 và giao diện bộ cài cần kiểm trực tiếp; đợt này chạy test nền trên database riêng, kiểm tra phím dùng đầu vào mô phỏng.

[Ghi chú phát hành](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1.05/RELEASE_NOTES_1.5.1.05.md) · [Báo cáo xác minh](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1.05/verification.json) · [SHA-256](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1.05/SHA256SUMS_1.5.1.05.txt) · [Tài liệu, schema và mẫu TC2](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.4.3.87/TA_Construction_Docs_1.4.3.87.zip).

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
