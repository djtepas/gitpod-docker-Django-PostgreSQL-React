FROM gitpod/workspace-postgres

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

USER gitpod

RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sudo sh

RUN npm i -g prettier

