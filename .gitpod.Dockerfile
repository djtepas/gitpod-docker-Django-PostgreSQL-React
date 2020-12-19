FROM gitpod/workspace-postgres

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

USER root

RUN apt-get update && apt-get upgrade -y
RUN apt-get remove python3.8 -y
RUN apt-get install python3.9 -y

USER gitpod

RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sudo sh
source setups/database-setup.sql;

RUN npm i -g prettier

