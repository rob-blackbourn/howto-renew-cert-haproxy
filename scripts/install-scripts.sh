#!/bin/bash

cp /etc/haproxy/scripts/renew-cert.timer /lib/systemd/system
cp /etc/haproxy/scripts/renew-cert.service /lib/systemd/system
systemctl daemon-reload
systemctl enable renew-cert.timer
systemctl start renew-cert.timer
