FROM gitpod/workspace-postgres

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

USER root

RUN apt-get update -y \
    && apt-get upgrade \
    && apt-get install python-pip python-setuptools python-dev build-essential python 3.9

USER gitpod
