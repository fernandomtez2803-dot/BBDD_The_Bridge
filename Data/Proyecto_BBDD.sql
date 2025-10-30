--
-- PostgreSQL database dump
--

\restrict PlaiE7qAwDOa9K4uZnvav77fq8xBb6xidjnvOCblz0axfzgm3YElKtDNoSZJuSr

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-30 16:50:53

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 217 (class 1259 OID 16405)
-- Name: Alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Alumnos" (
    "ID_Alumno" bigint NOT NULL,
    "Nombre" character varying(50) NOT NULL,
    email character varying(100) NOT NULL
);


ALTER TABLE public."Alumnos" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16531)
-- Name: Alumnos_ID_Alumno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Alumnos" ALTER COLUMN "ID_Alumno" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Alumnos_ID_Alumno_seq"
    START WITH 100001
    INCREMENT BY 1
    MINVALUE 100001
    MAXVALUE 199999
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 16499)
-- Name: Asignación; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Asignación" (
    "ID_Asignación" bigint NOT NULL,
    "ID_Profesor" bigint NOT NULL,
    "ID_Clase" bigint NOT NULL,
    "Rol" character varying(2) NOT NULL
);


ALTER TABLE public."Asignación" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16536)
-- Name: Asignación_ID_Asignación_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Asignación" ALTER COLUMN "ID_Asignación" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Asignación_ID_Asignación_seq"
    START WITH 900001
    INCREMENT BY 1
    MINVALUE 900001
    MAXVALUE 999999
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16420)
-- Name: Campus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Campus" (
    "ID_Campus" bigint NOT NULL,
    "Ciudad" character varying(50) NOT NULL
);


ALTER TABLE public."Campus" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16537)
-- Name: Campus_ID_Campus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Campus" ALTER COLUMN "ID_Campus" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Campus_ID_Campus_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 16461)
-- Name: Clase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Clase" (
    "ID_Clase" bigint NOT NULL,
    "ID_Vertical" bigint NOT NULL,
    "ID_Campus" bigint NOT NULL,
    "ID_Promo" bigint NOT NULL,
    "ID_Inicio" bigint NOT NULL
);


ALTER TABLE public."Clase" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16534)
-- Name: Clase_ID_Clase_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Clase" ALTER COLUMN "ID_Clase" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Clase_ID_Clase_seq"
    START WITH 500001
    INCREMENT BY 1
    MINVALUE 500001
    MAXVALUE 599999
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 16514)
-- Name: Expediente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Expediente" (
    "ID_Matricula" bigint NOT NULL,
    "HLF" character varying(10),
    "EDA" character varying(10),
    "BBDD" character varying(10),
    "ML" character varying(10),
    "Deployment" character varying(10),
    "Web Dev" character varying(10),
    "Front End" character varying(10),
    "Back End" character varying(10),
    "React" character varying(10),
    "Full Stack" character varying(10)
);


ALTER TABLE public."Expediente" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16437)
-- Name: Fecha_inicio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Fecha_inicio" (
    "ID_Inicio" bigint NOT NULL,
    "Fecha_inicio" date NOT NULL
);


ALTER TABLE public."Fecha_inicio" OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16540)
-- Name: Fecha_inicio_ID_Inicio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Fecha_inicio" ALTER COLUMN "ID_Inicio" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Fecha_inicio_ID_Inicio_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 16410)
-- Name: Matrículas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Matrículas" (
    "ID_Matricula" bigint NOT NULL,
    "ID_Alumno" bigint NOT NULL,
    "ID_Clase" bigint NOT NULL
);


ALTER TABLE public."Matrículas" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16535)
-- Name: Matrículas_ID_Matricula_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Matrículas" ALTER COLUMN "ID_Matricula" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Matrículas_ID_Matricula_seq"
    START WITH 700001
    INCREMENT BY 1
    MINVALUE 700001
    MAXVALUE 799999
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 16491)
-- Name: Profesores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Profesores" (
    "ID_Profesor" bigint NOT NULL,
    "Nombre" character varying(100) NOT NULL,
    "Modalidad" character varying(20) NOT NULL
);


