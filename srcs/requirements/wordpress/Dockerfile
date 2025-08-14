FROM debian:bookworm

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y curl php php-redis \
    php-fpm php-mysql \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/php
RUN echo "listen = 9000" >> /etc/php/8.2/fpm/pool.d/www.conf

COPY tools/script.sh /

RUN chmod +x script.sh

ENTRYPOINT ["/script.sh"]
