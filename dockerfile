# Simple jenkins image 
FROM jenkins/jenkins
# Switch to user root in order to install software
USER root
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update
RUN apt-get install -y docker-ce docker-ce-cli containerd.io
# MACOS 
RUN usermod -aG root jenkins && newgrp root
# Linux
# RUN usermod -aG docker jenkins && newgrp docker
