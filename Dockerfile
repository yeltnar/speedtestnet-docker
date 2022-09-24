FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl && curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash && apt-get install -y speedtest

CMD ["speedtest","--accept-license"]

