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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    is_spherical boolean,
    age_in_millions_of_year integer
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
    name character varying(60),
    description character varying(60),
    distance_from_earth numeric(4,1),
    planet_id integer NOT NULL
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
    name character varying(60),
    planet_type character varying(50),
    distance_frrom_earth integer,
    star_id integer NOT NULL
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
-- Name: sateliti; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sateliti (
    sateliti_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer
);


ALTER TABLE public.sateliti OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    has_life boolean,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL
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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Mlecni put', 'Nasa galaksija', true, 13000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Najbliža spiralna galaksija Mlečnom putu', true, 22000);
INSERT INTO public.galaxy VALUES (3, 'M87', 'Velika eliptična galaksija u sazvežđu Device', true, 6000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Galaksija sa karakterističnim izgledom sličnim šeširu', true, 13000);
INSERT INTO public.galaxy VALUES (5, 'Tucana II', 'Patuljasta sferoidna galaksija', false, 13000);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Galaksija u sazvežđu Device', true, 6000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth''s only natural satellite', 384.5, 5);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars''s innermost moon', 37.6, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars''s outermost moon', 34.6, 1);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Jupiter''s largest moon', 70.4, 2);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Second largest moon of Jupiter', 82.7, 2);
INSERT INTO public.moon VALUES (6, 'Io', 'Innermost of the Galilean moons of Jupiter', 21.6, 2);
INSERT INTO public.moon VALUES (7, 'Europa', 'Second Galilean moon of Jupiter', 70.9, 2);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn''s largest moon', 50.6, 3);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Second-largest moon of Saturn', 27.0, 3);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Third-largest moon of Saturn', 61.3, 3);
INSERT INTO public.moon VALUES (11, 'Dione', 'Fourth-largest moon of Saturn', 37.4, 3);
INSERT INTO public.moon VALUES (12, 'Triton', 'Neptune''s largest moon', 54.8, 4);
INSERT INTO public.moon VALUES (13, 'Proteus', 'Second-largest moon of Neptune', 17.6, 4);
INSERT INTO public.moon VALUES (14, 'Nereid', 'Third-largest moon of Neptune', 13.8, 4);
INSERT INTO public.moon VALUES (15, 'Charon', 'Pluto''s largest moon', 95.7, 9);
INSERT INTO public.moon VALUES (16, 'Styx', 'Pluto''s smallest moon', 26.5, 9);
INSERT INTO public.moon VALUES (17, 'Kerberos', 'Pluto''s moon', 78.6, 9);
INSERT INTO public.moon VALUES (18, 'Hydra', 'Pluto''s moon', 47.4, 9);
INSERT INTO public.moon VALUES (19, 'HIaka', 'Pluto''s moon', 56.0, 9);
INSERT INTO public.moon VALUES (20, 'Namaka', 'Pluto''s moon', 80.0, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', 'Terrestrial', 5460, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 'Gas giant', 58800, 1);
INSERT INTO public.planet VALUES (3, 'Saturn', 'Gas giant', 12000, 1);
INSERT INTO public.planet VALUES (4, 'Neptune', 'Ice giant', 43000, 1);
INSERT INTO public.planet VALUES (5, 'Earth', 'Terrestrial', 0, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 'Terrestrial', 91691, 1);
INSERT INTO public.planet VALUES (7, 'Venus', 'Terrestrial', 41400, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 'Ice giant', 29000, 1);
INSERT INTO public.planet VALUES (9, 'Pluton', 'Dwarf', 590000, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 'Terrestrial', 1406, 2);
INSERT INTO public.planet VALUES (11, 'TrES-2b', 'Hot Jupiter', 5890, 3);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 'Hot Jupiter', 1508, 4);


--
-- Data for Name: sateliti; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sateliti VALUES (1, 'Saturnus', 150);
INSERT INTO public.sateliti VALUES (2, 'Jupiter', 100);
INSERT INTO public.sateliti VALUES (3, 'Mars', 50);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sunce', true, 4600, 1);
INSERT INTO public.star VALUES (2, 'Sirius', false, 250, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', false, 6000, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', false, 8000, 2);
INSERT INTO public.star VALUES (5, 'Vega', false, 600, 3);
INSERT INTO public.star VALUES (6, 'Canopus', false, 8000, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


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
-- Name: sateliti sateliti_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sateliti
    ADD CONSTRAINT sateliti_name_key UNIQUE (name);


--
-- Name: sateliti sateliti_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sateliti
    ADD CONSTRAINT sateliti_pkey PRIMARY KEY (sateliti_id);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

