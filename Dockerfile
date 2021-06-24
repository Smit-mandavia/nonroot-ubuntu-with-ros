#Pull the base image as Ubuntu
FROM ubuntu:18.04

#Add a user with userid 8877 and name nonroot
RUN apt-get update && apt-get install -y sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -u 8877 tmp8877

#Run Container as nonroot
USER tmp8877
