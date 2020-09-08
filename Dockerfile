FROM hekonsek/dkr-docker

RUN apt update
RUN apt install -y wget unzip

RUN wget https://releases.hashicorp.com/packer/1.6.2/packer_1.6.2_linux_amd64.zip &&\
    unzip packer_1.6.2_linux_amd64.zip -d /usr/bin &&\
    rm packer_1.6.2_linux_amd64.zip

ENTRYPOINT ["/usr/bin/packer"]