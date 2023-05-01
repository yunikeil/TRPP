FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y cowsay python3

COPY data /mnt/files

ENV PATH="/usr/games:${PATH}"

EXPOSE 8800

CMD ["sh", "-c", "cowsay 'Hello, World!' > /mnt/files/cowsay.txt && cd /mnt/files && python3 -m http.server 8800"]
