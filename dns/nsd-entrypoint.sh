#!/bin/bash

set -e

# Clean files related to some previous run
rm -f /var/run/nsd/nsd.pid
rm -f /var/lib/nsd/nsd.db

# Make sure that our SSL certificates and keys are all generated and available
nsd-control-setup

# Start NSD
/usr/sbin/nsd -d -c /etc/nsd/nsd.conf -l /var/log/nsd/nsd.log

# Rebuild the database
nsd-control reload
