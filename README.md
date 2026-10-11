# Bài 3: Dockerfile đóng gói trang Web HTML tĩnh

## 1. Mục tiêu
Tạo Docker Image chứa trang HTML tĩnh và chạy bằng Nginx Alpine.

## 2. Các tệp tin
- `index.html`: Chứa nội dung trang web.
- `Dockerfile`: Đóng gói trang HTML vào Nginx.
- `README.md`: Hướng dẫn thực hiện bài tập.

## 3. Nội dung Dockerfile
```dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
```

## 4. Build Docker Image
```bash
docker build -t my-html-app:v1 .
```

## 5. Khởi chạy Container
```bash
docker run -d -p 8081:80 --name html-app my-html-app:v1
```

## 6. Kiểm tra kết quả
```bash
curl http://localhost:8081
```

Kết quả mong đợi:
```html
<h1>Hello Docker Session 09!</h1>
```

## 7. Kết luận
Đã tạo Docker Image `my-html-app:v1` và chạy trang HTML tĩnh bằng Nginx trên cổng 8081.