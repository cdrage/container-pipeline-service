#!/bin/bash

# Create the private networks
ip addr del 192.168.10.10/24 dev enp0s25
ip addr del 192.168.10.20/24 dev enp0s25
ip addr del 192.168.10.30/24 dev enp0s25

# Remove the containers
docker rm -f jenkins-master jenkins-slave openshift scanner
