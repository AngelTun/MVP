PGDMP      .            	    |            farmacia_heroes    14.13    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    farmacia_heroes    DATABASE     �   CREATE DATABASE farmacia_heroes WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE farmacia_heroes;
                postgres    false            �            1259    16432 	   productos    TABLE       CREATE TABLE public.productos (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    cantidad integer NOT NULL,
    fecha_caducidad date,
    proveedor_id integer,
    CONSTRAINT productos_cantidad_check CHECK ((cantidad >= 0))
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    16431    productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public          postgres    false    212            �           0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public          postgres    false    211            c           2604    16435    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �          0    16432 	   productos 
   TABLE DATA           e   COPY public.productos (id, nombre, descripcion, cantidad, fecha_caducidad, proveedor_id) FROM stdin;
    public          postgres    false    212          �           0    0    productos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.productos_id_seq', 43, true);
          public          postgres    false    211            f           2606    16440    productos productos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    212            g           2606    16441 %   productos productos_proveedor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.proveedores(id) ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_proveedor_id_fkey;
       public          postgres    false    212            �   w   x�M�A
�0F����@d25B���x�n�P��Fj(_[����yjZ�QZ���\��\f
�$,ч�e���Ry ð��7�Q�_��}�{�S2l�ס7�j�����9�v<9�� �'E     