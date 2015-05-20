#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

# Add the PPA repository for LXD/LXC stable
if [[ ! -e /etc/apt/sources.list.d/ubuntu-lxc-lxd-stable-trusty.list ]]; then
    add-apt-repository -y ppa:ubuntu-lxc/lxd-stable
fi

# Update pacakge list
apt-get update

# Install LXD if not installed yet
if [[ ! -e /usr/bin/lxd ]]; then
    apt-get install -y lxd

    # Add vagrant user into lxd to be able to execute lxc command
    usermod -G lxd vagrant
fi
