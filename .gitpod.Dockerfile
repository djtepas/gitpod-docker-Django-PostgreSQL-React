FROM gitpod/workspace-postgres

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

USER root
RUN apt-get update && apt-get intall -y
RUN -it --rm python:latest

USER gitpod

RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sudo sh
