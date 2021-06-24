#Pull the base image as Ubuntu
FROM ubuntu:18.04

#Add a user with userid 8877 and name nonroot

RUN useradd -u 8877 tmp8877

#Run Container as nonroot
USER tmp8877
