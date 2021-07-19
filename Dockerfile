FROM ubuntu:latest
LABEL maintainer="John Doe <johndoe@example.com>"
EXPOSE 51820/udp
EXPOSE 53/udp
RUN apt-get update && \
    apt-get install curl -y && \
    curl https://raw.githubusercontent.com/complexorganizations/wireguard-manager/main/wireguard-manager.sh --create-dirs -o /usr/local/bin/wireguard-manager.sh && \
    chmod +x /usr/local/bin/wireguard-manager.sh
