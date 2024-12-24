# Use an official Go image as the base
FROM golang:latest

# Install additional tools
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    && apt-get clean

# Set up Go environment variables
ENV GOPATH=/go
ENV PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

# Set the working directory
WORKDIR /workspace

# Copy the current directory contents into the container
COPY . /workspace
