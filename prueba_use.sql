PGDMP     	                    x         
   prueba_use    9.6.18    11.2 ~    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    25061 
   prueba_use    DATABASE     �   CREATE DATABASE prueba_use WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE prueba_use;
             postgres    false            �            1259    25093 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    25091    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    192             	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    191            �            1259    25103    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    25101    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    194            	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    193            �            1259    25085    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    25083    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    190            	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    189            �            1259    25240    carrito_carrito    TABLE     h   CREATE TABLE public.carrito_carrito (
    id integer NOT NULL,
    total bigint,
    user_id integer
);
 #   DROP TABLE public.carrito_carrito;
       public         postgres    false            �            1259    25238    carrito_carrito_id_seq    SEQUENCE        CREATE SEQUENCE public.carrito_carrito_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.carrito_carrito_id_seq;
       public       postgres    false    207            	           0    0    carrito_carrito_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.carrito_carrito_id_seq OWNED BY public.carrito_carrito.id;
            public       postgres    false    206            �            1259    25248    carrito_itemcarrito    TABLE     �   CREATE TABLE public.carrito_itemcarrito (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    subtotal bigint NOT NULL,
    carrito_id integer NOT NULL,
    producto_id integer NOT NULL
);
 '   DROP TABLE public.carrito_itemcarrito;
       public         postgres    false            �            1259    25246    carrito_itemcarrito_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carrito_itemcarrito_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.carrito_itemcarrito_id_seq;
       public       postgres    false    209            	           0    0    carrito_itemcarrito_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.carrito_itemcarrito_id_seq OWNED BY public.carrito_itemcarrito.id;
            public       postgres    false    208            �            1259    25192    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            �            1259    25190    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    202            	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    201            �            1259    25075    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    25073    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    188            	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    187            �            1259    25064    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    25062    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    186            	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    185            �            1259    25214    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    25227    productos_producto    TABLE     �   CREATE TABLE public.productos_producto (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL,
    imagen character varying(100),
    precio bigint NOT NULL
);
 &   DROP TABLE public.productos_producto;
       public         postgres    false            �            1259    25225    productos_producto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.productos_producto_id_seq;
       public       postgres    false    205            	           0    0    productos_producto_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.productos_producto_id_seq OWNED BY public.productos_producto.id;
            public       postgres    false    204            �            1259    25134    usuarios_user    TABLE     �  CREATE TABLE public.usuarios_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
 !   DROP TABLE public.usuarios_user;
       public         postgres    false            �            1259    25147    usuarios_user_groups    TABLE     �   CREATE TABLE public.usuarios_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 (   DROP TABLE public.usuarios_user_groups;
       public         postgres    false            �            1259    25145    usuarios_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.usuarios_user_groups_id_seq;
       public       postgres    false    198            		           0    0    usuarios_user_groups_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.usuarios_user_groups_id_seq OWNED BY public.usuarios_user_groups.id;
            public       postgres    false    197            �            1259    25132    usuarios_user_id_seq    SEQUENCE     }   CREATE SEQUENCE public.usuarios_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.usuarios_user_id_seq;
       public       postgres    false    196            
	           0    0    usuarios_user_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.usuarios_user_id_seq OWNED BY public.usuarios_user.id;
            public       postgres    false    195            �            1259    25155    usuarios_user_user_permissions    TABLE     �   CREATE TABLE public.usuarios_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 2   DROP TABLE public.usuarios_user_user_permissions;
       public         postgres    false            �            1259    25153 %   usuarios_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.usuarios_user_user_permissions_id_seq;
       public       postgres    false    200            	           0    0 %   usuarios_user_user_permissions_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.usuarios_user_user_permissions_id_seq OWNED BY public.usuarios_user_user_permissions.id;
            public       postgres    false    199                       2604    25096    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    191    192                       2604    25106    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    194    194                       2604    25088    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189    190            &           2604    25243    carrito_carrito id    DEFAULT     x   ALTER TABLE ONLY public.carrito_carrito ALTER COLUMN id SET DEFAULT nextval('public.carrito_carrito_id_seq'::regclass);
 A   ALTER TABLE public.carrito_carrito ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            '           2604    25251    carrito_itemcarrito id    DEFAULT     �   ALTER TABLE ONLY public.carrito_itemcarrito ALTER COLUMN id SET DEFAULT nextval('public.carrito_itemcarrito_id_seq'::regclass);
 E   ALTER TABLE public.carrito_itemcarrito ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            #           2604    25195    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202                       2604    25078    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187    188                       2604    25067    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    185    186            %           2604    25230    productos_producto id    DEFAULT     ~   ALTER TABLE ONLY public.productos_producto ALTER COLUMN id SET DEFAULT nextval('public.productos_producto_id_seq'::regclass);
 D   ALTER TABLE public.productos_producto ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205                        2604    25137    usuarios_user id    DEFAULT     t   ALTER TABLE ONLY public.usuarios_user ALTER COLUMN id SET DEFAULT nextval('public.usuarios_user_id_seq'::regclass);
 ?   ALTER TABLE public.usuarios_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    195    196    196            !           2604    25150    usuarios_user_groups id    DEFAULT     �   ALTER TABLE ONLY public.usuarios_user_groups ALTER COLUMN id SET DEFAULT nextval('public.usuarios_user_groups_id_seq'::regclass);
 F   ALTER TABLE public.usuarios_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197    198            "           2604    25158 !   usuarios_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.usuarios_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.usuarios_user_user_permissions_id_seq'::regclass);
 P   ALTER TABLE public.usuarios_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200            �          0    25093 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    192   �       �          0    25103    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    194   �       �          0    25085    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    190   ;�       �          0    25240    carrito_carrito 
   TABLE DATA               =   COPY public.carrito_carrito (id, total, user_id) FROM stdin;
    public       postgres    false    207   ��       �          0    25248    carrito_itemcarrito 
   TABLE DATA               ^   COPY public.carrito_itemcarrito (id, cantidad, subtotal, carrito_id, producto_id) FROM stdin;
    public       postgres    false    209   ֦       �          0    25192    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    202   �       �          0    25075    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    188   �       �          0    25064    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    186   ��       �          0    25214    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    203   W�       �          0    25227    productos_producto 
   TABLE DATA               H   COPY public.productos_producto (id, nombre, imagen, precio) FROM stdin;
    public       postgres    false    205   ¬       �          0    25134    usuarios_user 
   TABLE DATA               �   COPY public.usuarios_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    196   ��       �          0    25147    usuarios_user_groups 
   TABLE DATA               E   COPY public.usuarios_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    198   <�       �          0    25155    usuarios_user_user_permissions 
   TABLE DATA               T   COPY public.usuarios_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    200   Y�       	           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    191            	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    193            	           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
            public       postgres    false    189            	           0    0    carrito_carrito_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.carrito_carrito_id_seq', 52, true);
            public       postgres    false    206            	           0    0    carrito_itemcarrito_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.carrito_itemcarrito_id_seq', 18, true);
            public       postgres    false    208            	           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public       postgres    false    201            	           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
            public       postgres    false    187            	           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
            public       postgres    false    185            	           0    0    productos_producto_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.productos_producto_id_seq', 7, true);
            public       postgres    false    204            	           0    0    usuarios_user_groups_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.usuarios_user_groups_id_seq', 1, false);
            public       postgres    false    197            	           0    0    usuarios_user_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.usuarios_user_id_seq', 1, true);
            public       postgres    false    195            	           0    0 %   usuarios_user_user_permissions_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.usuarios_user_user_permissions_id_seq', 1, false);
            public       postgres    false    199            5           2606    25100    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    192            :           2606    25129 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    194    194            =           2606    25108 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    194            7           2606    25098    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    192            0           2606    25115 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    190    190            2           2606    25090 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    190            Z           2606    25245 $   carrito_carrito carrito_carrito_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.carrito_carrito
    ADD CONSTRAINT carrito_carrito_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.carrito_carrito DROP CONSTRAINT carrito_carrito_pkey;
       public         postgres    false    207            ^           2606    25253 ,   carrito_itemcarrito carrito_itemcarrito_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.carrito_itemcarrito
    ADD CONSTRAINT carrito_itemcarrito_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.carrito_itemcarrito DROP CONSTRAINT carrito_itemcarrito_pkey;
       public         postgres    false    209            Q           2606    25201 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    202            +           2606    25082 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    188    188            -           2606    25080 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    188            )           2606    25072 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    186            U           2606    25221 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    203            X           2606    25232 *   productos_producto productos_producto_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.productos_producto
    ADD CONSTRAINT productos_producto_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.productos_producto DROP CONSTRAINT productos_producto_pkey;
       public         postgres    false    205            E           2606    25152 .   usuarios_user_groups usuarios_user_groups_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.usuarios_user_groups
    ADD CONSTRAINT usuarios_user_groups_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.usuarios_user_groups DROP CONSTRAINT usuarios_user_groups_pkey;
       public         postgres    false    198            H           2606    25173 H   usuarios_user_groups usuarios_user_groups_user_id_group_id_7ca6624e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_user_groups
    ADD CONSTRAINT usuarios_user_groups_user_id_group_id_7ca6624e_uniq UNIQUE (user_id, group_id);
 r   ALTER TABLE ONLY public.usuarios_user_groups DROP CONSTRAINT usuarios_user_groups_user_id_group_id_7ca6624e_uniq;
       public         postgres    false    198    198            ?           2606    25142     usuarios_user usuarios_user_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.usuarios_user
    ADD CONSTRAINT usuarios_user_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.usuarios_user DROP CONSTRAINT usuarios_user_pkey;
       public         postgres    false    196            J           2606    25187 [   usuarios_user_user_permissions usuarios_user_user_permi_user_id_permission_id_801d2da9_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_user_user_permissions
    ADD CONSTRAINT usuarios_user_user_permi_user_id_permission_id_801d2da9_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.usuarios_user_user_permissions DROP CONSTRAINT usuarios_user_user_permi_user_id_permission_id_801d2da9_uniq;
       public         postgres    false    200    200            M           2606    25160 B   usuarios_user_user_permissions usuarios_user_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_user_user_permissions
    ADD CONSTRAINT usuarios_user_user_permissions_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.usuarios_user_user_permissions DROP CONSTRAINT usuarios_user_user_permissions_pkey;
       public         postgres    false    200            B           2606    25144 (   usuarios_user usuarios_user_username_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.usuarios_user
    ADD CONSTRAINT usuarios_user_username_key UNIQUE (username);
 R   ALTER TABLE ONLY public.usuarios_user DROP CONSTRAINT usuarios_user_username_key;
       public         postgres    false    196            3           1259    25117    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    192            8           1259    25130 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    194            ;           1259    25131 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    194            .           1259    25116 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    190            [           1259    25259     carrito_carrito_user_id_3d190db8    INDEX     _   CREATE INDEX carrito_carrito_user_id_3d190db8 ON public.carrito_carrito USING btree (user_id);
 4   DROP INDEX public.carrito_carrito_user_id_3d190db8;
       public         postgres    false    207            \           1259    25270 '   carrito_itemcarrito_carrito_id_de02037b    INDEX     m   CREATE INDEX carrito_itemcarrito_carrito_id_de02037b ON public.carrito_itemcarrito USING btree (carrito_id);
 ;   DROP INDEX public.carrito_itemcarrito_carrito_id_de02037b;
       public         postgres    false    209            _           1259    25271 (   carrito_itemcarrito_producto_id_5dcf604c    INDEX     o   CREATE INDEX carrito_itemcarrito_producto_id_5dcf604c ON public.carrito_itemcarrito USING btree (producto_id);
 <   DROP INDEX public.carrito_itemcarrito_producto_id_5dcf604c;
       public         postgres    false    209            O           1259    25212 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    202            R           1259    25213 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    202            S           1259    25223 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    203            V           1259    25222 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    203            C           1259    25175 &   usuarios_user_groups_group_id_ce48ebfd    INDEX     k   CREATE INDEX usuarios_user_groups_group_id_ce48ebfd ON public.usuarios_user_groups USING btree (group_id);
 :   DROP INDEX public.usuarios_user_groups_group_id_ce48ebfd;
       public         postgres    false    198            F           1259    25174 %   usuarios_user_groups_user_id_327741ca    INDEX     i   CREATE INDEX usuarios_user_groups_user_id_327741ca ON public.usuarios_user_groups USING btree (user_id);
 9   DROP INDEX public.usuarios_user_groups_user_id_327741ca;
       public         postgres    false    198            K           1259    25189 5   usuarios_user_user_permissions_permission_id_32dd035e    INDEX     �   CREATE INDEX usuarios_user_user_permissions_permission_id_32dd035e ON public.usuarios_user_user_permissions USING btree (permission_id);
 I   DROP INDEX public.usuarios_user_user_permissions_permission_id_32dd035e;
       public         postgres    false    200            N           1259    25188 /   usuarios_user_user_permissions_user_id_6770e840    INDEX     }   CREATE INDEX usuarios_user_user_permissions_user_id_6770e840 ON public.usuarios_user_user_permissions USING btree (user_id);
 C   DROP INDEX public.usuarios_user_user_permissions_user_id_6770e840;
       public         postgres    false    200            @           1259    25161 $   usuarios_user_username_5ab4f1db_like    INDEX     v   CREATE INDEX usuarios_user_username_5ab4f1db_like ON public.usuarios_user USING btree (username varchar_pattern_ops);
 8   DROP INDEX public.usuarios_user_username_5ab4f1db_like;
       public         postgres    false    196            b           2606    25123 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    190    194    2098            a           2606    25118 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    194    192    2103            `           2606    25109 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    190    188    2093            i           2606    25254 D   carrito_carrito carrito_carrito_user_id_3d190db8_fk_usuarios_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrito_carrito
    ADD CONSTRAINT carrito_carrito_user_id_3d190db8_fk_usuarios_user_id FOREIGN KEY (user_id) REFERENCES public.usuarios_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.carrito_carrito DROP CONSTRAINT carrito_carrito_user_id_3d190db8_fk_usuarios_user_id;
       public       postgres    false    196    207    2111            j           2606    25260 Q   carrito_itemcarrito carrito_itemcarrito_carrito_id_de02037b_fk_carrito_carrito_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrito_itemcarrito
    ADD CONSTRAINT carrito_itemcarrito_carrito_id_de02037b_fk_carrito_carrito_id FOREIGN KEY (carrito_id) REFERENCES public.carrito_carrito(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.carrito_itemcarrito DROP CONSTRAINT carrito_itemcarrito_carrito_id_de02037b_fk_carrito_carrito_id;
       public       postgres    false    207    2138    209            k           2606    25265 I   carrito_itemcarrito carrito_itemcarrito_producto_id_5dcf604c_fk_productos    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrito_itemcarrito
    ADD CONSTRAINT carrito_itemcarrito_producto_id_5dcf604c_fk_productos FOREIGN KEY (producto_id) REFERENCES public.productos_producto(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.carrito_itemcarrito DROP CONSTRAINT carrito_itemcarrito_producto_id_5dcf604c_fk_productos;
       public       postgres    false    205    2136    209            g           2606    25202 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    188    202    2093            h           2606    25207 F   django_admin_log django_admin_log_user_id_c564eba6_fk_usuarios_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_usuarios_user_id FOREIGN KEY (user_id) REFERENCES public.usuarios_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_usuarios_user_id;
       public       postgres    false    202    196    2111            d           2606    25167 L   usuarios_user_groups usuarios_user_groups_group_id_ce48ebfd_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_user_groups
    ADD CONSTRAINT usuarios_user_groups_group_id_ce48ebfd_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.usuarios_user_groups DROP CONSTRAINT usuarios_user_groups_group_id_ce48ebfd_fk_auth_group_id;
       public       postgres    false    2103    192    198            c           2606    25162 N   usuarios_user_groups usuarios_user_groups_user_id_327741ca_fk_usuarios_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_user_groups
    ADD CONSTRAINT usuarios_user_groups_user_id_327741ca_fk_usuarios_user_id FOREIGN KEY (user_id) REFERENCES public.usuarios_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.usuarios_user_groups DROP CONSTRAINT usuarios_user_groups_user_id_327741ca_fk_usuarios_user_id;
       public       postgres    false    198    196    2111            f           2606    25181 W   usuarios_user_user_permissions usuarios_user_user_p_permission_id_32dd035e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_user_user_permissions
    ADD CONSTRAINT usuarios_user_user_p_permission_id_32dd035e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.usuarios_user_user_permissions DROP CONSTRAINT usuarios_user_user_p_permission_id_32dd035e_fk_auth_perm;
       public       postgres    false    2098    190    200            e           2606    25176 Q   usuarios_user_user_permissions usuarios_user_user_p_user_id_6770e840_fk_usuarios_    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_user_user_permissions
    ADD CONSTRAINT usuarios_user_user_p_user_id_6770e840_fk_usuarios_ FOREIGN KEY (user_id) REFERENCES public.usuarios_user(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.usuarios_user_user_permissions DROP CONSTRAINT usuarios_user_user_p_user_id_6770e840_fk_usuarios_;
       public       postgres    false    196    2111    200            �      x������ � �      �      x������ � �      �   n  x�]�Kn�0��}
NPż��5*U,��@d�Un_���.R~��3�ݜuÐ=�1���ƙ��}��hs �O7�^�8bX ��o������;�**{���uZf�Cl-��:a٧,
�r���(ܝ*ǰ�/S@ ���&��=v!q�)�A�sJP���˼�.��/oJ��9���9�U�W���1Q��C/z�m�z���V�'�Z�;��e#3�K,�q#�"�h_}05�?m�^ �bHj�`Bb���<^�M˰��b���x��^sVi�	�g�6��\pfq�	�vO�f}�t���Nl�V��1Ry����ʋGpѐ��x���1$�����O,�~br�	ōG��a����5      �      x������ � �      �      x������ � �      �      x������ � �      �   u   x�M�K�0Eѱ�b���^�D�U,�8��AwOT(bv|���4��ҙk؂�OjlE�E+��2���e�1��4��gr^?|.Խ'�6\��N=��p���$�$�|���n��fb=M      �   �  x���ю� E����{�� K%�l�E�M
x���ɒm�i"Y��3̽ҍ~MvM��lc D��%g���¿>����K`ȿ�J��]����]v�j��B�*�ufK��{	��Rѷ
�͜l�g��km��[�v=��Q�o vm1/v1n~�@�
E4J��R�zNq�����?#f����屶��,JB/Dd+~m.4/�I�v������Ɛ׃���M&���&mC�A/6Fs��cI@�B#�p�+��%aY�J"���(�
bE�n��	�?x��P�!9�����5ȸ�5ڤ���bd�"�ܓ<�/��C�^�Kc~����a�T"�s6'=�z7�q9�䌈.�zO��%�5XDv��mL��L�\9e��������3�����-m^��n4!���w�ǜ8%��?������U�      �   [  x�}�K��HE��_��(V�xY�E,�HU�-ܤ�ll��*�����GV��,��{�-R՗���#ƆUN���G��Jv*N[q�-�V2J'n��r�����U����\Y�s$���w��nξE���]�*c�N����j���{EA_���x_�`w���!9�_���]�S�k�Mi��d�$�Z�qz��t+�0�(̑���%0�Z(-뤒$т$������2~+���i�?>01���my�� Y,k�ǵ�l������im�G��<[�`7�H"QGW)���&��	��p������z����1Q�$��Ա]�-L�9���2=LϬ�.��2EE�&��z�Tw�D$1���!6��H&��ݘD�B���%ё}R�̛gL.s��0�Y���`�{�NlD8���y��gr�V"��"�4(3
���h�`7A����,��2�9}`7�q�V�Ϙ�G&��tM����.W�p��l���ܻ��>n��T}�)��
"���j[�A�4)��"��$�=�K-��p�O>�I�x�Ĉ���T���z�y1�nlL�O�ꎳ}�Ί��"8�a g}�Rm���F�K!LUHu@ҀB&7�ޓ�O-i>a��N6o�`u�Y�
�5w{C�ͭ������4�ö�u%�o3T�%|#��-�B5p�����Z�=p�X��ĉ$�ލ��L����eu�y�����[�]]Z�r��3��nGe�=YyOVIp$I���T��
B�`��BЈ��'@ͣXvT�?K�<'�?'�A��P��b/L�s���dh�5�������=N^�6]���j�����1�E	Ϡ���>W����pbz�,H��_^^���      �   �   x�e�;�0�������RБ0��ȠƤ9bC*�.	�{+�R֓'o�A�Z]oS=r����Y*i���5QJb�Ќ���4�_;���F���4��;� �$�=jq�/_�b�˳-��&sMV�B�^�h,O)�U��$��E�V?�����$I�<�ʶ��u�9�K/�#Jn!!���c�      �   �   x�U��
�@@�3_��]8ݹ5:f�=\��Z>� ���]gs���D'e���Q�(,�#�����<:d��1�n��αRtw�<���Zx�f�|[�H�r��b��;%&H��w8JXLJ��HGnm\��,��k�.�����)�j,8��ߓ����.-#      �      x������ � �      �      x������ � �     