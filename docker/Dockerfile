FROM nginx:1.27

LABEL maintainer="Sindu Shree"
LABEL project="Enterprise CockroachDB Platform"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]