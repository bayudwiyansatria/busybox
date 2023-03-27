FROM bayudwiyansatria/busybox:latest as base
LABEL maintainer="Bayu Dwiyan Satria <bayudwiyansatria@gmail.com>"
WORKDIR /app

RUN apt -y update \
      && apt -y install postgresql-client

CMD ["bash"]
