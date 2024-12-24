# Specifies a parent image
FROM golang:latest

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    && apt-get clean

ENV GOPATH=/go
ENV PATH=$GOPATH/bin:/usr/local/go/bin:$PATH
 
# Creates an app directory to hold your app’s source code
WORKDIR /learngo
 
# Copies everything from your root directory into /app
COPY . /learngo
 

 
