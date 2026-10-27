# CLAUDE.md

## Quy ước làm việc
- Làm việc, commit và push **trực tiếp lên nhánh `main`**. Không tạo nhánh riêng hay pull request, trừ khi chủ repo yêu cầu.
- Trả lời và viết nội dung hiển thị cho người dùng bằng tiếng Việt.

## Dự án
- Game tĩnh, không cần build: toàn bộ code nằm trong `index.html` (HTML + Tailwind CDN + JS thuần trong một IIFE).
- `ufo_i_ng_b_t_em_mini_game_g_i_t_n_h_c_sinh_l_n_b_ng.html` là bản sao y hệt `index.html`. Sửa `index.html` xong thì chép đè sang file này.
- Chạy thử: `npm start` (serve tại cổng 3000) hoặc mở thẳng `index.html`.

## Supabase (tài khoản thầy cô & lưu lớp)
- Project `game-ufo`, ref `ffsfrklbyoadxqzimeaj`, region ap-southeast-1.
- Schema ở `supabase/schema.sql` (bảng `classes` + RLS). File này chạy lại nhiều lần vẫn an toàn. Thay đổi schema thì cập nhật file này rồi chạy qua Management API bằng biến môi trường `SUPABASE_ACCESS_TOKEN`.
- `supabase-config.js` chỉ chứa URL và anon key (công khai). Không bao giờ commit `service_role` hay secret key.
- Đã tắt xác nhận email (`mailer_autoconfirm`) để thầy cô đăng ký là dùng được ngay.
