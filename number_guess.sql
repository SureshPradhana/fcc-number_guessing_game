--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE users_data;
--
-- Name: users_data; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE users_data WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE users_data OWNER TO freecodecamp;

\connect users_data

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(22),
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (65, 'user_1683284530508', 2, 389);
INSERT INTO public.users VALUES (64, 'user_1683284530509', 4, 275);
INSERT INTO public.users VALUES (76, 'user_1683350751848', 2, 576);
INSERT INTO public.users VALUES (67, 'user_1683350111431', 2, 730);
INSERT INTO public.users VALUES (75, 'user_1683350751849', 5, 28);
INSERT INTO public.users VALUES (74, 'suresh', 5, 4);
INSERT INTO public.users VALUES (66, 'user_1683350111432', 4, 189);
INSERT INTO public.users VALUES (69, 'user_1683350234313', 2, 490);
INSERT INTO public.users VALUES (78, 'user_1683350924757', 2, 376);
INSERT INTO public.users VALUES (68, 'user_1683350234314', 5, 24);
INSERT INTO public.users VALUES (77, 'user_1683350924758', 5, 188);
INSERT INTO public.users VALUES (71, 'user_1683350244266', 2, 498);
INSERT INTO public.users VALUES (70, 'user_1683350244267', 5, 107);
INSERT INTO public.users VALUES (80, 'user_1683350938622', 2, 366);
INSERT INTO public.users VALUES (73, 'user_1683350253338', 2, 475);
INSERT INTO public.users VALUES (72, 'user_1683350253339', 4, 31);
INSERT INTO public.users VALUES (79, 'user_1683350938623', 5, 54);
INSERT INTO public.users VALUES (82, 'user_1683350972496', 2, 636);
INSERT INTO public.users VALUES (81, 'user_1683350972497', 5, 145);
INSERT INTO public.users VALUES (84, 'user_1683351345662', 2, 446);
INSERT INTO public.users VALUES (83, 'user_1683351345663', 5, 546);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_id_seq', 84, true);


--
-- Name: users unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_constraint UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


