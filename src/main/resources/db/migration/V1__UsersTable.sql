CREATE TABLE users (
    user_id     SERIAL PRIMARY KEY,
    first_name  varchar(30) NOT NULL,
    last_name   varchar(30) NOT NULL,
    email       varchar(80) NOT NULL UNIQUE,
    access      varchar(30) NOT NULL,
    is_active   BOOLEAN NOT NULL
)