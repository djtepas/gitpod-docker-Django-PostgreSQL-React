[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/djtepas/gitpod-docker-Django-PostgreSQL-React)

# Pre-built Workspace for My Development
I needed a workspace I could use to start projects from in Gitpod and I didn't find a existing example done the way I wanted. Please keep in mind that my development is all done as a hobby.

## Requirements for the workspace
These are my basic setup items I use when building a new website.

* PostgresSQL database
* Python
    * Django
* Node JS
    * React

## Steps Used

1. Start with prebuilt "workspace-postgresql"
2. Check Python verion --> 3.8.6
3. Check Node verion --> v12.20.0
4. Clone Base project from Coding for Entrepreneurs
5. You will need to setup PostgreSQL from terminal type psql

```psql
CREATE DATABASE myproject;
CREATE USER myprojectuser WITH PASSWORD 'password';
ALTER ROLE myprojectuser SET client_encoding TO 'utf8';
ALTER ROLE myprojectuser SET default_transaction_isolation TO 'read committed';
ALTER ROLE myprojectuser SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE myproject to myprojectuser;
```

6. Update settings for Django
```Python
DATABASE = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'myproject',
        'USER': 'myprojectuser',
        'PASSWORD': 'password',
        'HOST': 'localhost',
        'PORT': '',
    }
}

## References used to build the workspace

* CodingforEntrepreneurs
    * https://www.codingforentrepreneurs.com/projects/reactify-django
    * https://github.com/codingforentrepreneurs/Reactify-Django

* Gitpod docs
    * https://www.gitpod.io/docs/

