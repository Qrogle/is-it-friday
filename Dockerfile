FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

RUN echo 'server { \
    listen 80; \
    server_name _; \
    root /usr/share/nginx/html; \
    index index.html; \
    location / { try_files $uri $uri/ =404; } \
}' > /etc/nginx/conf.d/is-it-friday.conf

COPY index.html /usr/share/nginx/html/index.html
COPY sad-meme.jpg /usr/share/nginx/html/sad-meme.jpg
