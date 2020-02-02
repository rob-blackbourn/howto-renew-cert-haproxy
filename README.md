# howto-renew-cert-haproxy

How to renew certificates from Let's Encrypt with haproxy.

This assumes that certbot has been installed and an initial full chain certificate
has been created and placed in `/etc/haproxy/certs/www.barasgi.com/pem`.

The job will run once a month.

```bash
$ sudo cp -r scripts /etc/haproxy/scripts
$ sudo /etc/haproxy/scripts/install-scripts.sh
```
