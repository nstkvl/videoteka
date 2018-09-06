--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 10.4

-- Started on 2018-09-05 20:12:23

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2178 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 191 (class 1259 OID 16447)
-- Name: Adress_studio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Adress_studio" (
    "ID_adress" integer NOT NULL,
    kraina "char",
    misto "char",
    vul "char",
    dim "char",
    post_ind "char"
);


ALTER TABLE public."Adress_studio" OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16445)
-- Name: Adress_studio_ID_adress_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Adress_studio_ID_adress_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Adress_studio_ID_adress_seq" OWNER TO postgres;

--
-- TOC entry 2179 (class 0 OID 0)
-- Dependencies: 190
-- Name: Adress_studio_ID_adress_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Adress_studio_ID_adress_seq" OWNED BY public."Adress_studio"."ID_adress";


--
-- TOC entry 195 (class 1259 OID 16605)
-- Name: Film; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Film" (
    zhanr "char",
    triv integer,
    id_stud integer NOT NULL,
    rik_vyd integer,
    id_rezh integer NOT NULL,
    nazva_film character(1),
    budg double precision,
    "ID_film" integer NOT NULL,
    "data post" date
);


ALTER TABLE public."Film" OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 16603)
-- Name: Film_ID_film_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Film_ID_film_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Film_ID_film_seq" OWNER TO postgres;

--
-- TOC entry 2180 (class 0 OID 0)
-- Dependencies: 194
-- Name: Film_ID_film_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Film_ID_film_seq" OWNED BY public."Film"."ID_film";


--
-- TOC entry 193 (class 1259 OID 16601)
-- Name: Film_id_rezh_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Film_id_rezh_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Film_id_rezh_seq" OWNER TO postgres;

--
-- TOC entry 2181 (class 0 OID 0)
-- Dependencies: 193
-- Name: Film_id_rezh_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Film_id_rezh_seq" OWNED BY public."Film".id_rezh;


--
-- TOC entry 192 (class 1259 OID 16599)
-- Name: Film_id_stud_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Film_id_stud_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Film_id_stud_seq" OWNER TO postgres;

--
-- TOC entry 2182 (class 0 OID 0)
-- Dependencies: 192
-- Name: Film_id_stud_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Film_id_stud_seq" OWNED BY public."Film".id_stud;


--
-- TOC entry 186 (class 1259 OID 16420)
-- Name: Rezhyser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rezhyser" (
    "ID_rezh" integer NOT NULL,
    prizv "char",
    imya "char",
    rik_nar "char",
    rik_smer "char",
    gromad "char"
);


ALTER TABLE public."Rezhyser" OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16418)
-- Name: Rezhyser_ID_rezh_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rezhyser_ID_rezh_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rezhyser_ID_rezh_seq" OWNER TO postgres;

--
-- TOC entry 2183 (class 0 OID 0)
-- Dependencies: 185
-- Name: Rezhyser_ID_rezh_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rezhyser_ID_rezh_seq" OWNED BY public."Rezhyser"."ID_rezh";


--
-- TOC entry 189 (class 1259 OID 16438)
-- Name: Studio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Studio" (
    "ID_stud" integer NOT NULL,
    nazva_stud "char",
    id_adress integer NOT NULL,
    kont_os "char"
);


ALTER TABLE public."Studio" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16434)
-- Name: Studio_ID_stud_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Studio_ID_stud_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Studio_ID_stud_seq" OWNER TO postgres;

--
-- TOC entry 2184 (class 0 OID 0)
-- Dependencies: 187
-- Name: Studio_ID_stud_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Studio_ID_stud_seq" OWNED BY public."Studio"."ID_stud";


--
-- TOC entry 188 (class 1259 OID 16436)
-- Name: Studio_id_adress_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Studio_id_adress_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Studio_id_adress_seq" OWNER TO postgres;

--
-- TOC entry 2185 (class 0 OID 0)
-- Dependencies: 188
-- Name: Studio_id_adress_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Studio_id_adress_seq" OWNED BY public."Studio".id_adress;


--
-- TOC entry 2028 (class 2604 OID 16450)
-- Name: Adress_studio ID_adress; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Adress_studio" ALTER COLUMN "ID_adress" SET DEFAULT nextval('public."Adress_studio_ID_adress_seq"'::regclass);


--
-- TOC entry 2029 (class 2604 OID 16608)
-- Name: Film id_stud; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Film" ALTER COLUMN id_stud SET DEFAULT nextval('public."Film_id_stud_seq"'::regclass);


--
-- TOC entry 2030 (class 2604 OID 16609)
-- Name: Film id_rezh; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Film" ALTER COLUMN id_rezh SET DEFAULT nextval('public."Film_id_rezh_seq"'::regclass);


