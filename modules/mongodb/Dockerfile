FROM bayudwiyansatria/busybox:latest as base
LABEL maintainer="Bayu Dwiyan Satria <bayudwiyansatria@gmail.com>"
WORKDIR /app

ARG VERSION="5.0"

RUN apt -y update && apt -y install \
    apt-utils \
    dirmngr \
    gnupg \
    apt-transport-https \
    software-properties-common \
    ca-certificates \
    curl

RUN curl -fsSL https://www.mongodb.org/static/pgp/server-${VERSION}.asc | apt-key add - \
    && add-apt-repository "deb https://repo.mongodb.org/apt/debian buster/mongodb-org/${VERSION} main"

RUN apt -y update \
    && apt -y install mongodb-org-tools

CMD ["bash"]
