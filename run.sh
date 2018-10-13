docker build -t luizmendes/servicodeck:1.0 .

docker run -d -p 8989:80 luizmendes/servicodeck:1.0 

clear

docker container ps
