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
