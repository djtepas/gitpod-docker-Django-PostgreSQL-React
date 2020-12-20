#!/bin/bash

# Bash "strict mode", to help catch problems and puts in the shell
# script. Every bash script you write should include this. see
# http://redsymbol.net/articles/unofficial-bash-strict-mode/ for
# details.
set -euo pipefail

# Tell apt-get we're never going to be able to give manual
# feedback:
export DEBIAN_FRONTEND=noninteractive

# # Update the package listing, so we know that package exist:
# su apt-get update

# # Install security updates:
# su apt-get -y upgrade

# Install a new packaage, without unnecessary recommended packages:
apt-get -y install --no-install-recommends syslog-ng

# Delete cached files we don't need anymore:
apt-get clean
rm -rf /var/lib/apt/lists/*
