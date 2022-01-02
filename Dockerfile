FROM debian:latest
LABEL MAINTAINER="https://github.com/htr-tech/zphisher"

WORKDIR /glorifytube/
ADD . /glorifytube

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./glorifytube.sh"]
