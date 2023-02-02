FROM php:7.4-cli
RUN apt-get -y update; apt-get -y install cron --no-install-suggests --no-install-recommends
COPY run.sh /root/dynamic-dns/
COPY updater.php /root/dynamic-dns/
COPY dynamic-dns.cron /etc/cron.d/
ENTRYPOINT ["cron", "-f"]
