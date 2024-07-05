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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer,
    size integer,
    composition character varying(255),
    discovered boolean NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_type character varying(50),
    description text,
    distance_from_earth numeric,
    has_life boolean NOT NULL
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
    name character varying(255) NOT NULL,
    planet_id integer,
    moon_type character varying(50),
    distance_from_planet numeric
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
    name character varying(255) NOT NULL,
    star_id integer,
    planet_type character varying(50),
    distance_from_star numeric,
    has_life boolean NOT NULL
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
    name character varying(255) NOT NULL,
    galaxy_id integer,
    star_type character varying(50),
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 6, 939, 'Rock/Ice', true);
INSERT INTO public.asteroid VALUES (2, 'Pallas', 7, 512, 'Rock', true);
INSERT INTO public.asteroid VALUES (3, 'Vesta', 8, 525, 'Rock', true);
INSERT INTO public.asteroid VALUES (4, 'Hygiea', 9, 431, 'Rock/Ice', true);
INSERT INTO public.asteroid VALUES (5, 'Eros', 10, 16, 'Rock', true);
INSERT INTO public.asteroid VALUES (6, 'Itokawa', 11, 0, 'Rock', true);
INSERT INTO public.asteroid VALUES (7, 'Bennu', 12, 1, 'Rock', true);
INSERT INTO public.asteroid VALUES (8, 'Ryugu', 13, 1, 'Rock', true);
INSERT INTO public.asteroid VALUES (9, 'Psyche', 14, 225, 'Metal', true);
INSERT INTO public.asteroid VALUES (10, 'Gaspra', 15, 18, 'Rock', true);
INSERT INTO public.asteroid VALUES (11, 'Ida', 16, 32, 'Rock', true);
INSERT INTO public.asteroid VALUES (12, 'Eugenia', 17, 214, 'Rock', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 'Our home galaxy', 0, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 'Closest spiral galaxy', 2537000, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 'Another nearby galaxy', 3000000, false);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'Irregular', 'A satellite galaxy of the Milky Way', 163000, false);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'Irregular', 'Another satellite galaxy of the Milky Way', 200000, false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Spiral', 'Famous interacting grand-design spiral galaxy', 23000000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (61, 'Moon', 6, 'Natural', 384400);
INSERT INTO public.moon VALUES (62, 'Phobos', 7, 'Natural', 9377);
INSERT INTO public.moon VALUES (63, 'Deimos', 7, 'Natural', 23463);
INSERT INTO public.moon VALUES (64, 'Europa', 8, 'Natural', 670900);
INSERT INTO public.moon VALUES (65, 'Ganymede', 8, 'Natural', 1070400);
INSERT INTO public.moon VALUES (66, 'Callisto', 8, 'Natural', 1882700);
INSERT INTO public.moon VALUES (67, 'Titan', 9, 'Natural', 1221870);
INSERT INTO public.moon VALUES (68, 'Enceladus', 9, 'Natural', 238042);
INSERT INTO public.moon VALUES (69, 'Mimas', 9, 'Natural', 185539);
INSERT INTO public.moon VALUES (70, 'Triton', 10, 'Natural', 3548000);
INSERT INTO public.moon VALUES (71, 'Miranda', 10, 'Natural', 129780);
INSERT INTO public.moon VALUES (72, 'Ariel', 10, 'Natural', 190930);
INSERT INTO public.moon VALUES (73, 'Umbriel', 10, 'Natural', 266000);
INSERT INTO public.moon VALUES (74, 'Titania', 10, 'Natural', 436270);
INSERT INTO public.moon VALUES (75, 'Oberon', 10, 'Natural', 583520);
INSERT INTO public.moon VALUES (76, 'Charon', 11, 'Natural', 19571);
INSERT INTO public.moon VALUES (77, 'Nix', 11, 'Natural', 48694);
INSERT INTO public.moon VALUES (78, 'Hydra', 11, 'Natural', 64738);
INSERT INTO public.moon VALUES (79, 'Kerberos', 11, 'Natural', 57783);
INSERT INTO public.moon VALUES (80, 'Styx', 11, 'Natural', 42900);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (6, 'Earth', 1, 'Terrestrial', 1, true);
INSERT INTO public.planet VALUES (7, 'Mars', 1, 'Terrestrial', 1.524, false);
INSERT INTO public.planet VALUES (8, 'Jupiter', 1, 'Gas Giant', 5.204, false);
INSERT INTO public.planet VALUES (9, 'Saturn', 1, 'Gas Giant', 9.582, false);
INSERT INTO public.planet VALUES (10, 'Proxima b', 4, 'Terrestrial', 0.05, false);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 2, 'Super-Earth', 0.85, false);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 3, 'Super-Earth', 0.15, false);
INSERT INTO public.planet VALUES (13, 'HD 189733b', 5, 'Gas Giant', 0.03, false);
INSERT INTO public.planet VALUES (14, '55 Cancri e', 6, 'Super-Earth', 0.015, false);
INSERT INTO public.planet VALUES (15, 'TOI 700 d', 2, 'Terrestrial', 0.14, false);
INSERT INTO public.planet VALUES (16, 'TRAPPIST-1d', 3, 'Terrestrial', 0.022, false);
INSERT INTO public.planet VALUES (17, 'TRAPPIST-1e', 3, 'Terrestrial', 0.029, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-type', 4600, true);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 2, 'Red supergiant', 8000, true);
INSERT INTO public.star VALUES (3, 'Rigel', 2, 'Blue supergiant', 8000, true);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', 1, 'G-type', 4600, true);
INSERT INTO public.star VALUES (5, 'Sirius', 1, 'A-type', 242, true);
INSERT INTO public.star VALUES (6, 'Vega', 1, 'A-type', 455, true);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 12, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 80, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

