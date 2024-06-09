#!/bin/bash

sudo /bin/sh -c '
      curl https://www.postgresql.org/media/keys/ACCC4CF8.asc |  \
       gpg --dearmor | tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null && \
      echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'


if [[ $(hostname -s) = "django-test-1" ]]; then
   sudo apt update && sudo apt install -y postgresql-12
else
   sudo apt update && sudo apt install -y postgresql-13
fi