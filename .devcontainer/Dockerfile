# Use mcr.microsoft.com/vscode/devcontainers/base:ubuntu as the base image
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Install Docker and Docker Compose
RUN apt-get update && \
    apt-get install -y docker.io docker-compose && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set up Docker-in-Docker
RUN dockerd & sleep 5 && \
    docker info

# Set the working directory
WORKDIR /workspace
