#!/bin/bash

#Docker related commands
#Ensure Java & otehr related things are installed already
#Install docker
sudo yum install -y docker

#For AWS centos
 sudo amazon-linux-extras install docker

#Check version
docker --version

#docker build -t friendlyhello .  # Create image using this directory's Dockerfile
#docker run -p 4000:80 friendlyhello  # Run "friendlyname" mapping port 4000 to 80
#docker run -d -p 4000:80 friendlyhello         # Same thing, but in detached mode
#docker container ls                                # List all running containers
#docker container ls -a             # List all containers, even those not running
#docker container stop <hash>           # Gracefully stop the specified container
#docker container kill <hash>         # Force shutdown of the specified container
#docker container rm <hash>        # Remove specified container from this machine
#docker container rm $(docker container ls -a -q)         # Remove all containers
#docker image ls -a                             # List all images on this machine
#docker image rm <image id>            # Remove specified image from this machine
#docker image rm $(docker image ls -a -q)   # Remove all images from this machine
#docker login             # Log in this CLI session using your Docker credentials
#docker tag <image> username/repository:tag  # Tag <image> for upload to registry
#docker login                                #To login to the dockerhub registry
#docker push username/repository:tag            # Upload tagged image to registry
#docker run username/repository:tag                   # Run image from a registry
#docker exec -it c7d9bb3f72c3  bash   #get into the docker container.


#Best dockerfile explanation - https://takacsmark.com/dockerfile-tutorial-by-example-dockerfile-best-practices-2018/#dockerfile-basics

#####
#To Create the Docker images dynamically after lot of chnages inside.

#Run the docker image with -i - interactive option
sudo docker run -i -t ubuntu bash

#Do all the things needed, commit the container to a new image
# df - is the container id , ubuntu-apache is the new image where this container needs to be committed to
sudo docker commit df888c72ed5a ubuntu-apache

#check logs
#Get the container id which stopped/problematic
sudo docker container ps -a
sudo docker logs <containerid>
#NOTE:Sometimes your docker container exits with (0) and logs also doesn't show any problem Run the image in interactive mode
