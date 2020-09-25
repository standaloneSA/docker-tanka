from ubuntu:xenial-20200903

RUN apt-get update && apt-get upgrade -y && \
    apt-get install git curl wget python3-pip -y 

RUN curl -fSL -o "/usr/local/bin/jb" "https://github.com/jsonnet-bundler/jsonnet-bundler/releases/download/v0.4.0/jb-linux-amd64" && chmod +x "/usr/local/bin/jb"

RUN curl -fSL -o "/usr/local/bin/tk" "https://github.com/grafana/tanka/releases/download/v0.11.1/tk-linux-amd64" && chmod +x "/usr/local/bin/tk"




