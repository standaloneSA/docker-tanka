from ubuntu:xenial-20200903

RUN apt-get update && apt-get upgrade -y && \
    apt-get install git curl wget python3-pip -y 

ADD motd /etc/motd
RUN echo "cat /etc/motd" >> /root/.bashrc

RUN curl -fSL -o "/usr/local/bin/jb" "https://github.com/jsonnet-bundler/jsonnet-bundler/releases/download/v0.4.0/jb-linux-amd64" && chmod +x "/usr/local/bin/jb"

RUN curl -fSL -o "/tmp/jsonnet-bin-v0.16.0-linux.tar.gz" "https://github.com/google/jsonnet/releases/download/v0.16.0/jsonnet-bin-v0.16.0-linux.tar.gz" &&\
     tar -C /usr/local/bin -zxvf /tmp/jsonnet-bin-v0.16.0-linux.tar.gz &&\
     rm -rf "/tmp/jsonnet-bin-v0.16.0-linux.tar.gz"

RUN curl -fSL -o "/usr/local/bin/tk" "https://github.com/grafana/tanka/releases/download/v0.11.1/tk-linux-amd64" && chmod +x "/usr/local/bin/tk"




