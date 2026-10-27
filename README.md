# 🛸 UFO ơi! Đừng bắt em! — Mini-game Gọi Tên Học Sinh Lên Bảng

Mini-game tương tác 2D HTML5 Canvas dùng trên máy chiếu/màn hình tương tác lớp học để gọi ngẫu nhiên học sinh lên bảng trả bài một cách công bằng, hồi hộp và vui nhộn.

## ✨ Tính năng nổi bật
- **Hiệu ứng UFO săn đuổi & Tia hút hoàn chỉnh**: UFO lượn đánh lạc hướng qua nhiều bạn trên sân, khóa mục tiêu công bằng (`window.crypto.getRandomValues`), bật tia kéo rực rỡ hút học sinh bay thẳng lên khoang tàu, thu nhỏ dần (`scale` về `0`), rơi lại 1 chiếc giày kỷ niệm dưới sân và lấp ló bên trong vòm kính UFO.
- **6 bối cảnh Sân Trường Việt Nam đặc sắc** (Đổi trực tiếp trên thanh công cụ):
  1. 🌸 **Sân Trường Hoa Phượng** (Trường 2 tầng vàng nghệ, mái ngói đỏ, cây Phượng Vĩ, cây Bàng, trống trường, cờ Tổ quốc).
  2. 🎈 **Ngày Hội Khai Giảng** (Cổng bóng bay, thảm đỏ lễ đài, khinh khí cầu).
  3. 🏀 **Trường Hiện Đại & Sân Thể Thao** (Đường chạy điền kinh, sân bóng/bóng rổ, cây Bằng Lăng tím).
  4. 🌼 **Sân Trường Mùa Xuân (Tết)** (Hoa Đào, Hoa Mai, câu đối đỏ, chậu cúc mâm xôi).
  5. 🏮 **Đêm Hội Trăng Rằm (Trung Thu)** (Trăng rằm, bầu trời sao, dây đèn lồng phát sáng, đom đóm).
  6. ⛰️ **Điểm Trường Vùng Cao (Tây Bắc)** (Núi rừng Tây Bắc, ruộng bậc thang lúa chín, hàng rào gỗ, hoa Ban).
- **Quản lý danh sách lớp thông minh**: Tự động lưu danh sách học sinh, lịch sử gọi tên và chế độ *"Không gọi lại bạn đã lên bảng"* vào `localStorage`.
- **Tài khoản thầy cô (Supabase, tùy chọn)**: Đăng ký nhanh bằng email + mật khẩu để lưu nhiều lớp lên mây, mở lại trên mọi máy; lịch sử gọi tên của lớp đang mở được tự động đồng bộ.
- **Âm thanh UFO & Bàn điều khiển mở rộng**: Tích hợp sẵn âm thanh UFO bay lượn, tia hút và chuông công bố kết quả; hỗ trợ tải thêm file âm thanh học sinh tùy chỉnh (`.mp3/.wav/.ogg`) bất kỳ lúc nào.
- **Phím tắt tiện lợi**: Nhấn `SPACE` để bắt đầu hút hoặc sang lượt kế tiếp; nhấn `ESC` để đóng hộp thoại.

---

## 🚀 Hướng dẫn đưa lên Repo & Deploy nhanh

Dự án đã được đóng gói dạng **Zero-Build Static Web App** (chạy ngay từ `index.html`, kèm sẵn cấu hình `vercel.json`, `netlify.toml`, `.nojekyll`).

### 1. Đẩy lên GitHub Repository
Tại thư mục gốc dự án (`D:\Games Building\Game 4`), chạy:
```bash
git remote add origin <URL_REPO_GITHUB_CỦA_BẠN>
git push -u origin main
```

### 2. Deploy tự động (Chọn 1 trong 3 cách)
- **GitHub Pages**: Vào **Settings → Pages** của repo → tại **Build and deployment**, chọn nhánh `main` và thư mục `/ (root)` → bấm **Save**.
- **Vercel**: Vào [vercel.com/new](https://vercel.com/new) → Import repo GitHub này → bấm **Deploy** (đã có sẵn `vercel.json`).
- **Netlify**: Vào [app.netlify.com](https://app.netlify.com) → Import từ GitHub hoặc kéo thả trực tiếp file `ufo-oi-dung-bat-em-deploy.zip` vào [app.netlify.com/drop](https://app.netlify.com/drop).

---

## ☁️ Cấu hình Supabase (Tài khoản thầy cô & Lưu lớp)

> ✅ **Đã cấu hình sẵn** với project Supabase `game-ufo` (ref `ffsfrklbyoadxqzimeaj`, Singapore): bảng `classes` + RLS đã tạo, đã tắt xác nhận email để đăng ký dùng ngay, khóa anon đã điền trong `supabase-config.js`. Các bước dưới đây chỉ cần khi muốn dựng lại trên project khác.

Không cấu hình thì game vẫn chạy bình thường và chỉ lưu trên máy. Muốn thầy cô đăng ký tài khoản để lưu lớp, làm 4 bước (khoảng 5 phút):

1. **Tạo project** miễn phí tại [supabase.com/dashboard](https://supabase.com/dashboard) → **New project**.
2. **Tạo bảng**: vào **SQL Editor → New query**, dán toàn bộ nội dung file [`supabase/schema.sql`](supabase/schema.sql) → **Run**. File này tạo bảng `classes` và bật Row Level Security để mỗi thầy cô chỉ thấy lớp của mình.
3. **Đăng ký nhanh gọn (khuyên dùng)**: vào **Authentication → Sign In / Providers → Email**, giữ **Enable Email provider** bật và **tắt "Confirm email"**. Như vậy thầy cô bấm *Đăng ký nhanh* là vào dùng được ngay, không cần mở hộp thư. (Nếu để bật, thầy cô cần bấm link xác nhận trong email trước khi đăng nhập; khi đó nhớ đặt **Authentication → URL Configuration → Site URL** thành địa chỉ web của game.)
4. **Điền khóa**: vào **Project Settings → API** (hoặc nút **Connect**), copy **Project URL** và **anon public key** (hoặc *Publishable key*) vào file [`supabase-config.js`](supabase-config.js):
   ```js
   window.UFO_SUPABASE_CONFIG = {
     url: 'https://xxxxxxxx.supabase.co',
     anonKey: 'eyJhbGciOi...'
   };
   ```
   Khóa anon/publishable là khóa công khai, commit lên repo là an toàn. **Không bao giờ** dán `service_role`/secret key vào đây.

Xong! Mở **Danh sách lớp** trên thanh công cụ sẽ thấy khung **☁️ Tài khoản thầy cô**:
- **Đăng ký nhanh / Đăng nhập** bằng email + mật khẩu (≥ 6 ký tự).
- Nhập danh sách học sinh, đặt **tên lớp** → **Lưu lớp lên mây**. Chọn **➕ Lớp mới** để thêm lớp khác.
- Chọn lớp trong danh sách để mở lại; game nhớ lớp mở gần nhất và tự đồng bộ lịch sử gọi tên.
