FROM bayudwiyansatria/busybox:java-latest AS base
LABEL maintainer="Bayu Dwiyan Satria <bayudwiyansatria@gmail.com>"
WORKDIR /app

ARG VERSION="8.4"

SHELL ["/bin/bash", "-c"]

RUN apt -y update && apt -y install \
    apt-utils \
    unzip \
    zip \
    curl

RUN curl -s "https://get.sdkman.io" | bash - \
    && source "/root/.sdkman/bin/sdkman-init.sh" \
    && sdk install gradle "${VERSION}"

CMD ["bash"]
