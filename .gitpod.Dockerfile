FROM gitpod/workspace-postgres

USER root

# Add Heroku CLI
RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sudo sh

USER gitpod
