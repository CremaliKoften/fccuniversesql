--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: constelation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelation (
    constelation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_stars integer
);


ALTER TABLE public.constelation OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constelation_constelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelation_constelation_id_seq OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constelation_constelation_id_seq OWNED BY public.constelation.constelation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billions numeric(4,2),
    millions_of_stars integer,
    millions_of_planets integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_idgalaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_idgalaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_idgalaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_idgalaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_idgalaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    number_of_neighbors integer,
    age_in_millions integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_idmoon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_idmoon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_idmoon_seq OWNER TO freecodecamp;

--
-- Name: moon_idmoon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_idmoon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    number_of_moons integer,
    age_in_millions integer,
    description text,
    has_life boolean,
    is_solid boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_idplanet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_idplanet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_idplanet_seq OWNER TO freecodecamp;

--
-- Name: planet_idplanet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_idplanet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    number_of_planets integer,
    age_in_millions integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_idstar_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_idstar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_idstar_seq OWNER TO freecodecamp;

--
-- Name: star_idstar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_idstar_seq OWNED BY public.star.star_id;


--
-- Name: constelation constelation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation ALTER COLUMN constelation_id SET DEFAULT nextval('public.constelation_constelation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_idgalaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_idmoon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_idplanet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_idstar_seq'::regclass);


--
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelation VALUES (1, 'Big Dipper', 7);
INSERT INTO public.constelation VALUES (2, 'Little Dipper', 7);
INSERT INTO public.constelation VALUES (3, 'Ophiucus', 14);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 13.60, 100, 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 11.50, 100000, 0);
INSERT INTO public.galaxy VALUES (3, 'Cetus', 20.50, 200, 3940);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 12.30, 2390, 239);
INSERT INTO public.galaxy VALUES (5, 'Draco II', 15.30, 890, 1329);
INSERT INTO public.galaxy VALUES (6, 'Tucana III', 3.80, 490, 2349);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 0, 38393);
INSERT INTO public.moon VALUES (2, 'Deimos', 4, 1, 322);
INSERT INTO public.moon VALUES (3, 'Phobos', 4, 1, 3393);
INSERT INTO public.moon VALUES (4, 'Io', 5, 96, 93848);
INSERT INTO public.moon VALUES (5, 'Ganimede', 5, 96, 93848);
INSERT INTO public.moon VALUES (6, 'Europa', 5, 96, 93848);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 96, 93848);
INSERT INTO public.moon VALUES (8, 'Jupiter 5', 5, 96, 93848);
INSERT INTO public.moon VALUES (9, 'Jupiter 6', 5, 96, 93848);
INSERT INTO public.moon VALUES (10, 'Jupiter 7', 5, 96, 93848);
INSERT INTO public.moon VALUES (11, 'Jupiter 8', 5, 96, 93848);
INSERT INTO public.moon VALUES (12, 'Jupiter 9', 5, 96, 93848);
INSERT INTO public.moon VALUES (13, 'Jupiter 10', 5, 96, 93848);
INSERT INTO public.moon VALUES (14, 'Titan', 6, 243, 3448);
INSERT INTO public.moon VALUES (15, 'Enceladus', 6, 243, 7464);
INSERT INTO public.moon VALUES (16, 'Mimas', 6, 243, 7464);
INSERT INTO public.moon VALUES (17, 'Lapetus', 6, 243, 7464);
INSERT INTO public.moon VALUES (18, 'Hyperion', 6, 243, 7464);
INSERT INTO public.moon VALUES (19, 'Tau Ceti V a', 10, 1, 3848);
INSERT INTO public.moon VALUES (20, 'Tau Ceti V b', 10, 1, 7464);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 0, 343, 'small and hot', false, true);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 0, 333, 'rains lead', false, true);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 1, 234, 'green :3', true, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 2, 333, 'red :c', false, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 97, 2323, 'Big', false, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 274, 3973, 'Sega Saturn', false, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 63, 1209, 'my what', false, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 16, 9384, 'Big Blue', false, false);
INSERT INTO public.planet VALUES (9, 'Tau Ceti I', 2, 2, 3343, 'boring', false, false);
INSERT INTO public.planet VALUES (10, 'Tau Ceti V', 2, 1, 3834, 'Oh no', true, true);
INSERT INTO public.planet VALUES (11, 'Toliman', 7, 5, 33443, 'Better than the town, shotout to Toliman Jalisco', false, true);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri Beta', 7, 37, 924, 'it exists truly', false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 8, 4000);
INSERT INTO public.star VALUES (2, 'Tau Ceti', 3, 5, 3000);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 1, 3, 2000);
INSERT INTO public.star VALUES (5, 'Gliese 65', 3, 2, 34000);
INSERT INTO public.star VALUES (6, 'Beta Tri', 4, 5, 54000);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 1, 6, 500);


--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constelation_constelation_id_seq', 3, true);


--
-- Name: galaxy_idgalaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_idgalaxy_seq', 6, true);


--
-- Name: moon_idmoon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_idmoon_seq', 20, true);


--
-- Name: planet_idplanet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_idplanet_seq', 12, true);


--
-- Name: star_idstar_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_idstar_seq', 7, true);


--
-- Name: constelation constelation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_name_key UNIQUE (name);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

