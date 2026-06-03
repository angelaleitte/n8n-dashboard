FROM nginx:alpine

# Copiar config do nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar o dashboard
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
