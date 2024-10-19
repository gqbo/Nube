FROM nginx
WORKDIR /usr/share/nginx/html
COPY hola.html .
RUN cp hola.html index.html
EXPOSE 80
CMD nginx -g 'daemon off;'