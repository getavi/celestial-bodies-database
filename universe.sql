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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    is_potentially_dangerous boolean NOT NULL,
    is_observable_simple_view boolean,
    tail_length numeric
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    number_stars integer,
    description text,
    has_black_holes boolean,
    has_life boolean NOT NULL,
    stellar_density numeric
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    planet_id integer NOT NULL,
    has_atmosphere boolean,
    has_subsurface_water boolean,
    surface_gravity numeric
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    star_id integer NOT NULL,
    has_atmosphere boolean,
    is_habitable boolean,
    surface_temperature numeric
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    galaxy_id integer NOT NULL,
    is_visible_earth boolean,
    in_supernova_phase boolean,
    solar_luminosity numeric
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', 1600, 'Cometa periódico visible cada 76 años.', false, true, 24.0);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', 2500, 'Uno de los cometas más brillantes en la historia.', false, true, 50.0);
INSERT INTO public.comet VALUES (3, 'Swift-Tuttle', 4300, 'Cometa que origina la lluvia de meteoros Perseidas.', true, true, 26.0);
INSERT INTO public.comet VALUES (4, 'Shoemaker-Levy 9', 4500, 'Se fragmentó y chocó contra Júpiter en 1994.', false, false, 20.0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 1000000000, 'Nuestra galaxia hogar', true, true, 0.004);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 1000000000, 'Próxima colisión con la Vía Láctea', true, false, 0.002);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 8000, 400000000, 'Pequeña galaxia en el Grupo Local', false, false, 0.0018);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 5000, 300000000, 'Hermosa galaxia espiral con un remolino gravitacional', true, true, 0.0021);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 9000, 800000000, 'Con un brillante núcleo en forma de sombrero', true, false, 0.0032);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 7000, 500000000, 'Galaxia con una banda oscura de polvo cósmico', true, true, 0.0025);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Fobos', 4500, 'Luna principal de Marte, con forma irregular.', 4, false, false, 0.0057);
INSERT INTO public.moon VALUES (22, 'Deimos', 4500, 'Luna más pequeña de Marte.', 4, false, false, 0.003);
INSERT INTO public.moon VALUES (23, 'Luna', 4500, 'Único satélite natural de la Tierra.', 3, false, false, 1.62);
INSERT INTO public.moon VALUES (24, 'Europa', 4500, 'Luna de Júpiter con océanos bajo su superficie.', 5, true, true, 1.31);
INSERT INTO public.moon VALUES (25, 'Ganimedes', 4500, 'La luna más grande del sistema solar.', 5, true, true, 1.43);
INSERT INTO public.moon VALUES (26, 'Ío', 4500, 'Luna volcánicamente activa de Júpiter.', 5, true, false, 1.79);
INSERT INTO public.moon VALUES (27, 'Calisto', 4500, 'Luna con una de las superficies más antiguas.', 5, false, true, 1.24);
INSERT INTO public.moon VALUES (28, 'Titán', 4500, 'Luna de Saturno con ríos y lagos de metano.', 6, true, true, 1.35);
INSERT INTO public.moon VALUES (29, 'Encélado', 4500, 'Luna helada con géiseres de agua líquida.', 6, true, true, 0.113);
INSERT INTO public.moon VALUES (30, 'Mimas', 4500, 'Luna de Saturno con un gran cráter.', 6, false, false, 0.064);
INSERT INTO public.moon VALUES (31, 'Tritón', 4500, 'Luna de Neptuno con actividad geológica.', 7, true, true, 0.779);
INSERT INTO public.moon VALUES (32, 'Nereida', 4500, 'Luna con una órbita altamente excéntrica.', 7, false, false, 0.079);
INSERT INTO public.moon VALUES (33, 'Charon', 4500, 'Luna más grande de Plutón.', 8, false, true, 0.288);
INSERT INTO public.moon VALUES (34, 'Betel-Luna', 3000, 'Luna en el sistema de Betelgeuse.', 9, true, false, 0.98);
INSERT INTO public.moon VALUES (35, 'Andro-Moon 1', 2500, 'Luna con rastros de hielo en su superficie.', 10, false, true, 0.45);
INSERT INTO public.moon VALUES (36, 'Andro-Moon 2', 2400, 'Luna rocosa con actividad sísmica.', 10, false, false, 0.68);
INSERT INTO public.moon VALUES (37, 'Triangulum-L1', 2200, 'Luna más grande del planeta Triangulum Terra.', 11, true, false, 0.89);
INSERT INTO public.moon VALUES (38, 'M51-S1', 1500, 'Luna con lagos de amoníaco en M51-B1.', 12, false, true, 0.56);
INSERT INTO public.moon VALUES (39, 'Sombrero-L1', 3500, 'Luna más cercana a Sombrero X.', 12, false, false, 0.72);
INSERT INTO public.moon VALUES (40, 'Sombrero-L2', 3400, 'Luna con volcanes de hielo.', 12, true, true, 0.63);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, 'El planeta más cercano al Sol, con temperaturas extremas.', 1, false, false, 430.0);
INSERT INTO public.planet VALUES (2, 'Venus', 4500, 'Tiene una atmósfera densa y es el más caliente del sistema solar.', 1, true, false, 465.0);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, 'Nuestro hogar, el único planeta conocido con vida.', 1, true, true, 15.0);
INSERT INTO public.planet VALUES (4, 'Mars', 4500, 'Conocido como el planeta rojo, posible candidato para colonización.', 1, true, false, -63.0);
INSERT INTO public.planet VALUES (5, 'Betel-1', 2000, 'Planeta en la órbita de Betelgeuse, con una atmósfera densa.', 2, true, false, 1200.0);
INSERT INTO public.planet VALUES (6, 'Betel-2', 1900, 'Un gigante gaseoso con tormentas eléctricas constantes.', 2, true, false, 950.0);
INSERT INTO public.planet VALUES (7, 'Andromeda Prime', 3000, 'El planeta más grande en su sistema, con océanos de metano.', 3, true, false, -180.0);
INSERT INTO public.planet VALUES (8, 'Andromeda Secundus', 2800, 'Rocoso y sin atmósfera, con un núcleo activo.', 3, false, false, 400.0);
INSERT INTO public.planet VALUES (9, 'Triangulum Terra', 2500, 'Exoplaneta con condiciones similares a la Tierra.', 4, true, true, 22.0);
INSERT INTO public.planet VALUES (10, 'M51-B1', 1000, 'En la galaxia Whirlpool, con una atmósfera de neón.', 5, true, false, 320.0);
INSERT INTO public.planet VALUES (11, 'Sombrero X', 5000, 'Un exoplaneta helado con vientos supersónicos.', 6, true, false, -200.0);
INSERT INTO public.planet VALUES (12, 'Sombrero Prime', 4500, 'Planeta rocoso con rastros de agua en el subsuelo.', 6, true, false, 50.0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 'Nuestra estrella madre', 1, true, false, 1.0);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 8000, 'Gigante roja en la constelación de Orión', 1, true, true, 120000.0);
INSERT INTO public.star VALUES (3, 'Andromeda Star', 5000, 'Una estrella brillante en Andrómeda', 2, false, false, 3.5);
INSERT INTO public.star VALUES (4, 'Triangulum A', 6000, 'Una estrella joven en la galaxia Triangulum', 3, false, false, 2.8);
INSERT INTO public.star VALUES (5, 'M51-Blue', 2000, 'En la galaxia Whirlpool, de tonalidad azulada', 4, false, false, 8.0);
INSERT INTO public.star VALUES (6, 'Sombrero Light', 7000, 'Brillante estrella cerca del núcleo de Sombrero', 5, false, false, 10.5);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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

