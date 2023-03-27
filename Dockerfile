FROM debian:buster AS base
LABEL maintainer="Bayu Dwiyan Satria <bayudwiyansatria@gmail.com>"
WORKDIR /usr/local/bin

FROM base AS build
WORKDIR /bin

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    curl \
    git

COPY scripts .

# Install gruntwork-installer, which is the preferred method for installing Gruntwork binaries and modules
ARG GRUNTWORK_VERSION=v0.0.38
RUN gruntwork.sh ${GRUNTWORK_VERSION}

# Install fetch
ARG FETCH_VERSION=0.4.5
RUN gruntwork-fetch.sh ${FETCH_VERSION}

# Terraform
ARG TERRAFORM_VERSION=1.2.4
RUN terraform.sh ${TERRAFORM_VERSION}

# Terragrunt
ARG TERRAGRUNT_VERSION=0.38.4
RUN terragrunt.sh ${TERRAGRUNT_VERSION}

# kubectl
ARG KUBECTL_VERSION=1.24.2
RUN kubectl.sh ${KUBECTL_VERSION}

# Envsubt
ARG GETTEXT_VERSION=0.21.1
RUN gettext.sh ${GETTEXT_VERSION}

RUN rm -rf *.sh

FROM base AS release

COPY --from=build /bin /usr/local/bin

CMD ["bash"]