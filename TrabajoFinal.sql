PGDMP     +        
        
    w            TrabajoFinal    12.0    12.0 5    J           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            K           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            L           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            M           1262    16646    TrabajoFinal    DATABASE     �   CREATE DATABASE "TrabajoFinal" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Argentina.1252' LC_CTYPE = 'Spanish_Argentina.1252';
    DROP DATABASE "TrabajoFinal";
                postgres    false            �            1259    16647    cargos    TABLE     �   CREATE TABLE public.cargos (
    id_cargo integer NOT NULL,
    codigo integer NOT NULL,
    descripcion character varying NOT NULL
);
    DROP TABLE public.cargos;
       public         heap    postgres    false            �            1259    16653    Cargo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Cargo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Cargo_id_seq";
       public          postgres    false    202            N           0    0    Cargo_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public."Cargo_id_seq" OWNED BY public.cargos.id_cargo;
          public          postgres    false    203            �            1259    16655    alumnos    TABLE     8  CREATE TABLE public.alumnos (
    id_alumno integer NOT NULL,
    nombre character varying NOT NULL,
    apellido character varying NOT NULL,
    documento integer NOT NULL,
    fecha_nacimiento date NOT NULL,
    sexo character varying NOT NULL,
    matricula integer NOT NULL,
    id_grado integer NOT NULL
);
    DROP TABLE public.alumnos;
       public         heap    postgres    false            �            1259    16661    alumnos_id_alumno_seq    SEQUENCE     �   CREATE SEQUENCE public.alumnos_id_alumno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.alumnos_id_alumno_seq;
       public          postgres    false    204            O           0    0    alumnos_id_alumno_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.alumnos_id_alumno_seq OWNED BY public.alumnos.id_alumno;
          public          postgres    false    205            �            1259    16663    docentegrado    TABLE     �   CREATE TABLE public.docentegrado (
    id_docentegrado integer NOT NULL,
    id_grado integer NOT NULL,
    id_docente integer NOT NULL
);
     DROP TABLE public.docentegrado;
       public         heap    postgres    false            �            1259    16666    docenteGrado_id_seq    SEQUENCE     �   CREATE SEQUENCE public."docenteGrado_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."docenteGrado_id_seq";
       public          postgres    false    206            P           0    0    docenteGrado_id_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public."docenteGrado_id_seq" OWNED BY public.docentegrado.id_docentegrado;
          public          postgres    false    207            �            1259    16668    docentes    TABLE     7  CREATE TABLE public.docentes (
    id_docente integer NOT NULL,
    nombre character varying NOT NULL,
    apellido character varying NOT NULL,
    documento integer NOT NULL,
    fecha_nacimiento date NOT NULL,
    sexo character varying NOT NULL,
    legajo integer NOT NULL,
    id_cargo integer NOT NULL
);
    DROP TABLE public.docentes;
       public         heap    postgres    false            �            1259    16674    docente_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.docente_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.docente_id_seq1;
       public          postgres    false    208            Q           0    0    docente_id_seq1    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.docente_id_seq1 OWNED BY public.docentes.id_docente;
          public          postgres    false    209            �            1259    16676    grados    TABLE     �   CREATE TABLE public.grados (
    id_grado integer NOT NULL,
    numero integer NOT NULL,
    seccion character varying NOT NULL,
    id_turno integer NOT NULL
);
    DROP TABLE public.grados;
       public         heap    postgres    false            �            1259    16682    grado_id_seq    SEQUENCE     �   CREATE SEQUENCE public.grado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.grado_id_seq;
       public          postgres    false    210            R           0    0    grado_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.grado_id_seq OWNED BY public.grados.id_grado;
          public          postgres    false    211            �            1259    16684    turnos    TABLE     �   CREATE TABLE public.turnos (
    id_turno integer NOT NULL,
    codigo integer NOT NULL,
    descripcion character varying NOT NULL
);
    DROP TABLE public.turnos;
       public         heap    postgres    false            �            1259    16690    turno_id_seq    SEQUENCE     �   CREATE SEQUENCE public.turno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.turno_id_seq;
       public          postgres    false    212            S           0    0    turno_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.turno_id_seq OWNED BY public.turnos.id_turno;
          public          postgres    false    213            �
           2604    16692    alumnos id_alumno    DEFAULT     v   ALTER TABLE ONLY public.alumnos ALTER COLUMN id_alumno SET DEFAULT nextval('public.alumnos_id_alumno_seq'::regclass);
 @   ALTER TABLE public.alumnos ALTER COLUMN id_alumno DROP DEFAULT;
       public          postgres    false    205    204            �
           2604    16693    cargos id_cargo    DEFAULT     m   ALTER TABLE ONLY public.cargos ALTER COLUMN id_cargo SET DEFAULT nextval('public."Cargo_id_seq"'::regclass);
 >   ALTER TABLE public.cargos ALTER COLUMN id_cargo DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    16694    docentegrado id_docentegrado    DEFAULT     �   ALTER TABLE ONLY public.docentegrado ALTER COLUMN id_docentegrado SET DEFAULT nextval('public."docenteGrado_id_seq"'::regclass);
 K   ALTER TABLE public.docentegrado ALTER COLUMN id_docentegrado DROP DEFAULT;
       public          postgres    false    207    206            �
           2604    16695    docentes id_docente    DEFAULT     r   ALTER TABLE ONLY public.docentes ALTER COLUMN id_docente SET DEFAULT nextval('public.docente_id_seq1'::regclass);
 B   ALTER TABLE public.docentes ALTER COLUMN id_docente DROP DEFAULT;
       public          postgres    false    209    208            �
           2604    16696    grados id_grado    DEFAULT     k   ALTER TABLE ONLY public.grados ALTER COLUMN id_grado SET DEFAULT nextval('public.grado_id_seq'::regclass);
 >   ALTER TABLE public.grados ALTER COLUMN id_grado DROP DEFAULT;
       public          postgres    false    211    210            �
           2604    16697    turnos id_turno    DEFAULT     k   ALTER TABLE ONLY public.turnos ALTER COLUMN id_turno SET DEFAULT nextval('public.turno_id_seq'::regclass);
 >   ALTER TABLE public.turnos ALTER COLUMN id_turno DROP DEFAULT;
       public          postgres    false    213    212            >          0    16655    alumnos 
   TABLE DATA           v   COPY public.alumnos (id_alumno, nombre, apellido, documento, fecha_nacimiento, sexo, matricula, id_grado) FROM stdin;
    public          postgres    false    204   �:       <          0    16647    cargos 
   TABLE DATA           ?   COPY public.cargos (id_cargo, codigo, descripcion) FROM stdin;
    public          postgres    false    202   x;       @          0    16663    docentegrado 
   TABLE DATA           M   COPY public.docentegrado (id_docentegrado, id_grado, id_docente) FROM stdin;
    public          postgres    false    206   �;       B          0    16668    docentes 
   TABLE DATA           u   COPY public.docentes (id_docente, nombre, apellido, documento, fecha_nacimiento, sexo, legajo, id_cargo) FROM stdin;
    public          postgres    false    208   �;       D          0    16676    grados 
   TABLE DATA           E   COPY public.grados (id_grado, numero, seccion, id_turno) FROM stdin;
    public          postgres    false    210   r<       F          0    16684    turnos 
   TABLE DATA           ?   COPY public.turnos (id_turno, codigo, descripcion) FROM stdin;
    public          postgres    false    212   �<       T           0    0    Cargo_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Cargo_id_seq"', 58, true);
          public          postgres    false    203            U           0    0    alumnos_id_alumno_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.alumnos_id_alumno_seq', 9, true);
          public          postgres    false    205            V           0    0    docenteGrado_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."docenteGrado_id_seq"', 41, true);
          public          postgres    false    207            W           0    0    docente_id_seq1    SEQUENCE SET     >   SELECT pg_catalog.setval('public.docente_id_seq1', 15, true);
          public          postgres    false    209            X           0    0    grado_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.grado_id_seq', 32, true);
          public          postgres    false    211            Y           0    0    turno_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.turno_id_seq', 27, true);
          public          postgres    false    213            �
           2606    16699    alumnos pk_alumno 
   CONSTRAINT     V   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT pk_alumno PRIMARY KEY (id_alumno);
 ;   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT pk_alumno;
       public            postgres    false    204            �
           2606    16701    cargos pk_cargo 
   CONSTRAINT     S   ALTER TABLE ONLY public.cargos
    ADD CONSTRAINT pk_cargo PRIMARY KEY (id_cargo);
 9   ALTER TABLE ONLY public.cargos DROP CONSTRAINT pk_cargo;
       public            postgres    false    202            �
           2606    16703    docentes pk_docente 
   CONSTRAINT     Y   ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT pk_docente PRIMARY KEY (id_docente);
 =   ALTER TABLE ONLY public.docentes DROP CONSTRAINT pk_docente;
       public            postgres    false    208            �
           2606    16705    docentegrado pk_docentegrado 
   CONSTRAINT     g   ALTER TABLE ONLY public.docentegrado
    ADD CONSTRAINT pk_docentegrado PRIMARY KEY (id_docentegrado);
 F   ALTER TABLE ONLY public.docentegrado DROP CONSTRAINT pk_docentegrado;
       public            postgres    false    206            �
           2606    16707    grados pk_grado 
   CONSTRAINT     S   ALTER TABLE ONLY public.grados
    ADD CONSTRAINT pk_grado PRIMARY KEY (id_grado);
 9   ALTER TABLE ONLY public.grados DROP CONSTRAINT pk_grado;
       public            postgres    false    210            �
           2606    16709    turnos turno_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.turnos
    ADD CONSTRAINT turno_pkey PRIMARY KEY (id_turno);
 ;   ALTER TABLE ONLY public.turnos DROP CONSTRAINT turno_pkey;
       public            postgres    false    212            �
           2606    16711    turnos turnos_codigo_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.turnos
    ADD CONSTRAINT turnos_codigo_key UNIQUE (codigo);
 B   ALTER TABLE ONLY public.turnos DROP CONSTRAINT turnos_codigo_key;
       public            postgres    false    212            �
           2606    16713    alumnos u_alumno 
   CONSTRAINT     d   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT u_alumno UNIQUE (documento) INCLUDE (matricula);
 :   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT u_alumno;
       public            postgres    false    204    204            �
           2606    16715    cargos u_cargo 
   CONSTRAINT     \   ALTER TABLE ONLY public.cargos
    ADD CONSTRAINT u_cargo UNIQUE (codigo) INCLUDE (codigo);
 8   ALTER TABLE ONLY public.cargos DROP CONSTRAINT u_cargo;
       public            postgres    false    202    202            �
           1259    16716    fki_fkGradoTurno    INDEX     I   CREATE INDEX "fki_fkGradoTurno" ON public.grados USING btree (id_turno);
 &   DROP INDEX public."fki_fkGradoTurno";
       public            postgres    false    210            �
           2606    16717    alumnos fk_alumno_grado    FK CONSTRAINT     ~   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT fk_alumno_grado FOREIGN KEY (id_grado) REFERENCES public.grados(id_grado);
 A   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT fk_alumno_grado;
       public          postgres    false    210    2742    204            �
           2606    16722 $   docentegrado fk_docentegrado_docente    FK CONSTRAINT     �   ALTER TABLE ONLY public.docentegrado
    ADD CONSTRAINT fk_docentegrado_docente FOREIGN KEY (id_docente) REFERENCES public.docentes(id_docente);
 N   ALTER TABLE ONLY public.docentegrado DROP CONSTRAINT fk_docentegrado_docente;
       public          postgres    false    208    206    2739            �
           2606    16727    grados fk_grado_turno    FK CONSTRAINT     |   ALTER TABLE ONLY public.grados
    ADD CONSTRAINT fk_grado_turno FOREIGN KEY (id_turno) REFERENCES public.turnos(id_turno);
 ?   ALTER TABLE ONLY public.grados DROP CONSTRAINT fk_grado_turno;
       public          postgres    false    212    210    2744            >   }   x�E�;
�0 �Y���$p�vH����FC�����oR
Y<�G��*\�m�gI�����mV����(0�֭��s�ޭ��b��򿱓p��=z�]����sآc9�'Gё?��_D�F�(�      <   7   x�3�444��,)�I,�2�422�.-�I�+I�2�466��2�2��b���� Ak�      @      x������ � �      B   �   x�]�1! ��/�]j�kl��fO��p�����V�v&�!8�Q�g�NuY��Ʊw!:��F���^�K+y����v����,�#��1X�QD��w�Q��u��S.�W���U��6r"j2��P�R���,�      D   F   x�3�440��K,)-J�I-�4�2�q�&���&�d&'���BƜ�E%@F\&@�	gp~r&TG� ���      F   #   x�3�4��M<�11/�ˈӈ3$�(%�+F��� i��     