ALTER TABLE public."Profesores" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16532)
-- Name: Profesores_ID_Profesor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Profesores" ALTER COLUMN "ID_Profesor" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Profesores_ID_Profesor_seq"
    START WITH 300001
    INCREMENT BY 1
    MINVALUE 300001
    MAXVALUE 399999
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 16432)
-- Name: Promoción; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Promoción" (
    "ID_Promo" bigint NOT NULL,
    "Promo" character varying(20) NOT NULL
);


ALTER TABLE public."Promoción" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16539)
-- Name: Promoción_ID_Promo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Promoción" ALTER COLUMN "ID_Promo" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Promoción_ID_Promo_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16456)
-- Name: Vertical; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Vertical" (
    "ID_Vertical" bigint NOT NULL,
    "Vertical" character varying(50) NOT NULL
);


ALTER TABLE public."Vertical" OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16538)
-- Name: Vertical_ID_Vertical_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Vertical" ALTER COLUMN "ID_Vertical" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Vertical_ID_Vertical_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4960 (class 0 OID 16405)
-- Dependencies: 217
-- Data for Name: Alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Alumnos" ("ID_Alumno", "Nombre", email) FROM stdin;
1	Pepe	pepe@gmail.com
100001	Pepe Pepez	pepe.pepez@gmail.com
100002	Pepe Pepez Pepez	pepe.pepez.pepez@gmail.com
\.


--
-- TOC entry 4968 (class 0 OID 16499)
-- Dependencies: 225
-- Data for Name: Asignación; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Asignación" ("ID_Asignación", "ID_Profesor", "ID_Clase", "Rol") FROM stdin;
\.


--
-- TOC entry 4962 (class 0 OID 16420)
-- Dependencies: 219
-- Data for Name: Campus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Campus" ("ID_Campus", "Ciudad") FROM stdin;
1	Madrid
2	Valencia
\.


--
-- TOC entry 4966 (class 0 OID 16461)
-- Dependencies: 223
-- Data for Name: Clase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Clase" ("ID_Clase", "ID_Vertical", "ID_Campus", "ID_Promo", "ID_Inicio") FROM stdin;
500001	1	1	1	1
500002	1	1	2	2
500003	2	1	1	1
500004	2	2	2	2
\.


--
-- TOC entry 4969 (class 0 OID 16514)
-- Dependencies: 226
-- Data for Name: Expediente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Expediente" ("ID_Matricula", "HLF", "EDA", "BBDD", "ML", "Deployment", "Web Dev", "Front End", "Back End", "React", "Full Stack") FROM stdin;
\.


--
-- TOC entry 4964 (class 0 OID 16437)
-- Dependencies: 221
-- Data for Name: Fecha_inicio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Fecha_inicio" ("ID_Inicio", "Fecha_inicio") FROM stdin;
1	2023-09-18
2	2024-02-12
\.


--
-- TOC entry 4961 (class 0 OID 16410)
-- Dependencies: 218
-- Data for Name: Matrículas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Matrículas" ("ID_Matricula", "ID_Alumno", "ID_Clase") FROM stdin;
\.


--
-- TOC entry 4967 (class 0 OID 16491)
-- Dependencies: 224
-- Data for Name: Profesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Profesores" ("ID_Profesor", "Nombre", "Modalidad") FROM stdin;
\.


--
-- TOC entry 4963 (class 0 OID 16432)
-- Dependencies: 220
-- Data for Name: Promoción; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Promoción" ("ID_Promo", "Promo") FROM stdin;
1	Septiembre
2	Febrero
\.


--
-- TOC entry 4965 (class 0 OID 16456)
-- Dependencies: 222
-- Data for Name: Vertical; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Vertical" ("ID_Vertical", "Vertical") FROM stdin;
1	Data Science
2	Full Stack
\.


