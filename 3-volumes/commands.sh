# create a container from image filebrowser:v2.31.2
# admin/admin
docker run -p 8099:80 --name filebrowser -d --rm filebrowser/filebrowser:v2.31.2
# upload a file
# vulnerability - need to upgrade!
docker stop filebrowser

# update
docker run -p 8099:80 --name filebrowser -d --rm filebrowser/filebrowser:v2.32.0
docker stop filebrowser


# create a container with a bind mount from ./storage to /srv in the container (where filebrowser stores content)
docker run -v ./storage:/srv -p 8099:80 --name filebrowser -d --rm filebrowser/filebrowser:v2.31.2
docker stop filebrowser

# upgrade
docker run -v ./storage:/srv -p 8099:80 --name filebrowser -d --rm filebrowser/filebrowser:v2.32.0
docker stop filebrowser


# create a dedicated docker volume for storage
docker volume create fb_storage

# create a container with a volume mount from our dedicated volume to /srv in the container
docker run -v fb_storage:/srv -p 8099:80 --name filebrowser -d --rm filebrowser/filebrowser:v2.31.2
docker stop filebrowser

# upgrade
docker run -v fb_storage:/srv -p 8099:80 --name filebrowser -d --rm filebrowser/filebrowser:v2.32.0
docker stop filebrowser


# look out our dedicated docker volume (read-only)
docker run --rm -it -v fb_storage:/appstorage:ro --workdir /appstorage alpine


docker volume ls
docker volume prune
