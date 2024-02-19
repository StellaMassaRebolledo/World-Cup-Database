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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(15) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (291, 2018, 'Final', 262, 263, 4, 2);
INSERT INTO public.games VALUES (292, 2018, 'Third Place', 264, 265, 2, 0);
INSERT INTO public.games VALUES (293, 2018, 'Semi-Final', 263, 265, 2, 1);
INSERT INTO public.games VALUES (294, 2018, 'Semi-Final', 262, 264, 1, 0);
INSERT INTO public.games VALUES (295, 2018, 'Quarter-Final', 263, 266, 3, 2);
INSERT INTO public.games VALUES (296, 2018, 'Quarter-Final', 265, 267, 2, 0);
INSERT INTO public.games VALUES (297, 2018, 'Quarter-Final', 264, 268, 2, 1);
INSERT INTO public.games VALUES (298, 2018, 'Quarter-Final', 262, 269, 2, 0);
INSERT INTO public.games VALUES (299, 2018, 'Eighth-Final', 265, 270, 2, 1);
INSERT INTO public.games VALUES (300, 2018, 'Eighth-Final', 267, 271, 1, 0);
INSERT INTO public.games VALUES (301, 2018, 'Eighth-Final', 264, 272, 3, 2);
INSERT INTO public.games VALUES (302, 2018, 'Eighth-Final', 268, 273, 2, 0);
INSERT INTO public.games VALUES (303, 2018, 'Eighth-Final', 263, 274, 2, 1);
INSERT INTO public.games VALUES (304, 2018, 'Eighth-Final', 266, 275, 2, 1);
INSERT INTO public.games VALUES (305, 2018, 'Eighth-Final', 269, 276, 2, 1);
INSERT INTO public.games VALUES (306, 2018, 'Eighth-Final', 262, 277, 4, 3);
INSERT INTO public.games VALUES (307, 2014, 'Final', 278, 277, 1, 0);
INSERT INTO public.games VALUES (308, 2014, 'Third Place', 279, 268, 3, 0);
INSERT INTO public.games VALUES (309, 2014, 'Semi-Final', 277, 279, 1, 0);
INSERT INTO public.games VALUES (310, 2014, 'Semi-Final', 278, 268, 7, 1);
INSERT INTO public.games VALUES (311, 2014, 'Quarter-Final', 279, 280, 1, 0);
INSERT INTO public.games VALUES (312, 2014, 'Quarter-Final', 277, 264, 1, 0);
INSERT INTO public.games VALUES (313, 2014, 'Quarter-Final', 268, 270, 2, 1);
INSERT INTO public.games VALUES (314, 2014, 'Quarter-Final', 278, 262, 1, 0);
INSERT INTO public.games VALUES (315, 2014, 'Eighth-Final', 268, 281, 2, 1);
INSERT INTO public.games VALUES (316, 2014, 'Eighth-Final', 270, 269, 2, 0);
INSERT INTO public.games VALUES (317, 2014, 'Eighth-Final', 262, 282, 2, 0);
INSERT INTO public.games VALUES (318, 2014, 'Eighth-Final', 278, 283, 2, 1);
INSERT INTO public.games VALUES (319, 2014, 'Eighth-Final', 279, 273, 2, 1);
INSERT INTO public.games VALUES (320, 2014, 'Eighth-Final', 280, 284, 2, 1);
INSERT INTO public.games VALUES (321, 2014, 'Eighth-Final', 277, 271, 1, 0);
INSERT INTO public.games VALUES (322, 2014, 'Eighth-Final', 264, 285, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (262, 'France');
INSERT INTO public.teams VALUES (263, 'Croatia');
INSERT INTO public.teams VALUES (264, 'Belgium');
INSERT INTO public.teams VALUES (265, 'England');
INSERT INTO public.teams VALUES (266, 'Russia');
INSERT INTO public.teams VALUES (267, 'Sweden');
INSERT INTO public.teams VALUES (268, 'Brazil');
INSERT INTO public.teams VALUES (269, 'Uruguay');
INSERT INTO public.teams VALUES (270, 'Colombia');
INSERT INTO public.teams VALUES (271, 'Switzerland');
INSERT INTO public.teams VALUES (272, 'Japan');
INSERT INTO public.teams VALUES (273, 'Mexico');
INSERT INTO public.teams VALUES (274, 'Denmark');
INSERT INTO public.teams VALUES (275, 'Spain');
INSERT INTO public.teams VALUES (276, 'Portugal');
INSERT INTO public.teams VALUES (277, 'Argentina');
INSERT INTO public.teams VALUES (278, 'Germany');
INSERT INTO public.teams VALUES (279, 'Netherlands');
INSERT INTO public.teams VALUES (280, 'Costa Rica');
INSERT INTO public.teams VALUES (281, 'Chile');
INSERT INTO public.teams VALUES (282, 'Nigeria');
INSERT INTO public.teams VALUES (283, 'Algeria');
INSERT INTO public.teams VALUES (284, 'Greece');
INSERT INTO public.teams VALUES (285, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 322, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 285, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

