#Pull the base image as Ubuntu
FROM ubuntu:latest

#Add a user with userid 8877 and name nonroot
RUN useradd −u 8877 nonroot

#Run Container as nonroot
USER nonroot
