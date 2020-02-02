#!/bin/bash

DOMAIN=www.example.com
HAPROXY_CERTS=/etc/haproxy/certs
HAPROXY_PEM=${HAPROXY_CERTS}/${DOMAIN}.pem
HAPROXY_PEM_BAK=${HAPROXY_CERTS}/${DOMAIN}-$(date --iso-8601=ns).pem
LETSENCRYPT_CERTS=/etc/letsencrypt/live/${DOMAIN}
LETSENCRYPT_FULLCHAIN=${LETSENCRYPT_CERTS}/fullchain.pem
LETSENCRYPT_PRIVKEY=${LETSENCRYPT_CERTS}/privkey.pem

systemctl stop haproxy
certbot renew
mv ${HAPROXY_PEM} ${HAPROXY_PEM_BAK}
cat ${LETSENCRYPT_FULLCHAIN} ${LETSENCRYPT_PRIVKEY} > ${HAPROXY_PEM}
chmod 400 ${HAPROXY_PEM}
chown haproxy.haproxy ${HAPROXY_PEM}
systemctl start haproxy
