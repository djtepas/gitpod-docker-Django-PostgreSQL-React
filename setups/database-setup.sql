CREATE DATABASE dev-project;
CREATE USER djangodev WITH PASSWORD 'djangodev';
ALTER ROLE djangodev SET client_encoding TO 'utf8';
ALTER ROLE djangodev SET default_transaction_isolation TO 'read committed';
ALTER ROLE djangodev SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE dev-project to djangodev;
