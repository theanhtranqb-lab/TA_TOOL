# TA_TOOL

CÔNG CỤ CAD — TA Tool.

Phiên bản chính thức hiện tại: [v1.5.1.03 — Chèn ghi chú chi tiết liên tục](https://github.com/theanhtranqb-lab/TA_TOOL/releases/tag/v1.5.1.03).

`GHICHITIET` tạo ghi chú MLEADER bằng style `NEO_Callout`, block `.SPEC_Neo_Detail` với thuộc tính `NO.` / `Num`. Tỉ lệ lấy từ Dim hiện hành; đoạn nghiêng 45° và đoạn ngang đều dài 6 mm trên giấy. Ở 1:100, mỗi đoạn dài 600, block phóng 100 lần. `VX` và các lệnh `V1`, `V2`, …, `V500` tự tạo/dùng lại style theo tỉ lệ vừa đặt; ghi chú cũ giữ tỉ lệ riêng.

Vào `GHICHITIET` là có preview theo con trỏ; mỗi pick đặt đầu mũi tên rồi tiếp tục chờ pick tiếp. **Tab** đổi bốn phía, **Enter/Space** kết thúc và giữ các ký hiệu đã chèn; **S** mở hộp thoại tiền tố. `NO.` mặc định **CT-01**, tăng thành CT-02, CT-03… sau mỗi lần đặt; `Num` mặc định **`-`**. Tiền tố/số kế tiếp lưu riêng trong DWG và tiếp tục theo mã đã có. Kết thúc preview không chèn thêm ký hiệu và không tăng số. Ghi chú dùng layer **`.A.083.Kihieu_Chitiet`**, giữ layer hiện hành.

`TUDONG_GHI_TRICHCHITIET` đọc Excel: cột A là `NO.`, cột B là `Num`, rồi cập nhật `Num` cho MLeader có mã tương ứng. Giữ số 0 đầu theo định dạng Excel; kiểm tra mã trùng mâu thuẫn trước khi sửa. Cần Microsoft Excel cài trên máy.

Cả gói Setup và Update đều mang theo `TA_tool_V1.dwg` có block `.SPEC_Neo_Detail`. Block còn thiếu tự nạp từ thư viện, kèm các block lồng phụ thuộc. Khi cài/cập nhật, DWG được đặt cạnh DLL.

`CHANGE_OBJ2SCALE` (lệnh tắt `C2S`) xử lý nhiều đối tượng rời, block và block lồng: chuẩn hóa TEXT/MTEXT/ATT, DIM, Hatch đã định nghĩa trong thư viện TA và ghi chú LEADER/MLEADER. Đặt dim/text hiện hành bằng VX hoặc lệnh Vxx, chạy C2S, chọn đối tượng, Enter. Khi Hatch trùng nhiều mẫu, chọn mẫu chuẩn; Enter bỏ qua nhóm, Esc hủy lượt xử lý.

Giữ hình học và các bản chèn block không chọn. **Block động được chọn có nội dung cần chuẩn hóa sẽ thành block tĩnh riêng theo hình đang hiển thị.** Lệnh báo bỏ qua Xref, layer khóa và các trường hợp không thể xác định/áp dụng chuẩn.

Bản này tiếp tục giữ AutoDim cho block trục ZXY, DIM chi tiết phía trong hàng DIM hiện có, thư viện cấu tạo và các chức năng TA Tool trước đó. Bốn DLL cùng nhãn phát hành 1.5.1.03 (AssemblyVersion 1.5.1.3); 214 tên lệnh tích hợp và 53 tên lệnh kiến trúc khớp giữa hai runtime.

## Cài đặt và cập nhật

- **Cài mới:** [tải bộ cài 1.5.1.03](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1.03/TA_Tool_Setup_1.5.1.03.zip), giải nén, đóng AutoCAD rồi chạy TA_Tool_Setup.exe trong thư mục đã giải nén.
- **Đã cài TA Tool:** chạy `TAUPDATE`, lưu bản vẽ và đóng toàn bộ AutoCAD để cài bản mới; mở lại sau khi cập nhật.
- **Offline:** [tải gói cập nhật 1.5.1.03](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1.03/TA_Tool_Update_1.5.1.03.zip).

Hỗ trợ hai nhánh AutoCAD 2025+ (.NET 8) và 2022–2024 (.NET Framework 4.8). DLL chính 1.5.1.03 đã chạy trong AutoCAD 2025 Core Console: 32 kiểm tra chèn liên tiếp/xử lý sự kiện phím, 77 kiểm tra preview/hình học/đánh số/layer/lưu-mở DWG, 150 kiểm tra MLEADER/Excel, 52 kiểm tra VX/Vxx, 30 kiểm tra C2S và 4 kiểm tra gọi lệnh/Undo/Redo đạt. Đã kiểm tra phiên bản, metadata lệnh và SHA-256 của mọi payload trong cả hai gói, gồm thư viện CAD. Kiểm tra phím dùng sự kiện đầu vào mô phỏng; kéo chuột, hiển thị preview, thao tác phím và hộp thoại tiền tố chưa kiểm trực tiếp trong AutoCAD có giao diện. Host CAD 2022–2024 và giao diện bộ cài chưa kiểm trực tiếp.

[Ghi chú phát hành](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1.03/RELEASE_NOTES_1.5.1.03.md) · [Báo cáo xác minh](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1.03/verification.json) · [SHA-256](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.5.1.03/SHA256SUMS_1.5.1.03.txt) · [Tài liệu, schema và mẫu TC2](https://github.com/theanhtranqb-lab/TA_TOOL/releases/download/v1.4.3.87/TA_Construction_Docs_1.4.3.87.zip).

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
