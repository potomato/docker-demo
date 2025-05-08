docker run --rm -it alpine
docker run --rm -it --network=none alpine

# other networking modes

# run an nginx image that listens on 8080, and map 8080 inside the container to 8099 outside
docker run --rm -p 8099:8080 nginxinc/nginx-unprivileged

# run the same image, this time without port mapping
docker run --rm nginxinc/nginx-unprivileged

# run the same image in host mode
docker run --rm --network=host nginxinc/nginx-unprivileged


# create a network
docker network create my-network

docker network ls

# start a postgres container in our network with container name pgserver
docker run --rm -d --network my-network --name pgserver -e POSTGRES_PASSWORD=password postgres

# start the postgres admin tool in the same network
docker run --rm --network my-network -e PGADMIN_DEFAULT_EMAIL=postgres@email.com -e PGADMIN_DEFAULT_PASSWORD=uipw -e PGADMIN_DISABLE_POSTFIX=1 -p "8099:80" dpage/pgadmin4

docker stop pgserver

docker network rm my-network

docker network ls
