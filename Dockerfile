# Usar a imagem oficial do nginx como base
FROM nginx:alpine

# Copiar os arquivos HTML e CSS para o diretório correto no container
COPY index.html /usr/share/nginx/html/
COPY disciplinas.html /usr/share/nginx/html/
COPY fotos.html /usr/share/nginx/html/
COPY inscripcion.html /usr/share/nginx/html/
COPY videos.html /usr/share/nginx/html/
COPY styledisciplina.css /usr/share/nginx/html/
COPY stylefoto.css /usr/share/nginx/html/
COPY styleindex.css /usr/share/nginx/html/
COPY styleinscripcion.css /usr/share/nginx/html/
COPY stylevideo.css /usr/share/nginx/html/

# Copiar as imagens para o diretório de imagens no nginx
COPY imgs/ /usr/share/nginx/html/imgs/

# Expor a porta 80 do container (padrão para nginx)
EXPOSE 80

# Comando padrão para rodar o nginx no container
CMD ["nginx", "-g", "daemon off;"]
