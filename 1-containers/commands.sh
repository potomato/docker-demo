# run some different flavours of container
# docker run <image name>[:tag]

docker run hello-world

# run the alpine distribution's shell interactively
# whoami; ps -ef; ls /; hostname; uname -a
docker run -it alpine

# run the nginx web server as a daemon (in the background)
docker run -p 8099:80 -d nginx


# list running containers, show logs
docker ps

docker logs [-f] <container name>


# stop container
docker stop <container name>

# see all docker containers
docker ps -a

# restart stopped container
docker start [-i] <container name>

# remove stopped container
docker rm <container name>


# other parameters to run
# -it
# as above

# -d
# as above

# --name
docker run --name hw hello-world

# --rm
docker run --rm hello-world

# -e
docker run --rm -it -e FOOD=cheese -e WEATHER=sunny alpine
docker run --rm -it -e FOOD=cheese -e WEATHER=sunny -e NAME alpine

# -w
docker run --rm -it -w /var alpine


# run the default or a different command
docker run --rm -it ubuntu
docker run --rm -it ubuntu bash
docker run --rm -it ubuntu sh


# create then start separately (sometimes required)
docker create --rm -it -e FOOD=cheese -e WEATHER=sunny -e NAME --name created_first alpine
docker ps -a
docker start -i created_first

docker container prune
