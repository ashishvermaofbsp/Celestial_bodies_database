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
    name character varying(50) NOT NULL,
    description text,
    ages_in_millions_of_years numeric(5,2),
    galaxy_type character varying(20),
    distance_from_earth_in_light_years integer,
    num_of_star integer
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
    name character varying(50) NOT NULL,
    description text,
    planet_id integer,
    has_water boolean,
    has_life boolean
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    planet_type character varying(20),
    has_life boolean,
    is_spherical boolean,
    star_id integer
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description character varying(30),
    star_id integer
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    ages_in_millions_of_years numeric(5,2),
    galaxy_id integer,
    number_of_planets integer,
    size_in_billion_kms integer
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our Galaxy', 567.90, 'Spiral', 2660, 1000000);
INSERT INTO public.galaxy VALUES (2, 'Alcyoneus', 'Collection of stars, dust and planets', 123.56, 'Peculiar', 234567, 5000000);
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 'Nearest Galaxy', 367.90, 'eliptical', 1660, 4000000);
INSERT INTO public.galaxy VALUES (4, 'galaxy_4', 'Collection of stars, dust and planets', 523.56, 'Peculiar', 234567, 5000000);
INSERT INTO public.galaxy VALUES (5, 'galaxy_5', 'collections of stars, dust and planets', 345.00, 'spiral', 98789, 300000);
INSERT INTO public.galaxy VALUES (6, 'galaxy_6', 'collections of stars and planets', 898.44, 'eliptical', 33432, 99999);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'CHANDA MAMA', 'Earth Moon', 1, false, false);
INSERT INTO public.moon VALUES (2, 'venus_moon_1', 'VENUS Moon', 3, false, false);
INSERT INTO public.moon VALUES (3, 'venus_moon_2', 'VENUS MOON', 3, false, false);
INSERT INTO public.moon VALUES (4, 'mars_moon_1', 'MARS Moon', 4, false, false);
INSERT INTO public.moon VALUES (5, 'mars__moon_2', 'MARS  MOON', 4, false, false);
INSERT INTO public.moon VALUES (6, 'Jupiter_moon_1', 'JUPITER Moon', 5, true, false);
INSERT INTO public.moon VALUES (7, 'Jupiter_moon_2', 'JUPITER  MOON', 5, false, false);
INSERT INTO public.moon VALUES (8, 'Jupiter_moon_3', 'JUPITER Moon', 5, true, false);
INSERT INTO public.moon VALUES (9, 'Jupiter_moon_4', 'JUPITER  MOON', 5, false, false);
INSERT INTO public.moon VALUES (10, 'Jupiter_moon_5', 'JUPITER Moon', 5, true, false);
INSERT INTO public.moon VALUES (11, 'Jupiter_moon_6', 'JUPITER  MOON', 5, false, false);
INSERT INTO public.moon VALUES (12, 'Saturn_moon_1', 'SATURN Moon', 6, true, false);
INSERT INTO public.moon VALUES (13, 'Saturn_moon_2', 'Saturn MOON', 6, false, false);
INSERT INTO public.moon VALUES (14, 'Saturn_moon_3', 'SATURN Moon', 6, true, false);
INSERT INTO public.moon VALUES (15, 'Saturn_moon_4', 'Saturn MOON', 6, false, false);
INSERT INTO public.moon VALUES (16, 'Saturn_moon_5', 'SATURN Moon', 6, true, false);
INSERT INTO public.moon VALUES (17, 'Saturn_moon_6', 'Saturn MOON', 6, false, false);
INSERT INTO public.moon VALUES (18, 'Saturn_moon_7', 'SATURN Moon', 6, true, false);
INSERT INTO public.moon VALUES (19, 'Saturn_moon_8', 'Saturn MOON', 6, false, false);
INSERT INTO public.moon VALUES (20, 'Uranus_moon_1', 'URANUS Moon', 7, true, false);
INSERT INTO public.moon VALUES (21, 'Uranus_moon_2', 'URANUS MOON', 7, false, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Our Planet', 'Living', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 'First Planet', 'Living', false, true, 1);
INSERT INTO public.planet VALUES (3, 'VENUS', 'Second Planet', 'Non-Living', false, true, 1);
INSERT INTO public.planet VALUES (4, 'MARS', 'third planet', 'Non-Living', false, true, 1);
INSERT INTO public.planet VALUES (5, 'JUPITER', 'Fifth Planet', 'Non-Living', false, true, 1);
INSERT INTO public.planet VALUES (6, 'SATURN', 'Sixth planet', 'Non-Living', false, true, 1);
INSERT INTO public.planet VALUES (7, 'URANUS', 'SEVENTH Planet', 'Non-Living', false, true, 1);
INSERT INTO public.planet VALUES (8, 'NEPTUNE', 'Eight planet', 'Non-Living', false, true, 1);
INSERT INTO public.planet VALUES (9, 'PLATU', 'Ninth Planet', 'Non-Living', false, true, 1);
INSERT INTO public.planet VALUES (10, 'planet_1', 'First Planet', 'Living', true, true, 2);
INSERT INTO public.planet VALUES (11, 'star_3_planet_1', 'First Planet', 'Living', true, true, 3);
INSERT INTO public.planet VALUES (12, 'star_4_planet_1', 'First Planet', 'Living', true, true, 4);
INSERT INTO public.planet VALUES (13, 'star_5_planet_1', 'First Planet', 'Living', true, true, 5);
INSERT INTO public.planet VALUES (14, 'star_6_planet_1', 'First Planet', 'Living', true, true, 6);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'SUN SOLAR SYSTEM', 'OUR SOLAR SYSTEM', 1);
INSERT INTO public.solar_system VALUES (2, 'SUN 2 SOLAR SYSTEM', 'Neighbour SOLAR SYTEM', 3);
INSERT INTO public.solar_system VALUES (3, 'SUN 3 SOLAR SYSTEM', 'Distant Solar System', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', 'OUR SOLAR SYSTEM', 134.56, 1, 9, 2222);
INSERT INTO public.star VALUES (2, 'star_2', 'Solar Neighbour', 345.78, 1, 10, 99888);
INSERT INTO public.star VALUES (3, 'star_3', 'Solar system', 123.56, 2, 20, 98998);
INSERT INTO public.star VALUES (4, 'star_4', 'solar system', 678.78, 3, 8, 9032);
INSERT INTO public.star VALUES (5, 'star_5', 'solar system', 345.89, 4, 10, 8233);
INSERT INTO public.star VALUES (6, 'star_6', 'solar system 2', 234.67, 5, 23, 1234);
INSERT INTO public.star VALUES (7, 'star_7', 'Big Solar System', 456.90, 6, 30, 897);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: solar_system solar_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_name_key UNIQUE (name);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


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
-- Name: solar_system solar_system_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

