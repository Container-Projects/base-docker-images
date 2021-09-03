FROM ghcr.io/container-projects/base-docker-images:node-12-npm-yo-latest

# Install git
RUN apt-get update && apt-get install git -y && apt-get clean
