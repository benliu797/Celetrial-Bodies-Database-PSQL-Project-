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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    year_in_m integer NOT NULL,
    population_in_m numeric(3,1),
    can_evolve boolean,
    league integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(10),
    shape text,
    color text NOT NULL,
    buff_on_pet boolean NOT NULL,
    league integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: pet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.pet (
    pet_id integer NOT NULL,
    name character varying(10) NOT NULL,
    friendly boolean,
    league integer
);


ALTER TABLE public.pet OWNER TO freecodecamp;

--
-- Name: pet_pet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.pet_pet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pet_pet_id_seq OWNER TO freecodecamp;

--
-- Name: pet_pet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.pet_pet_id_seq OWNED BY public.pet.pet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(10) NOT NULL,
    yearly_adoption_in_m integer,
    shape text,
    battle_tier integer,
    team integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(10) NOT NULL,
    pet_born_in_m numeric(3,1),
    catching_rate integer,
    team integer,
    league integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: pet pet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pet ALTER COLUMN pet_id SET DEFAULT nextval('public.pet_pet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'water', 200, 99.0, false, 1);
INSERT INTO public.galaxy VALUES (3, 'ground', 400, 90.0, false, 2);
INSERT INTO public.galaxy VALUES (5, 'eletric', 500, 99.9, true, 3);
INSERT INTO public.galaxy VALUES (6, 'fly', 666, 60.0, false, 4);
INSERT INTO public.galaxy VALUES (4, 'steel', 300, 90.0, false, 5);
INSERT INTO public.galaxy VALUES (2, 'grass', 199, 99.9, true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'eevee', 'A', 'blue', true, 3);
INSERT INTO public.moon VALUES (16, 'eevee', 'E', 'red', true, 2);
INSERT INTO public.moon VALUES (17, 'eevee', 'E', 'yellow', false, 1);
INSERT INTO public.moon VALUES (18, 'eevee', 'E', 'yellow', false, 1);
INSERT INTO public.moon VALUES (19, 'eevee', 'E', 'blue', false, 1);
INSERT INTO public.moon VALUES (20, 'eevee', 'E', 'blue', false, 1);
INSERT INTO public.moon VALUES (21, 'eevee', 'E', 'blue', false, 1);
INSERT INTO public.moon VALUES (22, 'eevee', 'E', 'blue', false, 1);
INSERT INTO public.moon VALUES (10, 'eevee', 'J', 'green', false, 2);
INSERT INTO public.moon VALUES (11, 'eevee', 'K', 'green', false, 2);
INSERT INTO public.moon VALUES (12, 'eevee', 'L', 'green', false, 2);
INSERT INTO public.moon VALUES (13, 'eevee', 'M', 'green', false, 2);
INSERT INTO public.moon VALUES (14, 'eevee', 'N', 'green', true, 2);
INSERT INTO public.moon VALUES (15, 'eevee', 'O', 'green', true, 2);
INSERT INTO public.moon VALUES (2, 'eevee', 'B', 'blue', true, 3);
INSERT INTO public.moon VALUES (3, 'eevee', 'C', 'blue', true, 3);
INSERT INTO public.moon VALUES (4, 'eevee', 'D', 'blue', true, 3);
INSERT INTO public.moon VALUES (6, 'eevee', 'F', 'cyan', false, 3);
INSERT INTO public.moon VALUES (5, 'eevee', 'E', 'blue', true, 3);
INSERT INTO public.moon VALUES (7, 'eevee', 'G', 'green', true, 3);
INSERT INTO public.moon VALUES (8, 'eevee', 'H', 'green', true, 3);
INSERT INTO public.moon VALUES (9, 'eevee', 'I', 'green', true, 3);


--
-- Data for Name: pet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.pet VALUES (1, 'Bayleef', true, 3);
INSERT INTO public.pet VALUES (2, 'Pikachu', true, 3);
INSERT INTO public.pet VALUES (3, 'Roggi', false, 2);
INSERT INTO public.pet VALUES (4, 'Aron', false, 3);
INSERT INTO public.pet VALUES (5, 'Swarmpert', false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Waterworld', 5, 'A', 1, 2);
INSERT INTO public.planet VALUES (2, 'Grassland', 14, 'B', 1, 2);
INSERT INTO public.planet VALUES (3, 'Gounded', 7, 'C', 4, 2);
INSERT INTO public.planet VALUES (4, 'Steelmore', 3, 'D', 4, 4);
INSERT INTO public.planet VALUES (5, 'Eletrich', 9, 'E', 3, 5);
INSERT INTO public.planet VALUES (6, 'WaterH20', 10, 'F', 4, 6);
INSERT INTO public.planet VALUES (7, 'Grassburn', 10, 'G', 2, 1);
INSERT INTO public.planet VALUES (8, 'Groundy', 10, 'H', 2, 1);
INSERT INTO public.planet VALUES (9, 'steelless', 10, 'I', 2, 1);
INSERT INTO public.planet VALUES (10, 'eletrician', 10, 'J', 2, 3);
INSERT INTO public.planet VALUES (11, 'Watering', 12, 'K', 2, 3);
INSERT INTO public.planet VALUES (12, 'Grassing', 12, 'L', 2, 3);
INSERT INTO public.planet VALUES (13, 'Grounding', 22, 'M', 3, 3);
INSERT INTO public.planet VALUES (14, 'Steelmid', 20, 'N', 2, 3);
INSERT INTO public.planet VALUES (15, 'Eletriced', 21, 'O', 1, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A-0424', 21.3, 40, 1, 3);
INSERT INTO public.star VALUES (2, 'B-0442', 31.3, 40, 2, 3);
INSERT INTO public.star VALUES (3, 'Z-7777', 60.3, 40, 3, 2);
INSERT INTO public.star VALUES (5, 'C-1090', 20.2, 40, 5, 1);
INSERT INTO public.star VALUES (6, 'V-5555', 50.3, 40, 6, 2);
INSERT INTO public.star VALUES (4, 'C-1010', 30.3, 40, 4, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: pet_pet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.pet_pet_id_seq', 6, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy league_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT league_unique UNIQUE (league);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: pet pet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pet
    ADD CONSTRAINT pet_id_unique UNIQUE (pet_id);


--
-- Name: pet pet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pet
    ADD CONSTRAINT pet_pkey PRIMARY KEY (pet_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet unique_shape; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_shape UNIQUE (shape);


--
-- Name: star unique_team; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_team UNIQUE (team);


--
-- Name: moon fk_mp_shape; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_mp_shape FOREIGN KEY (shape) REFERENCES public.planet(shape);


--
-- Name: planet fk_ps_team; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_ps_team FOREIGN KEY (team) REFERENCES public.star(team);


--
-- Name: star fk_sg_league; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_sg_league FOREIGN KEY (league) REFERENCES public.galaxy(league);


--
-- PostgreSQL database dump complete
--
