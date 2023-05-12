FROM bayudwiyansatria/busybox:latest as base
LABEL maintainer="Bayu Dwiyan Satria <bayudwiyansatria@gmail.com>"
WORKDIR /app

ARG VERSION="14"

RUN apt -y update && apt -y install \
    apt-utils \
    dirmngr \
    gnupg \
    apt-transport-https \
    software-properties-common \
    ca-certificates \
    curl

RUN curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
    && add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt buster-pgdg main"

RUN apt -y update \
      && apt -y install postgresql-client-${VERSION}

CMD ["bash"]
