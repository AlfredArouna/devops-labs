#!/usr/bin/env bash
# Create required folders
mkdir -p pki/tls/certs && mkdir -p pki/tls/private
# Create server key and certificate
openssl req -subj '/CN=docker.elk /' -x509 -days 3650 -nodes -batch -newkey rsa:2048 -keyout pki/tls/private/logstash.key -out pki/tls/certs/logstash.crt
# Set vm.max_map_count
sudo sysctl vm.max_map_count=262144
