FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
    vim \
    unzip \
    curl \
    && rm -rf /var/lib/apt/lists/*

ENV TERRAFORM_BIN_PATH=$HOME/.terraform

WORKDIR $TERRAFORM_BIN_PATH

ENV TERRAFORM_VERSION=0.12.29

RUN curl -s https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_linux_amd64.zip -o $TERRAFORM_VERSION.zip && \
    ls -lha && \
    unzip -o $TERRAFORM_VERSION.zip

ENV PATH=$HOME/.terraform/$TERRAFORM_VERSION:$PATH

EXPOSE 8080
EXPOSE 50000