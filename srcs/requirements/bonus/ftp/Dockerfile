FROM debian:bookworm

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y vsftpd \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/vsftpd/empty

COPY ./conf/vsftpd.conf /etc/vsftpd.conf

COPY tools/script.sh .

RUN chmod +x script.sh

ENTRYPOINT ["/script.sh"]