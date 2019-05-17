FROM jenkins/jenkins
USER root
RUN apt update
RUN apt install -y curl
RUN curl https://get.docker.com | bash
RUN curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
RUN usermod -g docker jenkins
RUN apt install -y sudo
