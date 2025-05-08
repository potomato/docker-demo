docker build -t blazorapp .

docker run --rm -p "8099:8080" --name blazorapp -d blazorapp

docker stop blazorapp


docker tag blazorapp someregistry.azurecr.io/apps/blazorapp
docker push someregistry.azurecr.io/apps/blazorapp

docker rmi someregistry.azurecr.io/apps/blazorapp
docker rmi blazorapp
