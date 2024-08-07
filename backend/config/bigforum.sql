PGDMP      !                |            bigforum    16.2    16.2 5    (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            +           1262    16461    bigforum    DATABASE     �   CREATE DATABASE bigforum WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE bigforum;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            ,           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16640    Post    TABLE     �   CREATE TABLE public."Post" (
    title character varying(255),
    content character varying(255),
    image character varying(500),
    "UserId" integer DEFAULT 1 NOT NULL
);
    DROP TABLE public."Post";
       public         heap    postgres    false    4            �            1259    16658    Reservations    TABLE     �  CREATE TABLE public."Reservations" (
    id integer NOT NULL,
    "tanggalAwal" timestamp with time zone NOT NULL,
    "tanggalAkhir" timestamp with time zone NOT NULL,
    lantai character varying(255) NOT NULL,
    "namaKegiatan" character varying(255) NOT NULL,
    pic character varying(255) NOT NULL,
    "waktuAwal" character varying(255) NOT NULL,
    "waktuAkhir" character varying(255) NOT NULL,
    "fasilitasRuangan" character varying(255)[] NOT NULL,
    "layoutRuangan" character varying(255) NOT NULL,
    "keteranganTambahan" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."Reservations";
       public         heap    postgres    false    4            �            1259    16657    Reservations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Reservations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Reservations_id_seq";
       public          postgres    false    4    225            -           0    0    Reservations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Reservations_id_seq" OWNED BY public."Reservations".id;
          public          postgres    false    224            �            1259    16463    User    TABLE     �   CREATE TABLE public."User" (
    userid integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public."User";
       public         heap    postgres    false    4            �            1259    16619    todaysArticle    TABLE     �   CREATE TABLE public."todaysArticle" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL
);
 #   DROP TABLE public."todaysArticle";
       public         heap    postgres    false    4            �            1259    16618    todaysArticle_id_seq    SEQUENCE     �   CREATE SEQUENCE public."todaysArticle_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."todaysArticle_id_seq";
       public          postgres    false    4    222            .           0    0    todaysArticle_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."todaysArticle_id_seq" OWNED BY public."todaysArticle".id;
          public          postgres    false    221            �            1259    16610    todaysMoment    TABLE     �   CREATE TABLE public."todaysMoment" (
    id integer NOT NULL,
    content text NOT NULL,
    title character varying(255) NOT NULL
);
 "   DROP TABLE public."todaysMoment";
       public         heap    postgres    false    4            �            1259    16609    todaysMoment_id_seq    SEQUENCE     �   CREATE SEQUENCE public."todaysMoment_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."todaysMoment_id_seq";
       public          postgres    false    4    220            /           0    0    todaysMoment_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."todaysMoment_id_seq" OWNED BY public."todaysMoment".id;
          public          postgres    false    219            �            1259    16603    upComingEvent    TABLE     �   CREATE TABLE public."upComingEvent" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    date timestamp with time zone NOT NULL
);
 #   DROP TABLE public."upComingEvent";
       public         heap    postgres    false    4            �            1259    16602    upComingEvent_id_seq    SEQUENCE     �   CREATE SEQUENCE public."upComingEvent_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."upComingEvent_id_seq";
       public          postgres    false    218    4            0           0    0    upComingEvent_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."upComingEvent_id_seq" OWNED BY public."upComingEvent".id;
          public          postgres    false    217            �            1259    16462    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public          postgres    false    4    216            1           0    0    users_userid_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.users_userid_seq OWNED BY public."User".userid;
          public          postgres    false    215            m           2604    16661    Reservations id    DEFAULT     v   ALTER TABLE ONLY public."Reservations" ALTER COLUMN id SET DEFAULT nextval('public."Reservations_id_seq"'::regclass);
 @   ALTER TABLE public."Reservations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            h           2604    16466    User userid    DEFAULT     m   ALTER TABLE ONLY public."User" ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 <   ALTER TABLE public."User" ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    216    215    216            k           2604    16622    todaysArticle id    DEFAULT     x   ALTER TABLE ONLY public."todaysArticle" ALTER COLUMN id SET DEFAULT nextval('public."todaysArticle_id_seq"'::regclass);
 A   ALTER TABLE public."todaysArticle" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            j           2604    16613    todaysMoment id    DEFAULT     v   ALTER TABLE ONLY public."todaysMoment" ALTER COLUMN id SET DEFAULT nextval('public."todaysMoment_id_seq"'::regclass);
 @   ALTER TABLE public."todaysMoment" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            i           2604    16606    upComingEvent id    DEFAULT     x   ALTER TABLE ONLY public."upComingEvent" ALTER COLUMN id SET DEFAULT nextval('public."upComingEvent_id_seq"'::regclass);
 A   ALTER TABLE public."upComingEvent" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            #          0    16640    Post 
   TABLE DATA           A   COPY public."Post" (title, content, image, "UserId") FROM stdin;
    public          postgres    false    223   E<       %          0    16658    Reservations 
   TABLE DATA           �   COPY public."Reservations" (id, "tanggalAwal", "tanggalAkhir", lantai, "namaKegiatan", pic, "waktuAwal", "waktuAkhir", "fasilitasRuangan", "layoutRuangan", "keteranganTambahan", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   �<                 0    16463    User 
   TABLE DATA           C   COPY public."User" (userid, username, email, password) FROM stdin;
    public          postgres    false    216   =       "          0    16619    todaysArticle 
   TABLE DATA           =   COPY public."todaysArticle" (id, title, content) FROM stdin;
    public          postgres    false    222   `=                  0    16610    todaysMoment 
   TABLE DATA           <   COPY public."todaysMoment" (id, content, title) FROM stdin;
    public          postgres    false    220   �=                 0    16603    upComingEvent 
   TABLE DATA           :   COPY public."upComingEvent" (id, title, date) FROM stdin;
    public          postgres    false    218   f>       2           0    0    Reservations_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Reservations_id_seq"', 1, true);
          public          postgres    false    224            3           0    0    todaysArticle_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."todaysArticle_id_seq"', 3, true);
          public          postgres    false    221            4           0    0    todaysMoment_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."todaysMoment_id_seq"', 5, true);
          public          postgres    false    219            5           0    0    upComingEvent_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."upComingEvent_id_seq"', 3, true);
          public          postgres    false    217            6           0    0    users_userid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.users_userid_seq', 3, true);
          public          postgres    false    215            �           2606    16665    Reservations Reservations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Reservations"
    ADD CONSTRAINT "Reservations_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Reservations" DROP CONSTRAINT "Reservations_pkey";
       public            postgres    false    225            o           2606    16767    User User_email_key 
   CONSTRAINT     S   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_email_key" UNIQUE (email);
 A   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_email_key";
       public            postgres    false    216            q           2606    16769    User User_email_key1 
   CONSTRAINT     T   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_email_key1" UNIQUE (email);
 B   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_email_key1";
       public            postgres    false    216            s           2606    16771    User User_email_key2 
   CONSTRAINT     T   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_email_key2" UNIQUE (email);
 B   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_email_key2";
       public            postgres    false    216            u           2606    16773    User User_email_key3 
   CONSTRAINT     T   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_email_key3" UNIQUE (email);
 B   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_email_key3";
       public            postgres    false    216            w           2606    16775    User User_email_key4 
   CONSTRAINT     T   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_email_key4" UNIQUE (email);
 B   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_email_key4";
       public            postgres    false    216            y           2606    16777    User User_email_key5 
   CONSTRAINT     T   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_email_key5" UNIQUE (email);
 B   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_email_key5";
       public            postgres    false    216            {           2606    16779    User User_email_key6 
   CONSTRAINT     T   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_email_key6" UNIQUE (email);
 B   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_email_key6";
       public            postgres    false    216            }           2606    16781    User User_email_key7 
   CONSTRAINT     T   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_email_key7" UNIQUE (email);
 B   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_email_key7";
       public            postgres    false    216                       2606    16783    User User_email_key8 
   CONSTRAINT     T   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_email_key8" UNIQUE (email);
 B   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_email_key8";
       public            postgres    false    216            �           2606    16626     todaysArticle todaysArticle_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."todaysArticle"
    ADD CONSTRAINT "todaysArticle_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."todaysArticle" DROP CONSTRAINT "todaysArticle_pkey";
       public            postgres    false    222            �           2606    16617    todaysMoment todaysMoment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."todaysMoment"
    ADD CONSTRAINT "todaysMoment_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."todaysMoment" DROP CONSTRAINT "todaysMoment_pkey";
       public            postgres    false    220            �           2606    16608     upComingEvent upComingEvent_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."upComingEvent"
    ADD CONSTRAINT "upComingEvent_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."upComingEvent" DROP CONSTRAINT "upComingEvent_pkey";
       public            postgres    false    218            �           2606    16647    Post user_posting_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT user_posting_pkey PRIMARY KEY ("UserId");
 B   ALTER TABLE ONLY public."Post" DROP CONSTRAINT user_posting_pkey;
       public            postgres    false    223            �           2606    16468    User users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 ;   ALTER TABLE ONLY public."User" DROP CONSTRAINT users_pkey;
       public            postgres    false    216            #   3   x�N�I�M,QHL��tJ�N-�JTpI�KO�Sp�L,���4����� @J�      %   {   x�3�4202�50�52P00�#ms��!��)gPbAb��SiNb^b�W~F��K~*�!T���QP�_��]�_����Y����X�Z��Y�]Z��P��Q
2f����!'�
s��qqq ��,k         =   x�3�LL��̃�鹉�9z���>�1gqIbZZ|nbzb^:�a#)542615����� :}s      "   ;   x�3�t,*�L�IU0�t��+I�+Q�OSH�	�q�UaSa��eWa�M��W�  � �          �   x���=�@��z�s��P���v6SL؁e��$�^�0������e6��3DG�9FO��Ҏ��'P�i�(-4����"l��䉀e��0����8$�;�1B�P	�ū����r@���֩�{�#��:۽)�tأ@���y�ޣ�I�$?tO/Fg�e��Z�{6Z�         G   x�3�t-K�+Q0�4202�50�54U04�20 "ms.#�#�##C�c�c�s]#$1z\\\ ��0     