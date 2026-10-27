// Cấu hình Supabase cho tính năng "Tài khoản thầy cô & Lưu lớp".
// Lấy 2 giá trị này tại Supabase Dashboard → Project Settings → API (hoặc Connect):
//   - url:     Project URL, dạng https://xxxxxxxx.supabase.co
//   - anonKey: anon public key (hoặc Publishable key dạng sb_publishable_...)
// Khóa này là khóa CÔNG KHAI, đặt ở frontend là an toàn vì dữ liệu được bảo vệ bằng
// Row Level Security (xem supabase/schema.sql). TUYỆT ĐỐI không dán service_role / secret key vào đây.
// Để trống thì game vẫn chạy bình thường, chỉ lưu danh sách trên máy (localStorage).
window.UFO_SUPABASE_CONFIG = {
  url: '',
  anonKey: ''
};
