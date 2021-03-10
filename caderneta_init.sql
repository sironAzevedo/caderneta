--CREATE USER test WITH PASSWORD 'test' CREATEDB;
CREATE DATABASE db_caderneta_contas
    WITH 
    OWNER = caderneta
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;