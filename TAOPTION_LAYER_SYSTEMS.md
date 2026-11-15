# TAOPTION — Hệ layer (TA Tool 1.6.2)

Đối chiếu source ngày 15/11/2026. Mở `TAOPTION` → **Layer**, hoặc `TALAYER`.

- **Hệ layer / Tên hệ layer**: chọn và đổi tên hệ đang sửa. **Thêm hệ** tạo một hệ rỗng, giữ các hệ đã có.
- **Xóa hết layer**: sau xác nhận, xóa danh sách của hệ đang chọn. Không xóa layer hay đối tượng trong DWG. Có thể lưu hệ rỗng để ngừng tự tạo layer.
- **Lấy từ bản vẽ**: đọc layer của bản vẽ hiện tại vào một hệ mới.
- **Lấy từ file DWG…**: đọc file nguồn qua database riêng, không mở thành bản vẽ làm việc và không lưu nguồn. Bỏ layer phụ thuộc Xref. Giữ tên, màu ACI/RGB, tên linetype, lineweight, mô tả và thuộc tính in; không sao chép trạng thái tắt/đóng băng/khóa. Lệnh tắt để trống; chỉ điền khi cần.
- **Đặt làm hệ chính**: đánh dấu hệ dùng cho cơ chế tự tạo layer và lệnh tắt. Chưa ghi cấu hình cho đến khi bấm **Lưu và đóng**.
- **Lưu hệ JSON… / Nạp JSON…**: lưu từng hệ thành file JSON riêng để trao đổi/nạp lại. Nạp luôn thêm một hệ mới; tên trùng được thêm hậu tố, không ghi đè hệ cũ. Chấp nhận file `TA_Layers.json` phiên bản trước. Thao tác xuất JSON ghi ngay file đã chọn.
- **Tạo/Cập nhật trong bản vẽ**: áp dụng ngay hệ đang xem vào bản vẽ hiện tại, độc lập với lựa chọn hệ chính. Không xóa layer khác. Linetype tùy chỉnh cần có sẵn trong bản vẽ đích; JSON giữ tên linetype, không chứa định nghĩa kiểu nét.
- **Lưu và đóng**: ghi toàn bộ hệ và lựa chọn chính vào `%APPDATA%/TA_ToolV1/Data/TA_Layers.json`, áp dụng hệ chính vào bản vẽ, nạp lại lệnh tắt và đóng TAOPTION. Danh sách `Layers` cấp gốc luôn phản ánh hệ chính để tương thích các thành phần hiện có. File cũ được chuyển sang định dạng nhiều hệ khi lưu; file trước đó nằm ở `.bak`.
- **Hủy**: bỏ thay đổi cấu hình chưa lưu. Các thao tác xuất JSON hoặc Tạo/Cập nhật đã thực hiện trước đó vẫn có hiệu lực.

Từ bản 1.6.2, Setup/Update chỉ đóng gói thư viện `TA_tool_V2.dwg`; loại `TA_tool_V1.dwg` khỏi danh sách bắt buộc và cả quá trình quét asset. Không xóa thư viện V1 gốc trong dự án.
