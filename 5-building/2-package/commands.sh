# build our image from Dockerfile in current directory
docker build -t aaf .

# start a container running our image
# (q to quit the program)
docker run --rm -it aaf

# delete our image
docker rmi aaf

