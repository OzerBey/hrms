PGDMP         /                y            aaa    13.2    13.2 :    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    25980    aaa    DATABASE     `   CREATE DATABASE aaa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE aaa;
                postgres    false            ?            1259    25981    candidate_users    TABLE       CREATE TABLE public.candidate_users (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    surname character varying(50) NOT NULL,
    national_identity character varying(11) NOT NULL,
    birth_year character varying(4) NOT NULL,
    verify boolean
);
 #   DROP TABLE public.candidate_users;
       public         heap    postgres    false            ?            1259    25984    candidate_users_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.candidate_users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.candidate_users_user_id_seq;
       public          postgres    false    200            ?           0    0    candidate_users_user_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public.candidate_users_user_id_seq OWNED BY public.candidate_users.id;
          public          postgres    false    201            ?            1259    25986    confirm_employer_users    TABLE     ?   CREATE TABLE public.confirm_employer_users (
    id integer NOT NULL,
    employer_id integer NOT NULL,
    confirmed_staff_user integer,
    confirmed_date timestamp with time zone,
    is_confirmed boolean
);
 *   DROP TABLE public.confirm_employer_users;
       public         heap    postgres    false            ?            1259    25989    confirm_employer_users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.confirm_employer_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.confirm_employer_users_id_seq;
       public          postgres    false    202            ?           0    0    confirm_employer_users_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.confirm_employer_users_id_seq OWNED BY public.confirm_employer_users.id;
          public          postgres    false    203            ?            1259    25991    employer_users    TABLE       CREATE TABLE public.employer_users (
    user_id integer NOT NULL,
    company_name character varying(100) NOT NULL,
    web_address character varying(50) NOT NULL,
    phone_number character varying(11) NOT NULL,
    verify boolean,
    user_confirm boolean
);
 "   DROP TABLE public.employer_users;
       public         heap    postgres    false            ?            1259    25994    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            ?            1259    25996    job_positions    TABLE     j   CREATE TABLE public.job_positions (
    id integer NOT NULL,
    "position" character varying NOT NULL
);
 !   DROP TABLE public.job_positions;
       public         heap    postgres    false            ?            1259    26002    job_positions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.job_positions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.job_positions_id_seq;
       public          postgres    false    206                        0    0    job_positions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.job_positions_id_seq OWNED BY public.job_positions.id;
          public          postgres    false    207            ?            1259    26004    staff_users    TABLE     ?   CREATE TABLE public.staff_users (
    user_id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    verify boolean
);
    DROP TABLE public.staff_users;
       public         heap    postgres    false            ?            1259    26010    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    mail character varying(50) NOT NULL,
    password character varying(16) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    26013    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    209                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    210            ?            1259    26015    users_verify    TABLE     ?   CREATE TABLE public.users_verify (
    id integer NOT NULL,
    verify_code character varying NOT NULL,
    is_confirmed boolean,
    created_date date,
    confirmed_date date,
    user_id integer NOT NULL
);
     DROP TABLE public.users_verify;
       public         heap    postgres    false            ?            1259    26021    verify_code_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.verify_code_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.verify_code_id_seq;
       public          postgres    false    211                       0    0    verify_code_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.verify_code_id_seq OWNED BY public.users_verify.id;
          public          postgres    false    212            G           2604    26023    candidate_users id    DEFAULT     }   ALTER TABLE ONLY public.candidate_users ALTER COLUMN id SET DEFAULT nextval('public.candidate_users_user_id_seq'::regclass);
 A   ALTER TABLE public.candidate_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            H           2604    26024    confirm_employer_users id    DEFAULT     ?   ALTER TABLE ONLY public.confirm_employer_users ALTER COLUMN id SET DEFAULT nextval('public.confirm_employer_users_id_seq'::regclass);
 H   ALTER TABLE public.confirm_employer_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            I           2604    26025    job_positions id    DEFAULT     t   ALTER TABLE ONLY public.job_positions ALTER COLUMN id SET DEFAULT nextval('public.job_positions_id_seq'::regclass);
 ?   ALTER TABLE public.job_positions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            J           2604    26026    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            K           2604    26027    users_verify id    DEFAULT     q   ALTER TABLE ONLY public.users_verify ALTER COLUMN id SET DEFAULT nextval('public.verify_code_id_seq'::regclass);
 >   ALTER TABLE public.users_verify ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            ?          0    25981    candidate_users 
   TABLE DATA           c   COPY public.candidate_users (id, name, surname, national_identity, birth_year, verify) FROM stdin;
    public          postgres    false    200   'F       ?          0    25986    confirm_employer_users 
   TABLE DATA           u   COPY public.confirm_employer_users (id, employer_id, confirmed_staff_user, confirmed_date, is_confirmed) FROM stdin;
    public          postgres    false    202   DF       ?          0    25991    employer_users 
   TABLE DATA           p   COPY public.employer_users (user_id, company_name, web_address, phone_number, verify, user_confirm) FROM stdin;
    public          postgres    false    204   aF       ?          0    25996    job_positions 
   TABLE DATA           7   COPY public.job_positions (id, "position") FROM stdin;
    public          postgres    false    206   ~F       ?          0    26004    staff_users 
   TABLE DATA           E   COPY public.staff_users (user_id, name, surname, verify) FROM stdin;
    public          postgres    false    208   ?F       ?          0    26010    users 
   TABLE DATA           3   COPY public.users (id, mail, password) FROM stdin;
    public          postgres    false    209   ?F       ?          0    26015    users_verify 
   TABLE DATA           l   COPY public.users_verify (id, verify_code, is_confirmed, created_date, confirmed_date, user_id) FROM stdin;
    public          postgres    false    211   ?F                  0    0    candidate_users_user_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.candidate_users_user_id_seq', 1, false);
          public          postgres    false    201                       0    0    confirm_employer_users_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.confirm_employer_users_id_seq', 1, false);
          public          postgres    false    203                       0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 23, true);
          public          postgres    false    205                       0    0    job_positions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.job_positions_id_seq', 10, true);
          public          postgres    false    207                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 25, true);
          public          postgres    false    210                       0    0    verify_code_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.verify_code_id_seq', 1, false);
          public          postgres    false    212            M           2606    26029 $   candidate_users candidate_users_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.candidate_users
    ADD CONSTRAINT candidate_users_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.candidate_users DROP CONSTRAINT candidate_users_pkey;
       public            postgres    false    200            Q           2606    26031 2   confirm_employer_users confirm_employer_users_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.confirm_employer_users
    ADD CONSTRAINT confirm_employer_users_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.confirm_employer_users DROP CONSTRAINT confirm_employer_users_pkey;
       public            postgres    false    202            S           2606    26033 "   employer_users employer_users_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.employer_users
    ADD CONSTRAINT employer_users_pkey PRIMARY KEY (user_id);
 L   ALTER TABLE ONLY public.employer_users DROP CONSTRAINT employer_users_pkey;
       public            postgres    false    204            U           2606    26035     job_positions job_positions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.job_positions
    ADD CONSTRAINT job_positions_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.job_positions DROP CONSTRAINT job_positions_pkey;
       public            postgres    false    206            Y           2606    26037    staff_users staff_users_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.staff_users
    ADD CONSTRAINT staff_users_pkey PRIMARY KEY (user_id);
 F   ALTER TABLE ONLY public.staff_users DROP CONSTRAINT staff_users_pkey;
       public            postgres    false    208            O           2606    26039 "   candidate_users uk_identity_number 
   CONSTRAINT     j   ALTER TABLE ONLY public.candidate_users
    ADD CONSTRAINT uk_identity_number UNIQUE (national_identity);
 L   ALTER TABLE ONLY public.candidate_users DROP CONSTRAINT uk_identity_number;
       public            postgres    false    200            [           2606    26041    users uk_mail 
   CONSTRAINT     H   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_mail UNIQUE (mail);
 7   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_mail;
       public            postgres    false    209            W           2606    26043    job_positions uk_position 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_positions
    ADD CONSTRAINT uk_position UNIQUE ("position");
 C   ALTER TABLE ONLY public.job_positions DROP CONSTRAINT uk_position;
       public            postgres    false    206            _           2606    26045    users_verify uk_verify_code 
   CONSTRAINT     ]   ALTER TABLE ONLY public.users_verify
    ADD CONSTRAINT uk_verify_code UNIQUE (verify_code);
 E   ALTER TABLE ONLY public.users_verify DROP CONSTRAINT uk_verify_code;
       public            postgres    false    211            ]           2606    26047    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    209            a           2606    26049    users_verify verify_code_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.users_verify
    ADD CONSTRAINT verify_code_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.users_verify DROP CONSTRAINT verify_code_pkey;
       public            postgres    false    211            b           2606    26050 ,   candidate_users candidate_users_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.candidate_users
    ADD CONSTRAINT candidate_users_user_id_fkey FOREIGN KEY (id) REFERENCES public.users(id) NOT VALID;
 V   ALTER TABLE ONLY public.candidate_users DROP CONSTRAINT candidate_users_user_id_fkey;
       public          postgres    false    200    209    2909            c           2606    26055 G   confirm_employer_users confirm_employer_users_confirmed_staff_user_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.confirm_employer_users
    ADD CONSTRAINT confirm_employer_users_confirmed_staff_user_fkey FOREIGN KEY (confirmed_staff_user) REFERENCES public.staff_users(user_id) NOT VALID;
 q   ALTER TABLE ONLY public.confirm_employer_users DROP CONSTRAINT confirm_employer_users_confirmed_staff_user_fkey;
       public          postgres    false    2905    208    202            d           2606    26060 >   confirm_employer_users confirm_employer_users_employer_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.confirm_employer_users
    ADD CONSTRAINT confirm_employer_users_employer_id_fkey FOREIGN KEY (employer_id) REFERENCES public.employer_users(user_id) NOT VALID;
 h   ALTER TABLE ONLY public.confirm_employer_users DROP CONSTRAINT confirm_employer_users_employer_id_fkey;
       public          postgres    false    202    2899    204            e           2606    26065 5   confirm_employer_users confirm_employer_users_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.confirm_employer_users
    ADD CONSTRAINT confirm_employer_users_id_fkey FOREIGN KEY (id) REFERENCES public.users_verify(id) NOT VALID;
 _   ALTER TABLE ONLY public.confirm_employer_users DROP CONSTRAINT confirm_employer_users_id_fkey;
       public          postgres    false    211    202    2913            f           2606    26070 *   employer_users employer_users_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employer_users
    ADD CONSTRAINT employer_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 T   ALTER TABLE ONLY public.employer_users DROP CONSTRAINT employer_users_user_id_fkey;
       public          postgres    false    204    209    2909            g           2606    26075 $   staff_users staff_users_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.staff_users
    ADD CONSTRAINT staff_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 N   ALTER TABLE ONLY public.staff_users DROP CONSTRAINT staff_users_user_id_fkey;
       public          postgres    false    209    2909    208            h           2606    26080     users_verify user_id_users_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_verify
    ADD CONSTRAINT user_id_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 J   ALTER TABLE ONLY public.users_verify DROP CONSTRAINT user_id_users_id_fk;
       public          postgres    false    211    2909    209            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     