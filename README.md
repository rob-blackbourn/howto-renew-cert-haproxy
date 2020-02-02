# howto-renew-cert-haproxy

How to renew certificates from Let's Encrypt with haproxy.

You will need to change the domain name in `scripts/renew-cert.sh`

This assumes that certbot has been installed and an initial full chain certificate
has been created and placed in `/etc/haproxy/certs/www.example.com/pem`.

The job will run once a month.

```bash
$ sudo cp -r scripts /etc/haproxy/scripts
$ sudo /etc/haproxy/scripts/install-scripts.sh
```
