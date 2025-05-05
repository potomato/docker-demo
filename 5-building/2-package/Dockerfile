# start with Ubuntu base image
FROM ubuntu

# fetch index of current packages available
RUN apt-get update

# install package 'libaa-bin' (say Yes automatically)
RUN apt-get install -y libaa-bin

# set 'aafire' as the command to run on container start
CMD [ "aafire" ]
