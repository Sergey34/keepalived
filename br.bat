docker build -t seko/demo ./image/.
docker run --cap-add=NET_ADMIN --net=host -d seko/demo
docker ps

