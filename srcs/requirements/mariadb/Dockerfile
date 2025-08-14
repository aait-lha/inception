FROM debian:bookworm

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y mariadb-server \
    && rm -rf /var/lib/apt/lists/*

COPY tools/script.sh /

RUN chmod +x script.sh

ENTRYPOINT [ "/script.sh" ]
