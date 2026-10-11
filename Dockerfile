
#lấy image nginx:alpine từ docker hub
FROM nginx:alpine

#cupy file index.html vào thư mục /usr/share/nginx/html/index.html trong container
COPY index.html /usr/share/nginx/html/index.html
