#!/bin/bash

set -euo pipefail

# Need to add verfication logic
echo "Starting Corda Install"
sudo adduser --system --no-create-home --group corda
sudo mkdir /opt/corda
sudo chown corda:corda /opt/corda

cd /opt/corda
sudo wget -O corda.jar https://r3.bintray.com/corda/net/corda/corda/3.1-corda/corda-3.1-corda.jar
sudo wget -O corda-webserver.jar https://r3.bintray.com/corda/net/corda/corda-webserver/3.1-corda/corda-webserver-3.1-corda.jar
sudo mkdir /opt/corda/cordapps
sudo mkdir /opt/corda/certificates

sudo mkdir /opt/corda/drivers
sudo wget -O drivers/postgresql-42.2.2.jar https://jdbc.postgresql.org/download/postgresql-42.2.2.jar