PGDMP     1                	    z           proyecto    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16432    proyecto    DATABASE     d   CREATE DATABASE proyecto WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE proyecto;
                postgres    false            ?            1259    16445    c_sala_id_sala_seq    SEQUENCE     {   CREATE SEQUENCE public.c_sala_id_sala_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.c_sala_id_sala_seq;
       public          postgres    false            ?            1259    16433    c_sala    TABLE     N  CREATE TABLE public.c_sala (
    id_sala integer DEFAULT nextval('public.c_sala_id_sala_seq'::regclass) NOT NULL,
    numero_sala smallint NOT NULL,
    total_asientos integer NOT NULL,
    fecha_alta timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone NOT NULL,
    registro_activo boolean NOT NULL
);
    DROP TABLE public.c_sala;
       public         heap    postgres    false    211            ?            1259    16446    m_cine_id_cine_seq    SEQUENCE     {   CREATE SEQUENCE public.m_cine_id_cine_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.m_cine_id_cine_seq;
       public          postgres    false            ?            1259    16438    m_cine    TABLE        CREATE TABLE public.m_cine (
    id_cine integer DEFAULT nextval('public.m_cine_id_cine_seq'::regclass) NOT NULL,
    nombre text NOT NULL,
    fecha_alta timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone NOT NULL,
    registro_activo boolean NOT NULL
);
    DROP TABLE public.m_cine;
       public         heap    postgres    false    212            ?            1259    16460    r_cine_sala_id_cine_sala_seq    SEQUENCE     ?   CREATE SEQUENCE public.r_cine_sala_id_cine_sala_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.r_cine_sala_id_cine_sala_seq;
       public          postgres    false            ?            1259    16455    r_cine_sala    TABLE     V  CREATE TABLE public.r_cine_sala (
    id_cine_sala integer DEFAULT nextval('public.r_cine_sala_id_cine_sala_seq'::regclass) NOT NULL,
    id_cine integer NOT NULL,
    id_sala integer NOT NULL,
    fecha_alta timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone NOT NULL,
    registro_activo boolean NOT NULL
);
    DROP TABLE public.r_cine_sala;
       public         heap    postgres    false    214            ?          0    16433    c_sala 
   TABLE DATA           w   COPY public.c_sala (id_sala, numero_sala, total_asientos, fecha_alta, fecha_modificacion, registro_activo) FROM stdin;
    public          postgres    false    209   ?       ?          0    16438    m_cine 
   TABLE DATA           b   COPY public.m_cine (id_cine, nombre, fecha_alta, fecha_modificacion, registro_activo) FROM stdin;
    public          postgres    false    210   $                  0    16455    r_cine_sala 
   TABLE DATA           v   COPY public.r_cine_sala (id_cine_sala, id_cine, id_sala, fecha_alta, fecha_modificacion, registro_activo) FROM stdin;
    public          postgres    false    213   u                  0    0    c_sala_id_sala_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.c_sala_id_sala_seq', 4, true);
          public          postgres    false    211            	           0    0    m_cine_id_cine_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.m_cine_id_cine_seq', 4, true);
          public          postgres    false    212            
           0    0    r_cine_sala_id_cine_sala_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.r_cine_sala_id_cine_sala_seq', 5, true);
          public          postgres    false    214            j           2606    16437    c_sala c_sala_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.c_sala
    ADD CONSTRAINT c_sala_pkey PRIMARY KEY (id_sala);
 <   ALTER TABLE ONLY public.c_sala DROP CONSTRAINT c_sala_pkey;
       public            postgres    false    209            l           2606    16448    m_cine m_cine_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.m_cine
    ADD CONSTRAINT m_cine_pkey PRIMARY KEY (id_cine);
 <   ALTER TABLE ONLY public.m_cine DROP CONSTRAINT m_cine_pkey;
       public            postgres    false    210            n           2606    16459    r_cine_sala r_cine_sala_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.r_cine_sala
    ADD CONSTRAINT r_cine_sala_pkey PRIMARY KEY (id_cine_sala);
 F   ALTER TABLE ONLY public.r_cine_sala DROP CONSTRAINT r_cine_sala_pkey;
       public            postgres    false    213            o           2606    16478    r_cine_sala fk_cine_sala_cine    FK CONSTRAINT     ?   ALTER TABLE ONLY public.r_cine_sala
    ADD CONSTRAINT fk_cine_sala_cine FOREIGN KEY (id_cine) REFERENCES public.m_cine(id_cine) NOT VALID;
 G   ALTER TABLE ONLY public.r_cine_sala DROP CONSTRAINT fk_cine_sala_cine;
       public          postgres    false    3180    210    213            p           2606    16483    r_cine_sala fk_sala_cine_sala    FK CONSTRAINT     ?   ALTER TABLE ONLY public.r_cine_sala
    ADD CONSTRAINT fk_sala_cine_sala FOREIGN KEY (id_sala) REFERENCES public.c_sala(id_sala) NOT VALID;
 G   ALTER TABLE ONLY public.r_cine_sala DROP CONSTRAINT fk_sala_cine_sala;
       public          postgres    false    209    213    3178            ?   <   x?3???43?4200?5!+0?50	b?q?p?????<P??i%\1z\\\ ?C       ?   A   x?3?t??K-???,?4200?5!+0?50	b?q?p?????V?R6?b`	W? ?zY          +   x?3?4B#C]C R00?#]3????)g	W? 0?
;     