--
-- TOC entry 2031 (class 2604 OID 16610)
-- Name: Film ID_film; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Film" ALTER COLUMN "ID_film" SET DEFAULT nextval('public."Film_ID_film_seq"'::regclass);


--
-- TOC entry 2025 (class 2604 OID 16423)
-- Name: Rezhyser ID_rezh; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rezhyser" ALTER COLUMN "ID_rezh" SET DEFAULT nextval('public."Rezhyser_ID_rezh_seq"'::regclass);


--
-- TOC entry 2026 (class 2604 OID 16441)
-- Name: Studio ID_stud; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Studio" ALTER COLUMN "ID_stud" SET DEFAULT nextval('public."Studio_ID_stud_seq"'::regclass);


--
-- TOC entry 2027 (class 2604 OID 16442)
-- Name: Studio id_adress; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Studio" ALTER COLUMN id_adress SET DEFAULT nextval('public."Studio_id_adress_seq"'::regclass);


--
-- TOC entry 2166 (class 0 OID 16447)
-- Dependencies: 191
-- Data for Name: Adress_studio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Adress_studio" ("ID_adress", kraina, misto, vul, dim, post_ind) FROM stdin;
1	r	e	b	t	6
\.


--
-- TOC entry 2170 (class 0 OID 16605)
-- Dependencies: 195
-- Data for Name: Film; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Film" (zhanr, triv, id_stud, rik_vyd, id_rezh, nazva_film, budg, "ID_film", "data post") FROM stdin;
r	2	1	34	1	c	56	2	1990-08-08
\.


--
-- TOC entry 2161 (class 0 OID 16420)
-- Dependencies: 186
-- Data for Name: Rezhyser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rezhyser" ("ID_rezh", prizv, imya, rik_nar, rik_smer, gromad) FROM stdin;
1	q	e	4	5	i
\.


--
-- TOC entry 2164 (class 0 OID 16438)
-- Dependencies: 189
-- Data for Name: Studio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Studio" ("ID_stud", nazva_stud, id_adress, kont_os) FROM stdin;
1	x	1	c
2	v	1	n
\.


--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 190
-- Name: Adress_studio_ID_adress_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Adress_studio_ID_adress_seq"', 1, false);


--
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 194
-- Name: Film_ID_film_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Film_ID_film_seq"', 1, false);


--
-- TOC entry 2188 (class 0 OID 0)
-- Dependencies: 193
-- Name: Film_id_rezh_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Film_id_rezh_seq"', 1, false);


--
-- TOC entry 2189 (class 0 OID 0)
-- Dependencies: 192
-- Name: Film_id_stud_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Film_id_stud_seq"', 1, false);


--
-- TOC entry 2190 (class 0 OID 0)
-- Dependencies: 185
-- Name: Rezhyser_ID_rezh_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rezhyser_ID_rezh_seq"', 1, false);


--
-- TOC entry 2191 (class 0 OID 0)
-- Dependencies: 187
-- Name: Studio_ID_stud_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Studio_ID_stud_seq"', 1, false);


--
-- TOC entry 2192 (class 0 OID 0)
-- Dependencies: 188
-- Name: Studio_id_adress_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Studio_id_adress_seq"', 1, false);


--
-- TOC entry 2037 (class 2606 OID 16452)
-- Name: Adress_studio Adress_studio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Adress_studio"
    ADD CONSTRAINT "Adress_studio_pkey" PRIMARY KEY ("ID_adress");


--
-- TOC entry 2039 (class 2606 OID 16612)
-- Name: Film Film_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Film"
    ADD CONSTRAINT "Film_pkey" PRIMARY KEY ("ID_film");


--
-- TOC entry 2033 (class 2606 OID 16425)
-- Name: Rezhyser Rezhyser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rezhyser"
    ADD CONSTRAINT "Rezhyser_pkey" PRIMARY KEY ("ID_rezh");


--
-- TOC entry 2035 (class 2606 OID 16444)
-- Name: Studio Studio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Studio"
    ADD CONSTRAINT "Studio_pkey" PRIMARY KEY ("ID_stud");


--
-- TOC entry 2040 (class 2606 OID 16623)
-- Name: Studio id_adress; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Studio"
    ADD CONSTRAINT id_adress FOREIGN KEY (id_adress) REFERENCES public."Adress_studio"("ID_adress");


--
-- TOC entry 2042 (class 2606 OID 16618)
-- Name: Film id_rezh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Film"
    ADD CONSTRAINT id_rezh FOREIGN KEY (id_rezh) REFERENCES public."Rezhyser"("ID_rezh");


--
-- TOC entry 2041 (class 2606 OID 16613)
-- Name: Film id_stud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Film"
    ADD CONSTRAINT id_stud FOREIGN KEY (id_stud) REFERENCES public."Studio"("ID_stud");


-- Completed on 2018-09-05 20:12:23

--
-- PostgreSQL database dump complete
--