--
-- TOC entry 4984 (class 0 OID 0)
-- Dependencies: 227
-- Name: Alumnos_ID_Alumno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Alumnos_ID_Alumno_seq"', 100002, true);


--
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 231
-- Name: Asignación_ID_Asignación_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Asignación_ID_Asignación_seq"', 900001, false);


--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 232
-- Name: Campus_ID_Campus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Campus_ID_Campus_seq"', 2, true);


--
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 229
-- Name: Clase_ID_Clase_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Clase_ID_Clase_seq"', 500004, true);


--
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 235
-- Name: Fecha_inicio_ID_Inicio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Fecha_inicio_ID_Inicio_seq"', 2, true);


--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 230
-- Name: Matrículas_ID_Matricula_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Matrículas_ID_Matricula_seq"', 700001, false);


--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 228
-- Name: Profesores_ID_Profesor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Profesores_ID_Profesor_seq"', 300001, false);


--
-- TOC entry 4991 (class 0 OID 0)
-- Dependencies: 234
-- Name: Promoción_ID_Promo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Promoción_ID_Promo_seq"', 2, true);


--
-- TOC entry 4992 (class 0 OID 0)
-- Dependencies: 233
-- Name: Vertical_ID_Vertical_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Vertical_ID_Vertical_seq"', 2, true);


--
-- TOC entry 4787 (class 2606 OID 16409)
-- Name: Alumnos Alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_pkey" PRIMARY KEY ("ID_Alumno");


--
-- TOC entry 4803 (class 2606 OID 16503)
-- Name: Asignación Asignación_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Asignación"
    ADD CONSTRAINT "Asignación_pkey" PRIMARY KEY ("ID_Asignación");


--
-- TOC entry 4791 (class 2606 OID 16424)
-- Name: Campus Campus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Campus"
    ADD CONSTRAINT "Campus_pkey" PRIMARY KEY ("ID_Campus");


--
-- TOC entry 4799 (class 2606 OID 16465)
-- Name: Clase Clase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Clase"
    ADD CONSTRAINT "Clase_pkey" PRIMARY KEY ("ID_Clase");


--
-- TOC entry 4805 (class 2606 OID 16518)
-- Name: Expediente Expediente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Expediente"
    ADD CONSTRAINT "Expediente_pkey" PRIMARY KEY ("ID_Matricula");


--
-- TOC entry 4795 (class 2606 OID 16441)
-- Name: Fecha_inicio Fecha_inicio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fecha_inicio"
    ADD CONSTRAINT "Fecha_inicio_pkey" PRIMARY KEY ("ID_Inicio");


--
-- TOC entry 4789 (class 2606 OID 16414)
-- Name: Matrículas Matrículas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Matrículas"
    ADD CONSTRAINT "Matrículas_pkey" PRIMARY KEY ("ID_Matricula");


--
-- TOC entry 4801 (class 2606 OID 16495)
-- Name: Profesores Profesores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profesores"
    ADD CONSTRAINT "Profesores_pkey" PRIMARY KEY ("ID_Profesor");


--
-- TOC entry 4793 (class 2606 OID 16436)
-- Name: Promoción Promoción_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Promoción"
    ADD CONSTRAINT "Promoción_pkey" PRIMARY KEY ("ID_Promo");


--
-- TOC entry 4797 (class 2606 OID 16460)
-- Name: Vertical Vertical_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Vertical"
    ADD CONSTRAINT "Vertical_pkey" PRIMARY KEY ("ID_Vertical");


--
-- TOC entry 4812 (class 2606 OID 16509)
-- Name: Asignación Asignación_ID_Clase_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Asignación"
    ADD CONSTRAINT "Asignación_ID_Clase_fkey" FOREIGN KEY ("ID_Clase") REFERENCES public."Clase"("ID_Clase");


