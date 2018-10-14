docker swarm leave --force
docker build -t luizmendes/servicodeck:1.0 .
docker swarm init
docker network create -d overlay minharede
docker service create --mount source=dbase,target=/opt/lampp/var/mysql -p 9080:80 --name servicodeck --network minharede luizmendes/servicodeck:1.0
docker service scale servicodeck=2
docker container ps
~                      
