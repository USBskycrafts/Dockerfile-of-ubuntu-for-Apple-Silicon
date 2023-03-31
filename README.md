# Dockerfile-of-ubuntu-for-Apple-Silicon

# Build the Image
docker build -t ubuntu .

# Build the container
docker run -d -ti -p 3316:22 --name ubuntu --platform linux/amd64 --volume ~/:/host ubuntu:latest

# Run the container
docker exec -t -i ubuntu /usr/bin/fish
