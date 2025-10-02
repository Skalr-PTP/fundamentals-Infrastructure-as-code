#!/bin/bash
cd /home/ec2-user
wget https://github.com/prometheus/node_exporter/releases/latest/download/node_exporter-1.8.0.linux-amd64.tar.gz
tar -xvf node_exporter-1.8.0.linux-amd64.tar.gz
cd node_exporter-1.8.0.linux-amd64
./node_exporter &
