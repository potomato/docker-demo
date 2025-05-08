# exec
docker run --rm -d --name dbserver -e POSTGRES_PASSWORD=password postgres

docker exec -it dbserver bash
# psql -U postgres -h localhost

docker stop dbserver

docker inspect <anything>

# restart
# contents of my azurite.sh
#!/bin/bash
docker volume create azurite
docker run --restart always -d -p 10000:10000 -p 10001:10001 -p 10002:10002 -v azurite:/data --name azurite mcr.microsoft.com/azure-storage/azurite

# cp
docker cp azurite:/opt/azurite/NOTICE.txt .


# podman
podman run nginxinc/nginx-unprivileged
podman run -d nginxinc/nginx-unprivileged
podman pod ls
