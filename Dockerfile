FROM jenkins
USER root
RUN set -x && apt-get update && \
    apt-get install -y zip unzip xml2 apt-transport-https ca-certificates curl software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    apt-get -y update && \
    apt-get -y install docker-ce sudo rsync mc vim git busybox && \
    curl -L "https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m)" \
    -o /usr/local/bin/docker-compose && \
    echo '/usr/bin/docker -H 172.18.0.1 $@' >/usr/local/bin/docker && \
    chmod 755 /usr/local/bin/docker-compose /usr/local/bin/docker && \
    git config --global user.email "borys_usov@epam.com" && \
    git config --global user.name "Jenkins-host" && \
    git config --global push.default matching

