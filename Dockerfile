FROM debian:buster-slim

RUN apt-get update &&\
    apt-get -y install wget &&\
    wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb &&\
    dpkg -i packages-microsoft-prod.deb &&\
    apt-get install -y apt-transport-https && \
    apt-get update && \
    apt-get install -y aspnetcore-runtime-5.0 dotnet-sdk-5.0
