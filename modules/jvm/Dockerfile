FROM bayudwiyansatria/busybox:latest as base
LABEL maintainer="Bayu Dwiyan Satria <bayudwiyansatria@gmail.com>"
WORKDIR /app

ARG VERSION="11.0.17"

SHELL ["/bin/bash", "-c"]

RUN apt -y update && apt -y install \
    apt-utils \
    unzip \
    zip \
    curl

RUN curl -s "https://get.sdkman.io" | bash - \
    && source "/root/.sdkman/bin/sdkman-init.sh" \
    && sdk install java "${VERSION}"-zulu

CMD ["bash"]
