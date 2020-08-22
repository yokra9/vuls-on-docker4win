#!/bin/bash

cp -R /tmp/.ssh /root/.ssh
chmod 700 /root/.ssh
chmod 600 /root/.ssh/id_rsa

exec "$@"