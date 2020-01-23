FROM nginx
RUN apt-get update
pwd
COPY index.html /usr/share/nginx/html/index.html
