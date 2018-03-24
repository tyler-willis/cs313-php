--
-- PostgreSQL database dump
--

-- Dumped from database version 10.2 (Ubuntu 10.2-1.pgdg14.04+1)
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: game; Type: TABLE; Schema: public; Owner: ucegihpgymiqsr
--

CREATE TABLE game (
    num_copies integer NOT NULL,
    game_info integer
);


ALTER TABLE game OWNER TO ucegihpgymiqsr;

--
-- Name: game_info; Type: TABLE; Schema: public; Owner: ucegihpgymiqsr
--

CREATE TABLE game_info (
    id integer NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    release_date character(10) NOT NULL,
    genre text NOT NULL,
    esrb text NOT NULL,
    company text,
    console text
);


ALTER TABLE game_info OWNER TO ucegihpgymiqsr;

--
-- Name: game_info_id_seq; Type: SEQUENCE; Schema: public; Owner: ucegihpgymiqsr
--

CREATE SEQUENCE game_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE game_info_id_seq OWNER TO ucegihpgymiqsr;

--
-- Name: game_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ucegihpgymiqsr
--

ALTER SEQUENCE game_info_id_seq OWNED BY game_info.id;


--
-- Name: game_info id; Type: DEFAULT; Schema: public; Owner: ucegihpgymiqsr
--

ALTER TABLE ONLY game_info ALTER COLUMN id SET DEFAULT nextval('game_info_id_seq'::regclass);


--
-- Data for Name: game; Type: TABLE DATA; Schema: public; Owner: ucegihpgymiqsr
--

COPY game (num_copies, game_info) FROM stdin;
1	1
1	2
1	9
1	10
1	11
1	12
1	13
1	15
1	16
1	17
\.


--
-- Data for Name: game_info; Type: TABLE DATA; Schema: public; Owner: ucegihpgymiqsr
--

COPY game_info (id, title, description, release_date, genre, esrb, company, console) FROM stdin;
1	Super Smash Bros Brawl	A fighting game	10/3/2006 	Fighting	E10+	\N	\N
2	Fallout 3	A post-apocalyptic FPS.	4/6/2009  	First Person Shooter	M	Bethesda	PC
3	z	z	zz        	z	z	z	z
6	c	c	c         	c	c	c	c
7	d	d	d         	d	d	d	d
8	a	a	a         	a	a	a	a
9	Jak and Daxter	Collect orbs with two quirky characters!	2/6/2004  	Action	T	Naughty Dog	PlayStation 2
10	The Elder Scrolls V: Skyrim	An open world fantasy RPG.	11/11/2011	RPG	M	Bethesda	PC
11	Rogue Legacy	Kill bad guys and reincarnate 	06/27/2013	platform	E	Steam	PC
12	Terraria	An open world sandbox adventure game.	12/4/2011 	Sandbox	E	Re-Logic	PC
13	Kingdom Hearts 2	Explore fantasy worlds with your favorite disney and Final Fantasy characters.	5/5/2003  	Action	E	Square Enix	PlayStation 2
14		a	          				
15	Mass Effect 2	A space-themed first person shooter.	2/5/2012  	First Person Shooter	M	Bioware	PC
16	Secret of Mana	A classic action RPG for up to 3 players.	10/11/1992	Action RPG	E	Enix	Super Nintendo
17	The Legend of Zelda: Breath of the Wild	Explore a desolate open world.	3/21/2016 	Adventure	E	Nintendo	Switch
\.


--
-- Name: game_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ucegihpgymiqsr
--

SELECT pg_catalog.setval('game_info_id_seq', 17, true);


--
-- Name: game_info game_info_pkey; Type: CONSTRAINT; Schema: public; Owner: ucegihpgymiqsr
--

ALTER TABLE ONLY game_info
    ADD CONSTRAINT game_info_pkey PRIMARY KEY (id);


--
-- Name: game game_game_info_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ucegihpgymiqsr
--

ALTER TABLE ONLY game
    ADD CONSTRAINT game_game_info_fkey FOREIGN KEY (game_info) REFERENCES game_info(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: ucegihpgymiqsr
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO ucegihpgymiqsr;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO ucegihpgymiqsr;


--
-- PostgreSQL database dump complete
--

