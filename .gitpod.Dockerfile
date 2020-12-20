FROM gitpod/workspace-postgres

USER root
RUN sudo apt-get install python

# Set up the database for first use.
RUN psql -f create_db.sql

# Add Heroku CLI
RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sudo sh

USER gitpod
