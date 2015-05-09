#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

# Update pacakge list
apt-get update

# Install lxc
apt-get install -y lxc
