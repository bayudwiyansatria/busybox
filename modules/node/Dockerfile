FROM bayudwiyansatria/busybox:latest AS base
LABEL maintainer="Bayu Dwiyan Satria <bayudwiyansatria@gmail.com>"
WORKDIR /app

ARG VERSION="17.1.0"

SHELL ["/bin/bash", "-c"]

RUN apt -y update && apt -y install \
    apt-utils \
    unzip \
    zip \
    curl

RUN curl -s "https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh" | bash - \
    && source "/root/.nvm/nvm.sh" \
    && nvm install "${VERSION}" \
    && nvm alias default "${VERSION}" \
    && nvm use default

CMD ["bash"]
