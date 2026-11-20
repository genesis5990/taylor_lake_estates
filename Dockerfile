FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html board.html privacy.html terms.html /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets
EXPOSE 8080
