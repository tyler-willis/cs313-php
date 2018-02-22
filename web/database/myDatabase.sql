CREATE DATABASE game_store

\c game_store

CREATE TABLE public.game
(
    num_copies INT NOT NULL,
    info INT NOT NULL REFERENCES public.game_info
);

CREATE TABLE public.game_info
(
    id SERIAL NOT NULL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    release_date CHAR(10) NOT NULL,
    console INT NOT NULL REFERENCES public.console(id),
    company INT NOT NULL REFERENCES public.company(id),
    genre TEXT NOT NULL,
    cover_url TEXT NOT NULL,
    esrb CHAR(5) NOT NULL
);

CREATE TABLE public.copy
(
    id SERIAL NOT NULL PRIMARY KEY,
    game_condition TEXT NOT NULL,
    location TEXT NOT NULL,
    is_available BOOLEAN NOT NULL,
    cost FLOAT(24) NOT NULL
);

CREATE TABLE public.console
(
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE public.company
(
    id SERIAL NOT NULL PRIMARY KEY,
    name TINYTEXT NOT NULL
);

INSERT INTO company (id, name)
VALUES ('1', 'Nintendo')

SELECT * FROM company;

CREATE USER tyler WITH PASSWORD 'tyler';
GRANT SELECT, INSERT, UPDATE ON game_store TO tyler;