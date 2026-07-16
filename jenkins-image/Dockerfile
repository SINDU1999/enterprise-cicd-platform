FROM jenkins/jenkins:2.568.1-jdk21

USER root

# Install required packages
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    git \
    docker.io \
    && rm -rf /var/lib/apt/lists/*

# Install AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf aws awscliv2.zip

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/v1.32.13/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
    rm kubectl

# Install Helm
RUN curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

USER jenkins