--
-- TOC entry 4813 (class 2606 OID 16504)
-- Name: Asignación Asignación_ID_Profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Asignación"
    ADD CONSTRAINT "Asignación_ID_Profesor_fkey" FOREIGN KEY ("ID_Profesor") REFERENCES public."Profesores"("ID_Profesor");


--
-- TOC entry 4814 (class 2606 OID 16519)
-- Name: Expediente Expediente_ID_Matricula_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Expediente"
    ADD CONSTRAINT "Expediente_ID_Matricula_fkey" FOREIGN KEY ("ID_Matricula") REFERENCES public."Matrículas"("ID_Matricula");


--
-- TOC entry 4808 (class 2606 OID 16481)
-- Name: Clase FK1 Vertical; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Clase"
    ADD CONSTRAINT "FK1 Vertical" FOREIGN KEY ("ID_Vertical") REFERENCES public."Vertical"("ID_Vertical") NOT VALID;


--
-- TOC entry 4993 (class 0 OID 0)
-- Dependencies: 4808
-- Name: CONSTRAINT "FK1 Vertical" ON "Clase"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT "FK1 Vertical" ON public."Clase" IS 'Clave foránea que une la tabla Clase con la tabla Vertical a través del ID de la vertical';


--
-- TOC entry 4809 (class 2606 OID 16466)
-- Name: Clase FK2 Campus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Clase"
    ADD CONSTRAINT "FK2 Campus" FOREIGN KEY ("ID_Campus") REFERENCES public."Campus"("ID_Campus");


--
-- TOC entry 4994 (class 0 OID 0)
-- Dependencies: 4809
-- Name: CONSTRAINT "FK2 Campus" ON "Clase"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT "FK2 Campus" ON public."Clase" IS 'Clave foránea que une la tabla Clase con la tabla Campus a través del ID del campus';


--
-- TOC entry 4810 (class 2606 OID 16471)
-- Name: Clase FK3 Promoción; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Clase"
    ADD CONSTRAINT "FK3 Promoción" FOREIGN KEY ("ID_Promo") REFERENCES public."Promoción"("ID_Promo");


--
-- TOC entry 4995 (class 0 OID 0)
-- Dependencies: 4810
-- Name: CONSTRAINT "FK3 Promoción" ON "Clase"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT "FK3 Promoción" ON public."Clase" IS 'Clave foránea que une la tabla Clase con la tabla Promoción a través del ID de la promoción';


--
-- TOC entry 4811 (class 2606 OID 16476)
-- Name: Clase FK4 Fecha de inico; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Clase"
    ADD CONSTRAINT "FK4 Fecha de inico" FOREIGN KEY ("ID_Inicio") REFERENCES public."Fecha_inicio"("ID_Inicio");


--
-- TOC entry 4996 (class 0 OID 0)
-- Dependencies: 4811
-- Name: CONSTRAINT "FK4 Fecha de inico" ON "Clase"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT "FK4 Fecha de inico" ON public."Clase" IS 'Clave foránea que une la tabla Clase con la tabla Fecha_inicio a través del ID de la fecha de inicio';


--
-- TOC entry 4806 (class 2606 OID 16415)
-- Name: Matrículas Matrículas_ID_Alumno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Matrículas"
    ADD CONSTRAINT "Matrículas_ID_Alumno_fkey" FOREIGN KEY ("ID_Alumno") REFERENCES public."Alumnos"("ID_Alumno");


--
-- TOC entry 4807 (class 2606 OID 16486)
-- Name: Matrículas Matrículas_ID_Clase_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Matrículas"
    ADD CONSTRAINT "Matrículas_ID_Clase_fkey" FOREIGN KEY ("ID_Clase") REFERENCES public."Clase"("ID_Clase") NOT VALID;


-- Completed on 2025-10-30 16:50:54

--
-- PostgreSQL database dump complete
--

\unrestrict PlaiE7qAwDOa9K4uZnvav77fq8xBb6xidjnvOCblz0axfzgm3YElKtDNoSZJuSr

