FROM nginx
ARG AUTOR
ENV ENV_AUTOR=$AUTOR
WORKDIR /usr/share/nginx/html
COPY hola.html .
RUN sed -e s/Docker/"$AUTOR"/ hola.html > index.html ;
CMD ["nginx", "-g", "daemon off;"]