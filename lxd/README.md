Running LXD/LXC based system container
======================================

These files are intended to help you try the LXD, a new daemon and CLI client
for working with LXC-based OS container.  The configration was tested using Vagrant 1.7.2 and VirtualBox 4.3.20 .

## Contents

* **README.md**: This file you're currently reading.

* **setup.sh**: This file confugures `lxd/lxc` inside the VM created by Vagrant. No changes should be needed to this file .

* **Vagrantfile**: This file is used by Vagrant to spin up the virtual machine.

## Instructions

1. Run `vagrant up` to bring up the VM specified in `Vagrantfile`

2. Once Vagrant has finished creating, booting, and provisioning the VM,
   log into the VM using `vagrant ssh`.

3. Add the public LinuxContainer.org image repository by running `lxc remote add lxc-org images.linuxcontainers.org`.

4. Copy the 64-bit Debian 8.0 container images to your system with the command
   `lxc image copy lxc-org:/debian/jessie/amd64 local: --alias=jessie-amd64`.

5. Launch a container based on this image with the command `lxc launch
   jessie-amd64 jessie-01`.

6. Open a shell in the container you launched with the command `lxc exec
   jessie-01 /bin/bash`.

7. Press Ctrl-D to exit the shell in the container.

8. The container is still running, so stop the container with `lxc
   stop jessie-01`.

