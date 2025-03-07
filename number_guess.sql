--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 1);
INSERT INTO public.games VALUES (2, 514, 2);
INSERT INTO public.games VALUES (3, 553, 2);
INSERT INTO public.games VALUES (4, 709, 3);
INSERT INTO public.games VALUES (5, 965, 3);
INSERT INTO public.games VALUES (6, 745, 2);
INSERT INTO public.games VALUES (7, 184, 2);
INSERT INTO public.games VALUES (8, 296, 2);
INSERT INTO public.games VALUES (9, 136, 4);
INSERT INTO public.games VALUES (10, 321, 4);
INSERT INTO public.games VALUES (11, 300, 5);
INSERT INTO public.games VALUES (12, 824, 5);
INSERT INTO public.games VALUES (13, 162, 4);
INSERT INTO public.games VALUES (14, 364, 4);
INSERT INTO public.games VALUES (15, 701, 4);
INSERT INTO public.games VALUES (16, 788, 6);
INSERT INTO public.games VALUES (17, 522, 6);
INSERT INTO public.games VALUES (18, 232, 7);
INSERT INTO public.games VALUES (19, 773, 7);
INSERT INTO public.games VALUES (20, 333, 6);
INSERT INTO public.games VALUES (21, 239, 6);
INSERT INTO public.games VALUES (22, 751, 6);
INSERT INTO public.games VALUES (23, 16, 8);
INSERT INTO public.games VALUES (24, 10, 8);
INSERT INTO public.games VALUES (25, 961, 9);
INSERT INTO public.games VALUES (26, 588, 9);
INSERT INTO public.games VALUES (27, 758, 10);
INSERT INTO public.games VALUES (28, 47, 10);
INSERT INTO public.games VALUES (29, 708, 9);
INSERT INTO public.games VALUES (30, 390, 9);
INSERT INTO public.games VALUES (31, 540, 9);
INSERT INTO public.games VALUES (32, 112, 11);
INSERT INTO public.games VALUES (33, 950, 11);
INSERT INTO public.games VALUES (34, 96, 12);
INSERT INTO public.games VALUES (35, 790, 12);
INSERT INTO public.games VALUES (36, 398, 11);
INSERT INTO public.games VALUES (37, 275, 11);
INSERT INTO public.games VALUES (38, 716, 11);
INSERT INTO public.games VALUES (39, 63, 13);
INSERT INTO public.games VALUES (40, 234, 13);
INSERT INTO public.games VALUES (41, 597, 14);
INSERT INTO public.games VALUES (42, 174, 14);
INSERT INTO public.games VALUES (43, 45, 13);
INSERT INTO public.games VALUES (44, 489, 13);
INSERT INTO public.games VALUES (45, 725, 13);
INSERT INTO public.games VALUES (46, 583, 15);
INSERT INTO public.games VALUES (47, 827, 15);
INSERT INTO public.games VALUES (48, 879, 16);
INSERT INTO public.games VALUES (49, 255, 16);
INSERT INTO public.games VALUES (50, 499, 15);
INSERT INTO public.games VALUES (51, 271, 15);
INSERT INTO public.games VALUES (52, 752, 15);
INSERT INTO public.games VALUES (53, 423, 17);
INSERT INTO public.games VALUES (54, 50, 17);
INSERT INTO public.games VALUES (55, 806, 18);
INSERT INTO public.games VALUES (56, 248, 18);
INSERT INTO public.games VALUES (57, 656, 17);
INSERT INTO public.games VALUES (58, 112, 17);
INSERT INTO public.games VALUES (59, 466, 17);
INSERT INTO public.games VALUES (60, 695, 19);
INSERT INTO public.games VALUES (61, 206, 19);
INSERT INTO public.games VALUES (62, 230, 20);
INSERT INTO public.games VALUES (63, 541, 20);
INSERT INTO public.games VALUES (64, 993, 19);
INSERT INTO public.games VALUES (65, 466, 19);
INSERT INTO public.games VALUES (66, 621, 19);
INSERT INTO public.games VALUES (67, 328, 21);
INSERT INTO public.games VALUES (68, 426, 21);
INSERT INTO public.games VALUES (69, 629, 22);
INSERT INTO public.games VALUES (70, 730, 22);
INSERT INTO public.games VALUES (71, 962, 21);
INSERT INTO public.games VALUES (72, 538, 21);
INSERT INTO public.games VALUES (73, 584, 21);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'l');
INSERT INTO public.users VALUES (2, 'user_1739125366327');
INSERT INTO public.users VALUES (3, 'user_1739125366326');
INSERT INTO public.users VALUES (4, 'user_1739125707636');
INSERT INTO public.users VALUES (5, 'user_1739125707635');
INSERT INTO public.users VALUES (6, 'user_1739125864999');
INSERT INTO public.users VALUES (7, 'user_1739125864998');
INSERT INTO public.users VALUES (8, 'KEI');
INSERT INTO public.users VALUES (9, 'user_1739125995450');
INSERT INTO public.users VALUES (10, 'user_1739125995449');
INSERT INTO public.users VALUES (11, 'user_1739126015336');
INSERT INTO public.users VALUES (12, 'user_1739126015335');
INSERT INTO public.users VALUES (13, 'user_1739126048726');
INSERT INTO public.users VALUES (14, 'user_1739126048725');
INSERT INTO public.users VALUES (15, 'user_1739126065562');
INSERT INTO public.users VALUES (16, 'user_1739126065561');
INSERT INTO public.users VALUES (17, 'user_1739126094936');
INSERT INTO public.users VALUES (18, 'user_1739126094935');
INSERT INTO public.users VALUES (19, 'user_1739126123661');
INSERT INTO public.users VALUES (20, 'user_1739126123660');
INSERT INTO public.users VALUES (21, 'user_1739126137409');
INSERT INTO public.users VALUES (22, 'user_1739126137408');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 73, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 22, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

