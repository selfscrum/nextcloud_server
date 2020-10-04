FROM jwilder/nginx-proxy:alpine

COPY uploadsize.conf /etc/nginx/conf.d/uploadsize.conf
# had to change the template to avoid 503 nginx error
COPY nginx.tmpl /app/nginx.tmpl
