docker build -t site-imagens:1.0 .

docker run -d -p 8080:80 site-imagens:1.0

http://localhost:8080
