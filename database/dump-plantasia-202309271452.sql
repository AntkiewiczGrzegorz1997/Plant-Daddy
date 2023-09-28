--
-- PostgreSQL database cluster dump
--

-- Started on 2023-09-27 14:52:44 CEST

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2023-09-27 14:52:44 CEST

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

-- Completed on 2023-09-27 14:52:45 CEST

--
-- PostgreSQL database dump complete
--

--
-- Database "plantasia" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2023-09-27 14:52:45 CEST

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

--
-- TOC entry 3607 (class 1262 OID 16452)
-- Name: plantasia; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE plantasia WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE plantasia OWNER TO postgres;

\connect plantasia

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
-- TOC entry 216 (class 1259 OID 16508)
-- Name: plants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plants (
    id character varying(10) NOT NULL,
    full_name character varying(200),
    scientific_name character varying(200),
    other_name character varying(200),
    image_url character varying(500),
    sunlight character varying(200),
    watering character varying(20)
);


ALTER TABLE public.plants OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16503)
-- Name: uploaded_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uploaded_images (
    user_id bigint NOT NULL,
    plant_id bigint NOT NULL,
    image_url character varying
);


ALTER TABLE public.uploaded_images OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16544)
-- Name: user_plants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_plants (
    user_id bigint NOT NULL,
    plant_id bigint NOT NULL,
    id character varying(10),
    plant_name character varying(200),
    full_name character varying(200),
    scientific_name character varying(200),
    plant_description character varying(1000),
    plant_size character varying(80),
    age character varying,
    watering character varying(20),
    sunlight character varying(200),
    icon_id character varying(200),
    image_url character varying(1000)
);


ALTER TABLE public.user_plants OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16453)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id bigint NOT NULL,
    email character varying(80),
    password character varying(200),
    firstname character varying(80),
    lastname character varying(80),
    username character varying(200)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 3600 (class 0 OID 16508)
-- Dependencies: 216
-- Data for Name: plants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plants (id, full_name, scientific_name, other_name, image_url, sunlight, watering) FROM stdin;
1	European Silver Fir	Abies alba	"Common Silver Fir"	https://perenual.com/storage/species_image/1_abies_alba/medium/1536px-Abies_alba_SkalitC3A9.jpg	["full sun"]	Frequent
2	Pyramidalis Silver Fir	Abies alba 'Pyramidalis'	\N	https://perenual.com/storage/species_image/2_abies_alba_pyramidalis/medium/49255769768_df55596553_b.jpg	["full sun"]	Average
3	White Fir	Abies concolor	"Silver Fir"	https://perenual.com/storage/species_image/3_abies_concolor/medium/52292935430_f4f3b22614_b.jpg	["Full sun","part shade"]	Average
4	Candicans White Fir	Abies concolor 'Candicans'	"Silver Fir"	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg	["full sun"]	Average
5	Fraser Fir	Abies fraseri	"Southern Fir"	https://perenual.com/storage/species_image/5_abies_fraseri/medium/36843539702_e80fc436e0_b.jpg	["full sun","part shade","filtered shade"]	Frequent
6	Golden Korean Fir	Abies koreana 'Aurea'	\N	https://perenual.com/storage/species_image/6_abies_koreana_aurea/medium/49235570926_99ec10781d_b.jpg	["Full sun","part shade"]	Average
7	Alpine Fir	Abies lasiocarpa	"Subalpine Fir"	https://perenual.com/storage/species_image/7_abies_lasiocarpa/medium/51002756843_74fae3c2fa_b.jpg	["full sun","part shade"]	Average
8	Blue Spanish Fir	Abies pinsapo 'Glauca'	"Glaucous Spanish Fir"	https://perenual.com/storage/species_image/8_abies_pinsapo_glauca/medium/21657514018_c0d9fed9f4_b.jpg	["Full sun","part shade"]	Average
9	Noble Fir	Abies procera	"Red Fir"	https://perenual.com/storage/species_image/9_abies_procera/medium/49107504112_6bd7effb8b_b.jpg	["full sun"]	Average
10	Johin Japanese Maple	Acer 'Johin'	"Red Full Moon Maple"	https://perenual.com/storage/species_image/10_acer_johin/medium/pexels-photo-2183508.jpg	["full sun","part shade"]	Average
12	Amur Maple	Acer ginnala	\N	https://perenual.com/storage/species_image/12_acer_ginnala/medium/10476032513_76ca899bc4_b.jpg	["full sun","part shade"]	Average
13	Flame Amur Maple	Acer ginnala 'Flame'	\N	https://perenual.com/storage/species_image/13_acer_ginnala_flame/medium/pexels-photo-1649190.jpg	["full sun"]	Frequent
14	Red Rhapsody Amur Maple	Acer ginnala 'Mondy'	\N	https://perenual.com/storage/species_image/14_acer_ginnala_mondy/medium/pexels-photo-1789879.jpg	["full sun","part shade"]	Frequent
15	Ruby Slippers Amur Maple	Acer ginnala 'Ruby Slippers'	\N	https://perenual.com/storage/species_image/15_acer_ginnala_ruby_slippers/medium/pexels-photo-1640820.jpg	["full sun","part shade"]	Frequent
16	Paperbark Maple	Acer griseum	\N	https://perenual.com/storage/species_image/16_acer_griseum/medium/5158906371_ed08a86876_b.jpg	["Full sun","part shade"]	Average
17	Fullmoon Maple	Acer japonicum	\N	https://perenual.com/storage/species_image/17_acer_japonicum/medium/7175475239_52543c51b3_b.jpg	["Full sun","part shade"]	Average
18	Cutleaf Fullmoon Maple	Acer japonicum 'Aconitifolium'	"fernleaf full moon maple"	https://perenual.com/storage/species_image/18_acer_japonicum_aconitifolium/medium/23528789198_c419363323_b.jpg	["Full sun","part shade"]	Average
19	Attaryi Fullmoon Maple*	Acer japonicum 'Attaryi'	\N	https://perenual.com/storage/species_image/19_acer_japonicum_attaryi/medium/pexels-photo-669323.jpg	["full sun","part shade"]	Average
20	Golden Fullmoon Maple	Acer japonicum 'Aureum'	\N	https://perenual.com/storage/species_image/20_acer_japonicum_aureum/medium/2560px-Acer_shirasawanum_27Aureum27.jpg	["full sun","part shade"]	Average
21	Emmett's Pumpkin Fullmoon Maple	Acer japonicum 'Emmett's Pumpkin'	\N	https://perenual.com/storage/species_image/21_acer_japonicum_emmetts_pumpkin/medium/Acer_shirasawanum_28golden_fullmoon_maple29_2_284633285838129.jpg	["full sun","part shade","filtered shade"]	Average
22	Green Cascade Maple	Acer japonicum 'Green Cascade'	\N	https://perenual.com/storage/species_image/22_acer_japonicum_green_cascade/medium/4847225395_2509ee2bfe_b.jpg	["Full sun","part shade"]	Average
23	Big Leaf Maple	Acer macrophyllum	"Oregon Maple"	https://perenual.com/storage/species_image/23_acer_macrophyllum/medium/52135137216_8a124b5188_b.jpg	["full sun","part sun/part shade"]	Average
24	Mocha Rose Big Leaf Maple	Acer macrophyllum 'Mocha Rose'	"Oregon Maple"	https://perenual.com/storage/species_image/24_acer_macrophyllum_mocha_rose/medium/4715169892_220a9d39f6_b.jpg	["full sun","part shade"]	Average
25	Flamingo Boxelder	Acer negundo 'Flamingo'	"Manitoba Maple"	https://perenual.com/storage/species_image/25_acer_negundo_flamingo/medium/5867345385_a9dff5bee7_b.jpg	["full sun","part sun/part shade"]	Average
26	Kelly's Gold Boxelder	Acer negundo 'Kelly's Gold'	"Manitoba Maple"	https://perenual.com/storage/species_image/26_acer_negundo_kellys_gold/medium/28819730054_e2a2b797c9_b.jpg	["full sun","part sun/part shade"]	Frequent
27	Japanese Maple	Acer palmatum	\N	https://perenual.com/storage/species_image/27_acer_palmatum/medium/2560px-Acer_palmatum_27Bloodgood27_kz01.jpg	["Full sun","part shade"]	Average
28	Aka Shigitatsu Sawa Japanese Maple	Acer palmatum 'Aka Shigitatsu Sawa'	"Samurai"	https://perenual.com/storage/species_image/28_acer_palmatum_aka_shigitatsu_sawa/medium/Acer_palmatum_Aka_shigitatsu_sawa_2zz.jpg	["part sun/part shade"]	Frequent
29	Alpenweiss Variegated Dwarf Japanese Maple*	Acer palmatum 'Alpenweiss'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
30	Ao Shime No Uchi Japanese Maple	Acer palmatum 'Ao Shime No Uchi'	\N	https://perenual.com/storage/species_image/30_acer_palmatum_ao_shime_no_uchi/medium/Acer_palmatum_Ao_shime_no_uchi_3zz.jpg	["full sun","part shade"]	Frequent
31	Aoyagi Japanese Maple*	Acer palmatum 'Aoyagi'	"Green Coral Japanese Maple"	https://perenual.com/storage/species_image/31_acer_palmatum_aoyagi/medium/acer_palmatum_japanese_maples_trees_red_red_leaves_blue_sky_blue_white-1126158.jpg	["full sun","part shade"]	Frequent
32	Arakawa Cork Bark Japanese Maple	Acer palmatum 'Arakawa'	"Rough-Bark Japanese Maple"	https://perenual.com/storage/species_image/32_acer_palmatum_arakawa/medium/2560px-Montagnac-Acer-palmatum_04.jpg	["Full sun","part shade"]	Average
33	Asahi Zuru Japanese Maple	Acer palmatum 'Asahi Zuru'	"Rising Sun"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
34	Ribbon-leaf Japanese Maple*	Acer palmatum 'Atrolineare'	"Red Strap-Leaf Japanese Maple"	https://perenual.com/storage/species_image/34_acer_palmatum_atrolineare/medium/2560px-Acer_Palmatum_27Red_Pygmy27.jpg	["full sun","part shade"]	Minimum
35	Purple-Leaf Japanese Maple	Acer palmatum 'Atropurpureum'	\N	https://perenual.com/storage/species_image/35_acer_palmatum_atropurpureum/medium/5656874577_617188e307_b.jpg	["full sun","part shade"]	Average
36	Aureum Japanese Maple*	Acer palmatum 'Aureum'	\N	https://perenual.com/storage/species_image/36_acer_palmatum_aureum/medium/2560px-Acer_shirasawanum_22aureum22.jpg	["part shade","part sun/part shade"]	Average
37	Autumn Fire Japanese Maple	Acer palmatum 'Autumn Fire'	"Herbstfeuer"	https://perenual.com/storage/species_image/37_acer_palmatum_autumn_fire/medium/2560px-Acer_palmatum_fall_foliage_01.jpg	["full sun","part shade"]	Average
38	Azuma Murasaki Japanese Maple	Acer palmatum 'Azuma Murasaki'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
39	Beni Kawa Coral Bark Japanese Maple*	Acer palmatum 'Beni Kawa'	\N	https://perenual.com/storage/species_image/39_acer_palmatum_beni_kawa/medium/5695802528_935d72efaa_b.jpg	["full sun","part shade"]	Frequent
40	Beni Otake Japanese Maple	Acer palmatum 'Beni Otake'	"Big Red Bamboo"	https://perenual.com/storage/species_image/40_acer_palmatum_beni_otake/medium/Acer_palmatum_27Oshio_beni27_-_JPG2.jpg	["full sun","part shade"]	Average
41	Beni Schichihenge Japanese Maple	Acer palmatum 'Beni Schichihenge'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
42	Beni Tsukasa Japanese Maple*	Acer palmatum 'Beni Tsukasa'	"Calico Cloth"	https://perenual.com/storage/species_image/42_acer_palmatum_beni_tsukasa/medium/pexels-photo-11870811.jpg	["full sun","part shade"]	Average
43	Bloodgood Japanese Maple	Acer palmatum 'Bloodgood'	\N	https://perenual.com/storage/species_image/43_acer_palmatum_bloodgood/medium/47923603032_5a96106ac6_b.jpg	["full sun","part sun/part shade"]	Average
44	Bonfire Japanese Maple	Acer palmatum 'Bonfire'	"Seigai"	https://perenual.com/storage/species_image/44_acer_palmatum_bonfire/medium/sk3776-image-kwvuoab1.jpg	["full sun","part shade"]	Average
45	Brandt's Dwarf Japanese Maple	Acer palmatum 'Brandt's Dwarf'	\N	https://perenual.com/storage/species_image/45_acer_palmatum_brandts_dwarf/medium/Acer_palmatum_BotGartenMuenster_Faecherahorn_6691.jpg	["full sun","part shade"]	Average
46	Burgundy Lace Japanese Maple	Acer palmatum 'Burgundy Lace'	\N	https://perenual.com/storage/species_image/46_acer_palmatum_burgundy_lace/medium/50082938346_1040fdd690_b.jpg	["full sun","part shade"]	Average
47	Butterfly Variegated Japanese Maple	Acer palmatum 'Butterfly'	\N	https://perenual.com/storage/species_image/47_acer_palmatum_butterfly/medium/20251027248_dc9cfd6f65_b.jpg	["Full sun","part shade"]	Average
48	Chantilly Lace Japanese Maple	Acer palmatum 'Chantilly Lace'	"Threadleaf Japanese Maple"	https://perenual.com/storage/species_image/48_acer_palmatum_chantilly_lace/medium/4714671587_8ecba52560_b.jpg	["full sun","part shade"]	Frequent
49	Chishio Japanese Maple	Acer palmatum 'Chishio'	\N	https://perenual.com/storage/species_image/49_acer_palmatum_chishio/medium/Acer_palmatum_Atropurpureum_JPG1fuA.jpg	["full sun","part shade"]	Average
50	Chitose Yama Japanese Maple	Acer palmatum 'Chitose Yama'	"Chitoseyama"	https://perenual.com/storage/species_image/50_acer_palmatum_chitose_yama/medium/pexels-photo-4977537.jpg	["full sun","part shade"]	Frequent
51	Coonara Pygmy Japanese Maple	Acer palmatum 'Coonara Pygmy'	\N	https://perenual.com/storage/species_image/51_acer_palmatum_coonara_pygmy/medium/japan-maple-maple-leaf-red-leaf-nature.jpg	["full sun","part shade"]	Average
52	Crimson Prince Japanese Maple*	Acer palmatum 'Crimson Prince'	\N	https://perenual.com/storage/species_image/52_acer_palmatum_crimson_prince/medium/1-1274349109Jjby.jpg	["full sun","part shade"]	Average
53	Ever Red Lace-Leaf Japanese Maple*	Acer palmatum 'Ever Red'	\N	https://perenual.com/storage/species_image/53_acer_palmatum_ever_red/medium/9651313679_caf5a0d447_b.jpg	["full sun"]	Average
54	Glowing Embers Japanese Maple*	Acer palmatum 'Glowing Embers'	\N	https://perenual.com/storage/species_image/54_acer_palmatum_glowing_embers/medium/2016-11-18_12_20_19_Callery_Pear_displaying_autumn_foliage_along_Franklin_Farm_Road_between_Tranquility_Lane_and_Old_Dairy_Road_in_the_Franklin_Farm_section_of_Oak_Hill2C_Fairfax_County2C_Virginia.jpg	["full sun","part shade"]	Average
55	Grandma Ghost Japanese Maple*	Acer palmatum 'Grandma Ghost'	"Grandma's Ghost Japanese Maple"	https://perenual.com/storage/species_image/55_acer_palmatum_grandma_ghost/medium/51480401507_4b9def5883_b.jpg	["full sun","part shade"]	Average
56	Green Hornet Cutleaf Japanese Maple*	Acer palmatum 'Green Hornet'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
57	Green Mist Japanese Maple*	Acer palmatum 'Green Mist'	\N	https://perenual.com/storage/species_image/57_acer_palmatum_green_mist/medium/Acer_palmatum_var._dissectum_Green_Mist_0zz.jpg	["full sun","part shade"]	Average
58	Shirazz Japanese Maple	Acer palmatum 'Gwen's Rose Delight'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
59	Hessei Japanese Maple	Acer palmatum 'Hessei'	\N	https://perenual.com/storage/species_image/59_acer_palmatum_hessei/medium/Acer_amoenum_var_matsumurae1.jpg	["part shade","part sun/part shade"]	Average
60	Higasa Yama Japanese Maple	Acer palmatum 'Higasa Yama'	"Higasayama"	https://perenual.com/storage/species_image/60_acer_palmatum_higasa_yama/medium/51522802351_37623328e0_b.jpg	["part sun/part shade","part shade"]	Average
61	Hogyoku Japanese Maple	Acer palmatum 'Hogyoku'	\N	https://perenual.com/storage/species_image/61_acer_palmatum_hogyoku/medium/2560px-Kyoto_Japan0431.jpg	["full sun","part shade"]	Average
62	Hubb's Red Willow Japanese Maple	Acer palmatum 'Hubb's Red Willow'	\N	https://perenual.com/storage/species_image/62_acer_palmatum_hubbs_red_willow/medium/Acer_japonicum_rubra_leaves.jpg	["part shade","part sun/part shade"]	Frequent
63	Iijima Sunago Japanese Maple	Acer palmatum 'Iijima Sunago'	\N	https://perenual.com/storage/species_image/63_acer_palmatum_iijima_sunago/medium/Acer_palmatum_27Oshio_beni27_-_JPG1.jpg	["full sun","part shade"]	Average
64	Inaba Shidare Cutleaf Japanese Maple	Acer palmatum 'Inaba Shidare'	\N	https://perenual.com/storage/species_image/64_acer_palmatum_inaba_shidare/medium/2465696230_ab34a4a784_b.jpg	["full sun","part shade"]	Frequent
65	Inazuma Japanese Maple	Acer palmatum 'Inazuma'	\N	https://perenual.com/storage/species_image/65_acer_palmatum_inazuma/medium/Acer_palmatum_28Japanese_maple_tree29_3_284904402847329.jpg	["full sun","part shade"]	Average
66	Jiro Shidare Japanese Maple	Acer palmatum 'Jiro Shidare'	\N	https://perenual.com/storage/species_image/66_acer_palmatum_jiro_shidare/medium/Acer_palmatum_Eddisbury_-_Flickr_-_peganum.jpg	["full sun","part shade"]	Frequent
67	Kagiri Nishiki Japanese Maple	Acer palmatum 'Kagiri Nishiki'	\N	https://perenual.com/storage/species_image/67_acer_palmatum_kagiri_nishiki/medium/800px-Acer_palmatum_27Kagiri-nishiki27_sunlit_branch.jpg	["full sun","part shade"]	Frequent
68	Kamagata Japanese Maple	Acer palmatum 'Kamagata'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
69	Kandy Kitchen Japanese Maple	Acer palmatum 'Kandy Kitchen'	\N	https://perenual.com/storage/species_image/69_acer_palmatum_kandy_kitchen/medium/51150061025_29f690d490_b.jpg	["full sun","part shade"]	Average
70	Karasu Gawa Japanese Maple*	Acer palmatum 'Karasu Gawa'	"Karasugawa"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
71	Kasagi Yama Japanese Maple	Acer palmatum 'Kasagi Yama'	"Kasagiyama Japanese Maple"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
72	Katsura Japanese Maple	Acer palmatum 'Katsura'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["part shade","part sun/part shade"]	Average
73	Kiri Nishiki Japanese Maple	Acer palmatum 'Kiri Nishiki'	\N	https://perenual.com/storage/species_image/73_acer_palmatum_kiri_nishiki/medium/Acer_palmatum_var._dissectum_Green_Mist_0zz.jpg	["full sun","part sun/part shade"]	Frequent
74	Kiyohime Japanese Maple	Acer palmatum 'Kiyohime'	"Kiyo Hime"	https://perenual.com/storage/species_image/74_acer_palmatum_kiyohime/medium/pexels-photo-5745584.jpg	["full sun","part shade"]	Frequent
75	Koshibori Nishiki Japanese Maple*	Acer palmatum 'Koshibori Nishiki'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
76	Koto No Ito Japanese Maple	Acer palmatum 'Koto No Ito'	"Harp String"	https://perenual.com/storage/species_image/76_acer_palmatum_koto_no_ito/medium/Acer_palmatum_27Linearilobum27_JPG1L.jpg	["filtered shade","full sun only if soil kept moist","part sun/part shade"]	Average
77	Linearilobum Japanese Maple	Acer palmatum 'Linearilobum'	"Bamboo-Leaf Japanese Maple"	https://perenual.com/storage/species_image/77_acer_palmatum_linearilobum/medium/3466572143_4470363413_b.jpg	["full sun","part shade"]	Average
78	Margaret Bee Japanese Maple	Acer palmatum 'Margaret Bee'	\N	https://perenual.com/storage/species_image/78_acer_palmatum_margaret_bee/medium/Acer_palmatum_28Japanese_maple_tree29_3_284904402847329.jpg	["part shade","part sun/part shade"]	Average
79	Mikawa Yatsubusa Japanese Maple	Acer palmatum 'Mikawa Yatsubusa'	\N	https://perenual.com/storage/species_image/79_acer_palmatum_mikawa_yatsubusa/medium/2560px-Acer_palmatum_27Kashima_Yatsubusa27_-_Asticou_Azalea_Garden_-_Northeast_Harbor2C_Maine_-_DSC03516.jpg	["part shade","part sun/part shade"]	Average
80	Mikazuki Japanese Maple	Acer palmatum 'Mikazuki'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
81	Moonfire Japanese Maple	Acer palmatum 'Moonfire'	\N	https://perenual.com/storage/species_image/81_acer_palmatum_moonfire/medium/4846299174_5cb4e644ae_b.jpg	["part sun/part shade","full sun"]	Average
82	Nishiki Gawa Japanese Maple*	Acer palmatum 'Nishiki Gawa'	"Pine Bark Maple"	https://perenual.com/storage/species_image/82_acer_palmatum_nishiki_gawa/medium/pexels-photo-4977537.jpg	["full sun"]	Average
83	Nuresagi Japanese Maple	Acer palmatum 'Nuresagi'	"Wet Heron Japanese Maple"	https://perenual.com/storage/species_image/83_acer_palmatum_nuresagi/medium/Acer_palmatum_27Nuresagi27_JPG1c.jpg	["full sun","part shade"]	Frequent
84	Okagami Japanese Maple	Acer palmatum 'Okagami'	\N	https://perenual.com/storage/species_image/84_acer_palmatum_okagami/medium/4555737792_4363d30713_b.jpg	["full sun","part shade"]	Average
85	Okushimo Japanese Maple	Acer palmatum 'Okushimo'	"Okushimu"	https://perenual.com/storage/species_image/85_acer_palmatum_okushimo/medium/27477811140_2298882b2f_b.jpg	["full sun","part shade"]	Average
86	Orange Dream Japanese Maple	Acer palmatum 'Orange Dream'	\N	https://perenual.com/storage/species_image/86_acer_palmatum_orange_dream/medium/2560px-Acer_palmatum_27Orange_Dream27_-_2020-05-08_-_Andy_Mabbett_-_13.jpg	["full sun","part shade"]	Average
87	Orangeola Cutleaf Japanese Maple	Acer palmatum 'Orangeola'	\N	https://perenual.com/storage/species_image/87_acer_palmatum_orangeola/medium/4714671587_8ecba52560_b.jpg	["full sun","part shade"]	Average
88	Oregon Sunset Japanese Maple	Acer palmatum 'Oregon Sunset'	\N	https://perenual.com/storage/species_image/88_acer_palmatum_oregon_sunset/medium/autumn-leaves-leaves-autumn-the-leaves-deciduous-nature.jpg	["full sun","part shade"]	Average
89	Oridono Nishiki Japanese Maple*	Acer palmatum 'Oridono Nishiki'	\N	https://perenual.com/storage/species_image/89_acer_palmatum_oridono_nishiki/medium/Acer_palmatum_Oridono_nishiki_0zz.jpg	["full sun","part shade"]	Average
90	Ornatum Japanese Maple*	Acer palmatum 'Ornatum'	"Dissectum Ornatum"	https://perenual.com/storage/species_image/90_acer_palmatum_ornatum/medium/Acer_palmatum_var._dissectum_Ornatum_1zz.jpg	["full sun","part shade"]	Average
91	Osakazuki Japanese Maple	Acer palmatum 'Osakazuki'	\N	https://perenual.com/storage/species_image/91_acer_palmatum_osakazuki/medium/55257376_8dea2df86d_b.jpg	["full sun","part shade"]	Average
92	Oshio Beni Japanese Maple	Acer palmatum 'Oshio Beni'	\N	https://perenual.com/storage/species_image/92_acer_palmatum_oshio_beni/medium/2560px-Acer_palmatum_27Oshio_beni27_-_JPG3.jpg	["full sun","part shade"]	Average
93	Oshu Shidare Japanese Maple	Acer palmatum 'Oshu Shidare'	\N	https://perenual.com/storage/species_image/93_acer_palmatum_oshu_shidare/medium/Acer_palmatum_Oshu_shidare_0zz.jpg	["full sun","part shade"]	Frequent
94	Otake Japanese Maple	Acer palmatum 'Otake'	\N	https://perenual.com/storage/species_image/94_acer_palmatum_otake/medium/2397px-Acer_palmatum_27Ben27Otake27_in_Auckland_Botanic_Gardens_02.jpg	["full sun","part shade"]	Frequent
95	Otome Zakura Japanese Maple*	Acer palmatum 'Otome Zakura'	\N	https://perenual.com/storage/species_image/95_acer_palmatum_otome_zakura/medium/Leaves_of_Acer_palmatum_28200529.jpg	["full sun","part shade"]	Average
96	Palmatifidum Japanese Maple*	Acer palmatum 'Palmatifidum'	"Dissectum Paucum"	https://perenual.com/storage/species_image/96_acer_palmatum_palmatifidum/medium/Acer_platanoides_27Palmatifidum27.jpg	["full sun","part shade"]	Average
97	Peaches And Cream Japanese Maple	Acer palmatum 'Peaches And Cream'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Frequent
98	Pendulum Julian Japanese Maple*	Acer palmatum 'Pendulum Julian'	"Julian Dissectum"	https://perenual.com/storage/species_image/98_acer_palmatum_pendulum_julian/medium/Acer_palmatum_var._dissectum_27Inaba-shidare27.jpg	["full sun","part shade"]	Frequent
99	Pink Lace Japanese Maple*	Acer palmatum 'Pink Lace'	\N	https://perenual.com/storage/species_image/99_acer_palmatum_pink_lace/medium/Acer_palmatum_27Inaba_Shidare27_in_autumn_sunshine_-_2021-10-17_-_Andy_Mabbett_-_02.jpg	["full sun"]	Frequent
100	Pixie Japanese Maple	Acer palmatum 'Pixie'	\N	https://perenual.com/storage/species_image/100_acer_palmatum_pixie/medium/Acer_palmatum_27Oshio_beni27_-_JPG2.jpg	["full sun","part shade"]	Average
101	Purple Ghost Japanese Maple*	Acer palmatum 'Purple Ghost'	\N	https://perenual.com/storage/species_image/101_acer_palmatum_purple_ghost/medium/6886992806_f55f1a8613_b.jpg	["full sun","part shade"]	Average
102	Red Dragon Japanese Maple	Acer palmatum 'Red Dragon'	\N	https://perenual.com/storage/species_image/102_acer_palmatum_red_dragon/medium/4847966614_089c83b489_b.jpg	["full sun","part shade"]	Average
103	Red Feathers Japanese Maple*	Acer palmatum 'Red Feathers'	\N	https://perenual.com/storage/species_image/103_acer_palmatum_red_feathers/medium/pexels-photo-8065044.jpg	["full sun","part shade"]	Average
104	Red Filigree Lace Japanese Maple	Acer palmatum 'Red Filigree Lace'	\N	https://perenual.com/storage/species_image/104_acer_palmatum_red_filigree_lace/medium/Crimson_Queen_Japanese_Maple_plants_growing_in_NJ_in_April.jpg	["full sun","part shade"]	Average
105	Dwarf Red Pygmy Japanese Maple	Acer palmatum 'Red Pygmy'	\N	https://perenual.com/storage/species_image/105_acer_palmatum_red_pygmy/medium/800px-Acer_Palmatum_27Red_Pygmy27.jpg	["full sun","part shade"]	Average
106	Red Select Japanese Maple*	Acer palmatum 'Red Select'	\N	https://perenual.com/storage/species_image/106_acer_palmatum_red_select/medium/Acer_palmatum_27Burgundy_lace_JPG1A.jpg	["full sun","part shade"]	Frequent
107	Rhode Island Red Japanese Maple	Acer palmatum 'Rhode Island Red'	\N	https://perenual.com/storage/species_image/107_acer_palmatum_rhode_island_red/medium/16805737339_d92eafd674_b.jpg	["full sun","part shade"]	Average
108	Ruby Ridge Japanese Maple*	Acer palmatum 'Ruby Ridge'	\N	https://perenual.com/storage/species_image/108_acer_palmatum_ruby_ridge/medium/sk3776-image-kwvuoab1.jpg	["full sun","part shade"]	Average
109	Ruby Stars Japanese Maple*	Acer palmatum 'Ruby Stars'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
110	Ruslyn In The Pink Japanese Maple	Acer palmatum 'Ruslyn In The Pink'	\N	https://perenual.com/storage/species_image/110_acer_palmatum_ruslyn_in_the_pink/medium/Acer_palmatum_var_amoenum_cv_Sanguineum2.jpg	["part sun/part shade","part shade"]	Frequent
111	Ryusen Japanese Maple	Acer palmatum 'Ryusen'	\N	https://perenual.com/storage/species_image/111_acer_palmatum_ryusen/medium/26170793293_62330077e4_b.jpg	["full sun","part shade"]	Average
112	Sagara Nishiki Japanese Maple	Acer palmatum 'Sagara Nishiki'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
113	Samurai Sword Japanese Maple	Acer palmatum 'Samarzam'	\N	https://perenual.com/storage/species_image/113_acer_palmatum_samarzam/medium/sk3776-image-kwvuoab1.jpg	["full sun","part shade"]	Average
114	Coral Bark Japanese Maple	Acer palmatum 'Sango Kaku'	\N	https://perenual.com/storage/species_image/114_acer_palmatum_sango_kaku/medium/50036749928_86277e5884_b.jpg	["full sun","part shade"]	Average
115	Sazanami Japanese Maple	Acer palmatum 'Sazanami'	\N	https://perenual.com/storage/species_image/115_acer_palmatum_sazanami/medium/foliage_green_branch_plant_plants_sheet_japanese_maple-1130713.jpg	["full sun","part shade"]	Average
116	Scolopendrifolium Japanese Maple	Acer palmatum 'Scolopendrifolium'	"Scolopendrifolium Rubrum"	https://perenual.com/storage/species_image/116_acer_palmatum_scolopendrifolium/medium/Acer_palmatum_Scolopendrifolium_0zz.jpg	["full sun","part shade"]	Average
117	Seiryu Japanese Maple	Acer palmatum 'Seiryu'	\N	https://perenual.com/storage/species_image/117_acer_palmatum_seiryu/medium/24996540407_3b910e979d_b.jpg	["part sun/part shade"]	Frequent
118	Shaina Japanese Maple	Acer palmatum 'Shaina'	\N	https://perenual.com/storage/species_image/118_acer_palmatum_shaina/medium/2560px-Acer_palmatum_27Shaina27_in_Christchurch_Botanic_Gardens_02.jpg	["full sun","part shade"]	Average
119	Sherwood Elfin Japanese Maple*	Acer palmatum 'Sherwood Elfin'	\N	https://perenual.com/storage/species_image/119_acer_palmatum_sherwood_elfin/medium/Acer_palmatum_10_by_Line1.jpg	["full sun","part shade"]	Average
120	Sherwood Flame Japanese Maple	Acer palmatum 'Sherwood Flame'	\N	https://perenual.com/storage/species_image/120_acer_palmatum_sherwood_flame/medium/43548598614_3fdf490bfb_b.jpg	["full sun","part shade"]	Average
121	Shindeshojo Japanese Maple	Acer palmatum 'Shindeshojo'	"Shin Deshojo"	https://perenual.com/storage/species_image/121_acer_palmatum_shindeshojo/medium/5827311526_cd9a9096a0_b.jpg	["full sun","part shade"]	Average
122	Shinobuga Oka Japanese Maple*	Acer palmatum 'Shinobuga Oka'	"Shinobu Ga Oka"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Average
123	Lions Head Japanese Maple	Acer palmatum 'Shishigashira'	\N	https://perenual.com/storage/species_image/123_acer_palmatum_shishigashira/medium/4847315016_26a7119afa_b.jpg	["full sun","part shade"]	Average
124	Shishio Hime Japanese Maple*	Acer palmatum 'Shishio Hime'	\N	https://perenual.com/storage/species_image/124_acer_palmatum_shishio_hime/medium/3ea9ddf894f766d45ef848c98b9a-1424381.jpg	["full sun","part shade"]	Frequent
125	Spring Delight Japanese Maple	Acer palmatum 'Spring Delight'	\N	https://perenual.com/storage/species_image/125_acer_palmatum_spring_delight/medium/Acer_palmatum_Eddisbury_-_Flickr_-_peganum_28129.jpg	["full sun","part shade"]	Average
126	Suminagashi Japanese Maple	Acer palmatum 'Suminagashi'	"Sumi Nagashi"	https://perenual.com/storage/species_image/126_acer_palmatum_suminagashi/medium/japanese-maple-fall-color-leaves-red.jpg	["full sun","part shade"]	Average
127	Tama Hime Japanese Maple	Acer palmatum 'Tama Hime'	\N	https://perenual.com/storage/species_image/127_acer_palmatum_tama_hime/medium/3467420590_a48a005ba1_b.jpg	["full sun","part shade"]	Frequent
128	Tamukeyama Japanese Maple	Acer palmatum 'Tamukeyama'	\N	https://perenual.com/storage/species_image/128_acer_palmatum_tamukeyama/medium/Acer_palmatum_27Tamukeyama27_at_Coker_Arboretum.jpg	["full sun","part shade"]	Average
129	Tana Japanese Maple*	Acer palmatum 'Tana'	\N	https://perenual.com/storage/species_image/129_acer_palmatum_tana/medium/Acer_palmatum_subsp._amoenum_in_Hackfalls_Arboretum_28229.jpg	["full sun","part shade"]	Average
130	Tobiosho Japanese Maple	Acer palmatum 'Tobiosho'	\N	https://perenual.com/storage/species_image/130_acer_palmatum_tobiosho/medium/Acer_palmatum_27Elegans27_JPG1L.jpg	["full sun","part shade"]	Frequent
131	Trompenburg Japanese Maple*	Acer palmatum 'Trompenburg'	\N	https://perenual.com/storage/species_image/131_acer_palmatum_trompenburg/medium/japanese-maple-leaves-new-tree-ornamental-plant-red.jpg	["full sun","part shade"]	Average
132	Tsukasa Silhouette Japanese Maple*	Acer palmatum 'Tsukasa Silhouette'	\N	https://perenual.com/storage/species_image/132_acer_palmatum_tsukasa_silhouette/medium/Acer_palmatum_Eddisbury_-_Flickr_-_peganum.jpg	["full sun","part shade"]	Average
133	Tsuma Gaki Japanese Maple	Acer palmatum 'Tsuma Gaki'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Frequent
134	Tsuri Nishiki Japanese Maple	Acer palmatum 'Tsuri Nishiki'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
2424	border carnation	Dianthus 'Pixie'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
135	Twombly's Red Sentinel Japanese Maple	Acer palmatum 'Twombly's Red Sentinel'	\N	https://perenual.com/storage/species_image/135_acer_palmatum_twomblys_red_sentinel/medium/33757558900_958207d989_b.jpg	["full sun","part shade"]	Average
136	Ueno Homare Japanese Maple	Acer palmatum 'Ueno Homare'	\N	https://perenual.com/storage/species_image/136_acer_palmatum_ueno_homare/medium/3ea9ddf894f766d45ef848c98b9a-1424381.jpg	["full sun","part shade"]	Frequent
137	Floating Cloud Japanese Maple	Acer palmatum 'Ukigumo'	\N	https://perenual.com/storage/species_image/137_acer_palmatum_ukigumo/medium/4845850971_a6f376a12a_b.jpg	["full sun","part shade"]	Frequent
138	Utsu Semi Japanese Maple	Acer palmatum 'Utsu Semi'	\N	https://perenual.com/storage/species_image/138_acer_palmatum_utsu_semi/medium/Acer_palmatum_Klon_palmowy_2019-05-26_05.jpg	["full sun","part shade"]	Average
139	Villa Taranto Japanese Maple	Acer palmatum 'Villa Taranto'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
140	Wilson's Pink Dwarf Japanese Maple	Acer palmatum 'Wilson's Pink Dwarf'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
141	Emperor I Japanese Maple	Acer palmatum 'Wolff'	"Emperor 1"	https://perenual.com/storage/species_image/141_acer_palmatum_wolff/medium/47923603098_bdbd6f53f0_b.jpg	["full sun","part shade"]	Average
142	Yellow Bird Japanese Maple	Acer palmatum 'Yellow Bird'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
143	Yubae Japanese Maple*	Acer palmatum 'Yubae'	"Evening Glow Japanese Maple"	https://perenual.com/storage/species_image/143_acer_palmatum_yubae/medium/51150061025_29f690d490_b.jpg	["full sun","part shade"]	Average
144	Moosewood	Acer pensylvanicum	"Striped Maple"	https://perenual.com/storage/species_image/144_acer_pensylvanicum/medium/50159672678_a016bd18b9_b.jpg	["full sun","part shade"]	Average
145	Crimson King Norway Maple	Acer platanoides 'Crimson King'	\N	https://perenual.com/storage/species_image/145_acer_platanoides_crimson_king/medium/35279593622_dbffc5f94b_b.jpg	["part sun/part shade","full sun"]	Average
146	Crimson Sentry Norway Maple	Acer platanoides 'Crimson Sentry'	\N	https://perenual.com/storage/species_image/146_acer_platanoides_crimson_sentry/medium/Acer_platanoides_Faassen27s_Black_kz1.jpg	["full sun","part sun/part shade"]	Average
147	Harlequin Norway Maple	Acer platanoides 'Drummondii'	\N	https://perenual.com/storage/species_image/147_acer_platanoides_drummondii/medium/10840118873_cc5e8da787_b.jpg	["full sun","part sun/part shade"]	Minimum
148	Emerald Queen Norway Maple	Acer platanoides 'Emerald Queen'	\N	https://perenual.com/storage/species_image/148_acer_platanoides_emerald_queen/medium/Acer_saccharum_28Sugar_maple29_282692405476329.jpg	["full sun","part sun/part shade"]	Average
149	Princeton Gold Maple	Acer platanoides 'Princeton Gold'	\N	https://perenual.com/storage/species_image/149_acer_platanoides_princeton_gold/medium/Acer_27Golden_Globe27_02.jpg	["full sun","part sun/part shade"]	Average
150	Eskimo Sunset Sycamore Maple	Acer pseudoplatanus 'Eskimo Sunset'	"Planetree Maple"	https://perenual.com/storage/species_image/150_acer_pseudoplatanus_eskimo_sunset/medium/Acer_pseudoplatanus_27Nizetii27_b.jpg	["full sun","part shade"]	Average
151	Nizetii Sycamore Maple	Acer pseudoplatanus 'Nizetii'	"Planetree Maple"	https://perenual.com/storage/species_image/151_acer_pseudoplatanus_nizetii/medium/800px-Acer_pseudoplatanus_Nizetii_2017-06-25_3000.jpg	["full sun","part shade"]	Average
152	Korean Maple	Acer pseudosieboldianum	"Purplebloom Maple"	https://perenual.com/storage/species_image/152_acer_pseudosieboldianum/medium/2560px-Acer_pseudosieboldianum_flowers.jpg	["full sun","part shade"]	Average
153	Red Maple	Acer rubrum	"Swamp Maple"	https://perenual.com/storage/species_image/153_acer_rubrum/medium/10482675495_e8b601445f_b.jpg	["full sun"]	Average
154	Autumn Flame Red Maple	Acer rubrum 'Autumn Flame'	"Swamp Maple"	https://perenual.com/storage/species_image/154_acer_rubrum_autumn_flame/medium/Acer_rubrum_Autumn_Flame_0zz.jpg	["full sun","part shade"]	Frequent
155	Bowhall Red Maple	Acer rubrum 'Bowhall'	"Swamp Maple"	https://perenual.com/storage/species_image/155_acer_rubrum_bowhall/medium/Acer_rubrum_28summertime29.jpg	["full sun","part shade"]	Average
156	Red Sunset® Red Maple	Acer rubrum 'Franksred'	"Swamp Maple"	https://perenual.com/storage/species_image/156_acer_rubrum_franksred/medium/tree_leaves_maple_autumn_fall_red_woods_forest-1017374.jpg	["full sun","part shade"]	Average
157	Commemoration Sugar Maple	Acer saccharum 'Commemoration'	"Hard Maple"	https://perenual.com/storage/species_image/157_acer_saccharum_commemoration/medium/21860822053_bda135cb61_b.jpg	["full sun","part sun/part shade"]	Average
158	Green Mountain Sugar Maple	Acer saccharum 'Green Mountain'	"Hard Maple"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part sun/part shade"]	Average
159	Legacy Sugar Maple	Acer saccharum 'Legacy'	"Hard Maple"	https://perenual.com/storage/species_image/159_acer_saccharum_legacy/medium/Acer_saccharum_Legacy_5zz.jpg	["part sun/part shade","full sun"]	Average
160	Golden Full Moon Maple	Acer shirasawanum 'Aureum'	\N	https://perenual.com/storage/species_image/160_acer_shirasawanum_aureum/medium/40091522863_81a1e0d56a_b.jpg	["Full sun","part shade"]	Average
161	Autumn Moon Full Moon Maple	Acer shirasawanum 'Autumn Moon'	\N	https://perenual.com/storage/species_image/161_acer_shirasawanum_autumn_moon/medium/4846304086_2ff780588a_b.jpg	["full sun","part shade"]	Average
162	Moonrise Full Moon Maple	Acer shirasawanum 'Moonrise'	\N	https://perenual.com/storage/species_image/162_acer_shirasawanum_moonrise/medium/8689668185_8464856330_b.jpg	["part shade","part sun/part shade"]	Frequent
163	Red Dawn Full Moon Maple	Acer shirasawanum 'Red Dawn'	\N	https://perenual.com/storage/species_image/163_acer_shirasawanum_red_dawn/medium/800px-Acer_Palmatum_27Red_Pygmy27.jpg	["full sun","part shade"]	Average
164	Yasemin Full Moon Maple	Acer shirasawanum 'Yasemin'	\N	https://perenual.com/storage/species_image/164_acer_shirasawanum_yasemin/medium/acer_palmatum_japanese_maples_trees_red_red_leaves_blue_sky_blue_white-1126158.jpg	["full sun","part shade"]	Average
165	Hot Wings Tatarian Maple	Acer tataricum 'GarAnn'	\N	https://perenual.com/storage/species_image/165_acer_tataricum_garann/medium/Acer_tataricum_28fruits29.jpg	["full sun","part shade"]	Average
167	Joe Witt Snakebark Maple	Acer tegmentosum 'Joe Witt'	"Manchurian Striped Maple"	https://perenual.com/storage/species_image/167_acer_tegmentosum_joe_witt/medium/450px-Acer_tegmentosum_2zz.jpg	["filtered shade","full sun","part sun/part shade"]	Average
168	White Tigress Maple	Acer tegmentosum 'White Tigress'	"Manchurian Striped Maple"	https://perenual.com/storage/species_image/168_acer_tegmentosum_white_tigress/medium/800px-Acer_tegmentosum_-_Morris_Arboretum_-_DSC00441.jpg	["full sun","part sun/part shade"]	Average
169	Three Flowered Maple	Acer triflorum	\N	https://perenual.com/storage/species_image/169_acer_triflorum/medium/37535348714_80f57b2dc9_b.jpg	["Full sun","part shade"]	Average
170	Armstrong Maple	Acer x freemanii 'Armstrong'	\N	https://perenual.com/storage/species_image/170_acer_x_freemanii_armstrong/medium/10482927313_0306d993c3_b.jpg	["full sun"]	Average
171	Autumn Blaze Maple	Acer x freemanii 'Jeffersred'	\N	https://perenual.com/storage/species_image/171_acer_x_freemanii_jeffersred/medium/Acer_x_freemanii_Autumn_Blaze_5zz.jpg	["full sun"]	Average
172	Mimosa	Albizia julibrissin	"Silktree"	https://perenual.com/storage/species_image/172_albizia_julibrissin/medium/51755776916_8af064be1e_b.jpg	["full sun"]	Average
173	Ombrella™ Mimosa	Albizia julibrissin 'Boubri'	"Silktree"	https://perenual.com/storage/species_image/173_albizia_julibrissin_boubri/medium/Albizia_julibrissin_boubri.jpg	["full sun"]	Average
174	Summer Chocolate Mimosa	Albizia julibrissin 'Summer Chocolate'	"Silktree"	https://perenual.com/storage/species_image/174_albizia_julibrissin_summer_chocolate/medium/4846456933_a3fd8efe99_b.jpg	["full sun","part shade"]	Frequent
177	Ballerina Serviceberry	Amelanchier x grandiflora 'Ballerina'	\N	https://perenual.com/storage/species_image/177_amelanchier_x_grandiflora_ballerina/medium/Amelanchier_ovalis_fruits.jpg	["full sun","part shade"]	Frequent
178	Princess Diana Serviceberry	Amelanchier x grandiflora 'Princess Diana'	\N	https://perenual.com/storage/species_image/178_amelanchier_x_grandiflora_princess_diana/medium/Amelanchier_x_grandiflora_Autumn_Brilliance_11zz.jpg	["full sun","part shade"]	Average
179	Variegated Japanese Angelica Tree	Aralia elata 'Variegata'	\N	https://perenual.com/storage/species_image/179_aralia_elata_variegata/medium/25613108958_842b5c1a23_b.jpg	["full sun","part shade"]	Average
180	Monkey Puzzle Tree	Araucaria araucana	"Chilean Pine"	https://perenual.com/storage/species_image/180_araucaria_araucana/medium/36535778593_bc16b86591_b.jpg	["full sun","part shade"]	Average
181	Marina Strawberry Tree	Arbutus 'Marina'	\N	https://perenual.com/storage/species_image/181_arbutus_marina/medium/50783640608_7dfdc41b15_b.jpg	["full sun","part shade"]	Frequent
182	Pacific Madrone*	Arbutus menziesii	"Madrona; Bearberry; Strawberry Tree"	https://perenual.com/storage/species_image/182_arbutus_menziesii/medium/22374647353_94489902ef_b.jpg	["sun"]	Minimum
183	Strawberry Tree	Arbutus unedo	"Apple of Cain; Cane Apple"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part sun/part shade","sheltered"]	Average
184	Common Paw Paw	Asimina triloba	"Pawpaw Apple"	https://perenual.com/storage/species_image/184_asimina_triloba/medium/36488336082_9d0132fcd0_b.jpg	["full sun","part sun/part shade"]	Average
185	Crimson Frost Birch	Betula 'Crimson Frost'	\N	https://perenual.com/storage/species_image/185_betula_crimson_frost/medium/B._pubescens_f._rubra_2.jpg	["full sun","part shade"]	Frequent
186	River Birch	Betula nigra	"Red Birch"	https://perenual.com/storage/species_image/186_betula_nigra/medium/38242143172_2670c4b8e2_b.jpg	["full sun","part shade"]	Average
187	River Birch (clump)	Betula nigra '(clump)'	"Red Birch"	https://perenual.com/storage/species_image/187_betula_nigra_clump/medium/23420494494_ce4115fc2c_b.jpg	["full sun","part shade"]	Average
188	Summer Cascade Weeping River Birch	Betula nigra 'Summer Cascade'	"Red Birch"	https://perenual.com/storage/species_image/188_betula_nigra_summer_cascade/medium/Betula_nigra_Summer_Cascade_0zz.jpg	["Full sun","part shade"]	Average
189	Paper Birch	Betula papyrifera	"White Birch"	https://perenual.com/storage/species_image/189_betula_papyrifera/medium/29933086455_99ed2521e9_b.jpg	["full sun","part shade"]	Average
190	Clump Paper Birch	Betula papyrifera '(clump)'	"White Birch"	https://perenual.com/storage/species_image/190_betula_papyrifera_clump/medium/22580953798_d6404aaf4f_b.jpg	["full sun","part shade"]	Average
191	Whitespire Birch	Betula populifolia 'Whitespire'	"Betula platyphylla"	https://perenual.com/storage/species_image/191_betula_populifolia_whitespire/medium/Betula_populifolia_leaves.jpg	["part sun/part shade","full sun"]	Average
192	Whitebark Himalayan Birch	Betula utilis 'var. jacquemontii'	"White Bark Birch"	https://perenual.com/storage/species_image/192_betula_utilis_var_jacquemontii/medium/9020914937_f8664866cf_b.jpg	["full sun"]	Average
193	California Incense Cedar	Calocedrus decurrens	"Incensecedar"	https://perenual.com/storage/species_image/193_calocedrus_decurrens/medium/49153226872_1bf8feac75_b.jpg	["full sun","part shade"]	Minimum
194	European Hornbeam	Carpinus betulus	"Common Hornbeam"	https://perenual.com/storage/species_image/194_carpinus_betulus/medium/52308565694_a3de5a41fc_b.jpg	["full sun","part shade"]	Average
195	Pyramidal European Hornbeam	Carpinus betulus 'Fastigiata'	"Common Hornbeam"	https://perenual.com/storage/species_image/195_carpinus_betulus_fastigiata/medium/30411030511_d906cc7505_b.jpg	["full sun","part shade"]	Average
196	Frans Fontaine Hornbeam	Carpinus betulus 'Frans Fontaine'	"Common Hornbeam"	https://perenual.com/storage/species_image/196_carpinus_betulus_frans_fontaine/medium/49080668718_25410417d6_b.jpg	["full sun"]	Average
197	Weeping European Hornbeam	Carpinus betulus 'Pendula'	"Common Hornbeam"	https://perenual.com/storage/species_image/197_carpinus_betulus_pendula/medium/Carpinus_betulus_Pendula_1zz.jpg	["full sun","part sun/part shade"]	Average
198	Japanese Hornbeam	Carpinus japonica	\N	https://perenual.com/storage/species_image/198_carpinus_japonica/medium/21398773531_f81737abbd_b.jpg	["part shade","full shade"]	Average
199	Golden Catalpa	Catalpa bignonioides 'Aurea'	"Southern Catalpa"	https://perenual.com/storage/species_image/199_catalpa_bignonioides_aurea/medium/3772332964_5892151c41_b.jpg	["full sun","part shade"]	Average
200	Blue Atlas Cedar	Cedrus atlantica 'Glauca'	\N	https://perenual.com/storage/species_image/200_cedrus_atlantica_glauca/medium/3269092691_4eb979cf4f_b.jpg	["full sun","part shade"]	Average
201	Deodar Cedar	Cedrus deodara	"Himalayan Cedar"	https://perenual.com/storage/species_image/201_cedrus_deodara/medium/48834607038_84597f56f4_b.jpg	["full sun"]	Average
202	Golden Deodar Cedar	Cedrus deodara 'Aurea'	"Himalayan Cedar"	https://perenual.com/storage/species_image/202_cedrus_deodara_aurea/medium/Cedrus_deodara_Aurea_1zz.jpg	["full sun"]	Average
203	Bush's Electra Deodar Cedar	Cedrus deodara 'Bush's Electra'	"Himalayan Cedar"	https://perenual.com/storage/species_image/203_cedrus_deodara_bushs_electra/medium/Cedrus_deodara_11zz.jpg	["full sun","part sun/part shade"]	Average
204	Electra Blue Deodar Cedar	Cedrus deodara 'Electra Blue'	"Himalayan Cedar"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Average
205	Karl Fuchs Deodar Cedar	Cedrus deodara 'Karl Fuchs'	"Himalayan Cedar"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part sun/part shade"]	Average
206	Kashmir Deodar Cedar	Cedrus deodara 'Kashmir'	"Himalayan Cedar"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
207	Cedar of Lebanon	Cedrus libani	\N	https://perenual.com/storage/species_image/207_cedrus_libani/medium/52260831679_c28aa4f28b_b.jpg	["Full sun"]	Average
208	Green Prince Cedar of Lebanon	Cedrus libani 'Green Prince'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Frequent
209	Weeping Cedar of Lebanon	Cedrus libani 'Pendula'	\N	https://perenual.com/storage/species_image/209_cedrus_libani_pendula/medium/Cedrus_libani_ssp._atlantica_27Glauca_Pendula27_01_by_Line1.jpg	["full sun"]	Average
210	Katsura Tree	Cercidiphyllum japonicum	"Japanese katsura tree"	https://perenual.com/storage/species_image/210_cercidiphyllum_japonicum/medium/50082930431_17615cde29_b.jpg	["full sun","part shade"]	Average
211	Weeping Katsura Tree	Cercidiphyllum japonicum 'Pendulum'	"Japanese katsura tree"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
212	Red Fox Katsura Tree	Cercidiphyllum japonicum 'Rotfuchs'	"Japanese katsura tree"	https://perenual.com/storage/species_image/212_cercidiphyllum_japonicum_rotfuchs/medium/27820882255_7e1702e940_b.jpg	["full sun","part shade"]	Average
213	Eastern Redbud	Cercis canadensis	"Redbud"	https://perenual.com/storage/species_image/213_cercis_canadensis/medium/52077203823_d377f9fa30_b.jpg	["full sun","part sun/part shade"]	Average
214	Eastern Redbud (tree form)	Cercis canadensis '(tree form)'	"Redbud"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part sun/part shade"]	Average
215	White Redbud	Cercis canadensis 'Alba'	"Redbud"	https://perenual.com/storage/species_image/215_cercis_canadensis_alba/medium/photo-67301.jpg	["full sun","part sun/part shade"]	Average
216	Appalachian Red Redbud	Cercis canadensis 'Appalachian Red'	"Redbud"	https://perenual.com/storage/species_image/216_cercis_canadensis_appalachian_red/medium/Cercis_canadensis_Appalachian_Red_1zz.jpg	["full sun","part sun/part shade"]	Average
217	Forest Pansy Redbud	Cercis canadensis 'Forest Pansy'	"Redbud"	https://perenual.com/storage/species_image/217_cercis_canadensis_forest_pansy/medium/Cercis_canadensis_Forest_Pansy_12zz.jpg	["full sun","part sun/part shade"]	Average
218	Hearts of Gold Redbud	Cercis canadensis 'Hearts of Gold'	"Redbud"	https://perenual.com/storage/species_image/218_cercis_canadensis_hearts_of_gold/medium/14425560061_f6a897060a_b.jpg	["full sun","part sun/part shade"]	Average
219	Little Woody Redbud	Cercis canadensis 'Little Woody'	"Redbud"	https://perenual.com/storage/species_image/219_cercis_canadensis_little_woody/medium/52077684095_64ec5ea6bc_b.jpg	["full sun","part sun/part shade"]	Average
220	Lawson Falsecypress	Chamaecyparis lawsoniana	"Oregon Cedar"	https://perenual.com/storage/species_image/220_chamaecyparis_lawsoniana/medium/34686442254_df486708c1_b.jpg	["full sun","part shade"]	Average
221	Blue Nootka Cypress	Chamaecyparis nootkatensis 'Glauca'	"Alaska Cedar"	https://perenual.com/storage/species_image/221_chamaecyparis_nootkatensis_glauca/medium/47525210751_fb6933654b_b.jpg	["full sun"]	Average
222	Green Arrow Nootka Cypress	Chamaecyparis nootkatensis 'Green Arrow'	"Alaska Cedar"	https://perenual.com/storage/species_image/222_chamaecyparis_nootkatensis_green_arrow/medium/40232076023_6c39845594_b.jpg	["full sun","part sun/part shade"]	Average
223	Weeping Nootka Cypress	Chamaecyparis nootkatensis 'Pendula'	"Alaska Cedar"	https://perenual.com/storage/species_image/223_chamaecyparis_nootkatensis_pendula/medium/52620084612_4da3250360_b.jpg	["full sun","part sun/part shade"]	Average
224	Golden Hinoki Falsecypress	Chamaecyparis obtusa 'Aurea'	\N	https://perenual.com/storage/species_image/224_chamaecyparis_obtusa_aurea/medium/15186635347_ef236599e6_b.jpg	["full sun","part shade"]	Average
225	Compact Hinoki Falsecypress	Chamaecyparis obtusa 'Compacta'	\N	https://perenual.com/storage/species_image/225_chamaecyparis_obtusa_compacta/medium/49107312326_49bb996d6f_b.jpg	["full sun","part shade"]	Average
226	Cripps Gold Falsecypress	Chamaecyparis obtusa 'Crippsii'	\N	https://perenual.com/storage/species_image/226_chamaecyparis_obtusa_crippsii/medium/21833566952_8169553574_b.jpg	["full sun","part shade"]	Average
227	Well's Special Hinoki Falsecypress	Chamaecyparis obtusa 'Well's Special'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
228	Threadleaf Falsecypress	Chamaecyparis pisifera 'Filifera'	"Japanese Falsecypress"	https://perenual.com/storage/species_image/228_chamaecyparis_pisifera_filifera/medium/52489181018_74c963179f_b.jpg	["full sun","part sun/part shade"]	Average
229	Red Star Whitecedar	Chamaecyparis thyoides 'Red Star'	"Whitecedar Falsecypress"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
230	Chinese Fringetree	Chionanthus retusus	"Fringe Tree"	https://perenual.com/storage/species_image/230_chionanthus_retusus/medium/41017945655_b2552295b1_b.jpg	["Full sun","part shade"]	Average
231	White Fringetree	Chionanthus virginicus	"Old Man's Beard"	https://perenual.com/storage/species_image/231_chionanthus_virginicus/medium/35032739335_86d889142c_b.jpg	["full sun","part shade"]	Average
232	Morning Cloud Chitalpa	Chitalpa 'Morning Cloud'	\N	https://perenual.com/storage/species_image/232_chitalpa_morning_cloud/medium/Chitalpa_tashkentensis_28829.jpg	["full sun","part shade"]	Average
233	Pink Dawn Chitalpa	Chitalpa 'Pink Dawn'	\N	https://perenual.com/storage/species_image/233_chitalpa_pink_dawn/medium/44494478104_84a199124b_b.jpg	["full sun","part shade"]	Average
234	Harlequin Glorybower	Clerodendrum trichotomum	"Clerodendron"	https://perenual.com/storage/species_image/234_clerodendrum_trichotomum/medium/10059423085_a1683382f4_b.jpg	["full sun","part shade"]	Average
235	Torbay Dazzler Grass Palm	Cordyline australis 'Torbay Dazzler'	"Cabbage Palm"	https://perenual.com/storage/species_image/235_cordyline_australis_torbay_dazzler/medium/dracaena-foliage-green-variegated.jpg	["full sun","part shade"]	Frequent
236	Constellation Flowering Dogwood	Cornus 'Constellation'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Frequent
237	Eddie's White Wonder Flowering Dogwood	Cornus 'Eddie's White Wonder'	\N	https://perenual.com/storage/species_image/237_cornus_eddies_white_wonder/medium/3497141397_f4eb9efc32_b.jpg	["Filtered shade"," Full sun"," Part sun/part shade"]	Average
238	Aurora Flowering Dogwood	Cornus 'Rutban'	\N	https://perenual.com/storage/species_image/238_cornus_rutban/medium/Cornus_Eddie27s_White_Wonder_02.jpg	["full sun","part shade"]	Frequent
239	Celestial Flowering Dogwood	Cornus 'Rutdan'	\N	https://perenual.com/storage/species_image/239_cornus_rutdan/medium/11168985864_b1db1e7b58_b.jpg	["full sun","part shade"]	Frequent
240	Stellar Pink Flowering Dogwood	Cornus 'Stellar Pink'	\N	https://perenual.com/storage/species_image/240_cornus_stellar_pink/medium/2560px-Wzwz_tree_15d_Cornus_florida_27Cherokee_Brave27.jpg	["full sun","part shade"]	Average
241	Venus Flowering Dogwood	Cornus 'Venus'	"Hybrid Dogwood"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
242	Pagoda Dogwood	Cornus alternifolia	\N	https://perenual.com/storage/species_image/242_cornus_alternifolia/medium/21390477415_d07c2f4558_b.jpg	["full sun","part sun/part shade","part shade"]	Average
243	Variegated Pagoda Dogwood	Cornus alternifolia 'Argentea'	\N	https://perenual.com/storage/species_image/243_cornus_alternifolia_argentea/medium/21390477415_d07c2f4558_b.jpg	["full sun","part sun/part shade"]	Average
244	Variegated Giant Dogwood	Cornus controversa 'Variegata'	"Wedding Cake Tree"	https://perenual.com/storage/species_image/244_cornus_controversa_variegata/medium/15744030781_92520e1a0d_b.jpg	["full sun","part shade"]	Frequent
245	Cherokee Brave Flowering Dogwood	Cornus florida 'Cherokee Brave'	\N	https://perenual.com/storage/species_image/245_cornus_florida_cherokee_brave/medium/2560px-Cornus_florida_var._rubra_Cherokee_Brave_4zz.jpg	["full sun","part sun/part shade"]	Average
246	Cherokee Chief Flowering Dogwood	Cornus florida 'Cherokee Chief'	\N	https://perenual.com/storage/species_image/246_cornus_florida_cherokee_chief/medium/51275757028_2dd85e696e_b.jpg	["full sun","part sun/part shade"]	Average
247	Cherokee Daybreak Flowering Dogwood	Cornus florida 'Cherokee Daybreak'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part sun/part shade"]	Average
248	Cherokee Princess Flowering Dogwood	Cornus florida 'Cherokee Princess'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"," Part sun/part shade"]	Average
249	Cherokee Sunset Flowering Dogwood	Cornus florida 'Cherokee Sunset'	\N	https://perenual.com/storage/species_image/249_cornus_florida_cherokee_sunset/medium/486533861_a730502cab_b.jpg	["full sun","part sun/part shade"]	Average
250	Red Flowering Dogwood	Cornus florida 'var. rubra'	\N	https://perenual.com/storage/species_image/250_cornus_florida_var_rubra/medium/10108500273_70c8821e33_b.jpg	["Full sun"," Part sun/part shade"]	Average
252	Blue Shadow Chinese Dogwood	Cornus kousa 'Blue Shadow'	"Kousa Dogwood"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
253	China Girl Chinese Dogwood	Cornus kousa 'China Girl'	"Kousa Dogwood"	https://perenual.com/storage/species_image/253_cornus_kousa_china_girl/medium/3024px-Cornus_kousa_27China_Girl27_fruit.jpg	["part shade","part sun/part shade"]	Frequent
254	Heart Throb Chinese Dogwood	Cornus kousa 'Heart Throb'	"Kousa Dogwood"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
255	Milky Way Chinese Dogwood	Cornus kousa 'Milky Way'	"Kousa Dogwood"	https://perenual.com/storage/species_image/255_cornus_kousa_milky_way/medium/14148254128_6b3a016d1d_b.jpg	["Full sun","part shade"]	Average
256	National Chinese Dogwood	Cornus kousa 'National'	"Kousa Dogwood"	https://perenual.com/storage/species_image/256_cornus_kousa_national/medium/2560px-Cornus_kousa_27National27_kz2.jpg	["Full sun","part shade"]	Average
257	Samaritan Chinese Dogwood	Cornus kousa 'Samaritan'	"Kousa Dogwood"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
258	Satomi Chinese Dogwood	Cornus kousa 'Satomi'	"Kousa Dogwood"	https://perenual.com/storage/species_image/258_cornus_kousa_satomi/medium/15624067409_f5ed702740_b.jpg	["full sun","part shade"]	Average
259	Starlight Chinese Dogwood	Cornus kousa 'Starlight'	"Kousa Dogwood"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
261	Wolf Eyes Chinese Dogwood	Cornus kousa 'Wolf Eyes'	"Kousa Dogwood"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
262	Cornelian Cherry Dogwood	Cornus mas	"Cornelian cherry"	https://perenual.com/storage/species_image/262_cornus_mas/medium/51984552479_dcbda153b0_b.jpg	["full sun","part shade"]	Average
263	Golden Cornelian Cherry Dogwood	Cornus mas 'Aurea'	"Cornelian cherry"	https://perenual.com/storage/species_image/263_cornus_mas_aurea/medium/29887979954_a6f7864a41_b.jpg	["Full sun","part shade"]	Average
264	Variegated Cornelian Cherry Dogwood	Cornus mas 'Variegata'	"Cornelian cherry"	https://perenual.com/storage/species_image/264_cornus_mas_variegata/medium/4845666615_ab34c5d815_b.jpg	["full sun","part shade"]	Average
265	Paul's Scarlet English Hawthorn	Crataegus laevigata 'Paul's Scarlet'	\N	https://perenual.com/storage/species_image/265_crataegus_laevigata_pauls_scarlet/medium/17848776008_0e65097046_b.jpg	["Full sun"]	Frequent
266	Japanese Cedar	Cryptomeria japonica	\N	https://perenual.com/storage/species_image/266_cryptomeria_japonica/medium/51941933370_9cda81ee96_b.jpg	["Full sun"," Part sun/part shade"," Sheltered"]	Average
267	Yoshino Japanese Cedar	Cryptomeria japonica 'Yoshino'	\N	https://perenual.com/storage/species_image/267_cryptomeria_japonica_yoshino/medium/49367942972_e1ec0a2c2a_b.jpg	["Full sun"," Part sun/part shade"," Sheltered"]	Average
268	Leyland Cypress	Cupressocyparis x leylandii	\N	https://perenual.com/storage/species_image/268_cupressocyparis_x_leylandii/medium/9630542798_71401c187b_b.jpg	["full sun","part shade"]	Frequent
269	Castlewellan Leyland Cypress	Cupressocyparis x leylandii 'Castlewellan'	"Golden Leyland Cypress"	https://perenual.com/storage/species_image/269_cupressocyparis_x_leylandii_castlewellan/medium/20098146010_c49a33d49a_b.jpg	["full sun","part shade"]	Frequent
270	Gold Rider Leyland Cypress	Cupressocyparis x leylandii 'Gold Rider'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
271	Naylor's Blue Leyland Cypress	Cupressocyparis x leylandii 'Naylor's Blue'	"x Cupressocyparis leylandii"	https://perenual.com/storage/species_image/271_cupressocyparis_x_leylandii_naylors_blue/medium/Cupressocyparis_leylandii_27Naylor27s_Blue27_OB_WrocC582aw.jpg	["full sun","part shade"]	Average
272	Dove Tree	Davidia involucrata	"Handkerchief Tree"	https://perenual.com/storage/species_image/272_davidia_involucrata/medium/13974632906_00944d84ab_b.jpg	["full sun","part shade"]	Average
273	Japanese Persimmon	Diospyros kaki	"syn. D. chinensis Blume"	https://perenual.com/storage/species_image/273_diospyros_kaki/medium/3076409231_18ecb6c96c_b.jpg	["full sun","part shade"]	Average
274	Common Persimmon	Diospyros virginiana	"American Persimmon"	https://perenual.com/storage/species_image/274_diospyros_virginiana/medium/49014714943_39e9d002d6_b.jpg	["full sun"]	Average
275	Mountain Pepper	Drimys lanceolata	"Cornish Pepper Leaf"	https://perenual.com/storage/species_image/275_drimys_lanceolata/medium/7521641388_439c6a4249_b.jpg	["Full sun","part shade"]	Average
276	Russian Olive	Elaeagnus angustifolia	"Oleaster"	https://perenual.com/storage/species_image/276_elaeagnus_angustifolia/medium/52137686162_6f2b4ee880_b.jpg	["Full sun"]	Average
277	Japanese Blueberry Tree	Elaeocarpus decipiens	\N	https://perenual.com/storage/species_image/277_elaeocarpus_decipiens/medium/2560px-Elaeocarpus_decipiens_at_Mounts_Botanical_Garden.jpg	["full sun","part shade"]	Average
278	Loquat	Eriobotrya japonica	"Japanese Plum"	https://perenual.com/storage/species_image/278_eriobotrya_japonica/medium/24454831223_358eb14c7c_b.jpg	["full sun","part sun/part shade"]	Minimum
279	Spindle Tree	Euonymus europaeus	"European Euonymus"	https://perenual.com/storage/species_image/279_euonymus_europaeus/medium/51874550173_6464be3133_b.jpg	["Filtered shade"," Full sun"," Part sun/part shade"]	Average
280	Dawyck Gold Beech	Fagus sylvatica 'Dawyck Gold'	"Golden Fastigiate Beech"	https://perenual.com/storage/species_image/280_fagus_sylvatica_dawyck_gold/medium/28664584202_1248ff5994_b.jpg	["full sun"]	Average
281	Dawyck Purple Beech	Fagus sylvatica 'Dawyck Purple'	"Golden Fastigiate Beech"	https://perenual.com/storage/species_image/281_fagus_sylvatica_dawyck_purple/medium/28664584202_1248ff5994_b.jpg	["Full sun"]	Average
282	Pyramidal Beech	Fagus sylvatica 'Fastigiata'	"Golden Fastigiate Beech"	https://perenual.com/storage/species_image/282_fagus_sylvatica_fastigiata/medium/10193804954_b05a2570a2_b.jpg	["Full sun"]	Average
283	Weeping Beech	Fagus sylvatica 'Pendula'	"Golden Fastigiate Beech"	https://perenual.com/storage/species_image/283_fagus_sylvatica_pendula/medium/19587450910_1021b9631b_b.jpg	["full sun"]	Average
284	Purple Fountain Beech	Fagus sylvatica 'Purple Fountain'	"Golden Fastigiate Beech"	https://perenual.com/storage/species_image/284_fagus_sylvatica_purple_fountain/medium/29804200687_14171f7be1_b.jpg	["full sun"]	Average
285	Purple Beech	Fagus sylvatica 'Purpurea'	"Golden Fastigiate Beech"	https://perenual.com/storage/species_image/285_fagus_sylvatica_purpurea/medium/51873514672_fc33f7f178_b.jpg	["Full sun"]	Average
286	Weeping Purple Beech	Fagus sylvatica 'Purpurea Pendula'	"Golden Fastigiate Beech"	https://perenual.com/storage/species_image/286_fagus_sylvatica_purpurea_pendula/medium/51270296275_da835d770d_b.jpg	["full sun"]	Average
287	Red Obelisk Beech	Fagus sylvatica 'Red Obelisk'	"Golden Fastigiate Beech"	https://perenual.com/storage/species_image/287_fagus_sylvatica_red_obelisk/medium/19356604042_6a3907bf8d_b.jpg	["full sun"]	Frequent
288	Common Fig	Ficus carica	"garden fig"	https://perenual.com/storage/species_image/288_ficus_carica/medium/52377169610_b7a247a378_b.jpg	["full sun","part sun/part shade"]	Minimum
289	Kadota Fig	Ficus carica 'Kadota'	"garden fig"	https://perenual.com/storage/species_image/289_ficus_carica_kadota/medium/48265972037_27e005c4ab_b.jpg	["full sun"]	Average
290	Mission Fig	Ficus carica 'Mission'	"garden fig"	https://perenual.com/storage/species_image/290_ficus_carica_mission/medium/Fig.jpg	["full sun","part shade"]	Average
291	Peter's Honey Fig	Ficus carica 'Peter's Honey'	"garden fig"	https://perenual.com/storage/species_image/291_ficus_carica_peters_honey/medium/Ficus_carica5.jpg	["full sun"]	Average
292	Franklin Tree	Franklinia alatamaha	"Franklinia Tree"	https://perenual.com/storage/species_image/292_franklinia_alatamaha/medium/36261306500_b5a32c9770_b.jpg	["full sun","part shade"]	Average
293	Fallgold Black Ash	Fraxinus nigra 'Fallgold'	"swamp ash"	https://perenual.com/storage/species_image/293_fraxinus_nigra_fallgold/medium/8740535204_aa4b907d99_b.jpg	["full sun","part sun/part shade"]	Average
294	Leprechaun Green Ash	Fraxinus pennsylvanica 'Leprechaun'	"Red Ash"	https://perenual.com/storage/species_image/294_fraxinus_pennsylvanica_leprechaun/medium/5107486573_c4161ac946_b.jpg	["full sun"]	Average
295	Patmore Green Ash	Fraxinus pennsylvanica 'Patmore'	"Red Ash"	https://perenual.com/storage/species_image/295_fraxinus_pennsylvanica_patmore/medium/Fraxinus_pennsylvanica_28510748614729.jpg	["full sun"]	Average
296	Ginkgo	Ginkgo biloba	"Maidenhair Tree"	https://perenual.com/storage/species_image/296_ginkgo_biloba/medium/45919245951_080f8dcbb6_b.jpg	["Full sun"]	Average
297	Autumn Gold Ginkgo	Ginkgo biloba 'Autumn Gold'	"Maidenhair Tree"	https://perenual.com/storage/species_image/297_ginkgo_biloba_autumn_gold/medium/2560px-Ginkgo_biloba_27Autumn_Gold27_habitus_in_herfst.jpg	["full sun"]	Average
298	Magyar Ginkgo	Ginkgo biloba 'Magyar'	"Maidenhair Tree"	https://perenual.com/storage/species_image/298_ginkgo_biloba_magyar/medium/Feuilles_de_Ginkgo_biloba_en_automne.jpg	["Full sun"]	Average
299	Princeton Sentry Ginkgo	Ginkgo biloba 'Princeton Sentry'	"Maidenhair Tree"	https://perenual.com/storage/species_image/299_ginkgo_biloba_princeton_sentry/medium/10447348824_071fbea762_b.jpg	["full sun"]	Average
300	Saratoga Ginkgo	Ginkgo biloba 'Saratoga'	"Maidenhair Tree"	https://perenual.com/storage/species_image/300_ginkgo_biloba_saratoga/medium/28520280130_eefbda4bfb_b.jpg	["full sun"]	Frequent
301	Sunburst Honeylocust	Gleditsia triacanthos 'Suncole'	\N	https://perenual.com/storage/species_image/301_gleditsia_triacanthos_suncole/medium/Gleditsia_triacanthos_in_Donetsk_2.jpg	["Full sun"]	Average
302	Sea Buckthorn	Hippophae rhamnoides	"Russian Sandthorn"	https://perenual.com/storage/species_image/302_hippophae_rhamnoides/medium/52351803927_d0e7a40c57_b.jpg	["full sun"]	Frequent
303	Tree Form Pee Gee Hydrangea	Hydrangea paniculata 'Grandiflora (tree form)'	"P.G. Hydrangea"	https://perenual.com/storage/species_image/303_hydrangea_paniculata_grandiflora_tree_form/medium/Hydrangea_paniculata_27Grandiflora27_kz3.jpg	["full sun","part sun/part shade"]	Average
304	Limelight Hydrangea (tree form)	Hydrangea paniculata 'Limelight (tree form)'	"P.G. Hydrangea"	https://perenual.com/storage/species_image/304_hydrangea_paniculata_limelight_tree_form/medium/Hydrangea_paniculata_03_ies.jpg	["filtered shade","full sun"]	Frequent
305	Pink Diamond Hydrangea (tree form)	Hydrangea paniculata 'Pink Diamond (tree form)'	"P.G. Hydrangea"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part sun/part shade"]	Average
306	Tardiva Hydrangea (tree form)	Hydrangea paniculata 'Tardiva (tree form)'	"P.G. Hydrangea"	https://perenual.com/storage/species_image/306_hydrangea_paniculata_tardiva_tree_form/medium/2560px-Hydrangea_paniculata_IMG_6629.jpg	["Filtered shade"," Full sun"]	Average
307	Carpathian English Walnut	Juglans regia 'Carpathian'	"Common Walnut"	https://perenual.com/storage/species_image/307_juglans_regia_carpathian/medium/nut-walnut-walnut-tree-tree.jpg	["full sun"]	Frequent
308	Blue Chip Juniper (tree form)	Juniperus horizontalis 'Blue Chip (tree form)'	\N	https://perenual.com/storage/species_image/308_juniperus_horizontalis_blue_chip_tree_form/medium/Dwarf_juniper_tree_in_Yenicekale_01.jpg	["full sun","part sun/part shade"]	Minimum
309	Dwarf Japanese garden Juniper (tree form)	Juniperus procumbens 'Nana (tree form)'	"Japgarden Juniper"	https://perenual.com/storage/species_image/309_juniperus_procumbens_nana_tree_form/medium/46569652812_99306626ca_b.jpg	["full sun","part sun/part shade"]	Average
310	Rocky Mountain Juniper	Juniperus scopulorum	"Colorado Redcedar"	https://perenual.com/storage/species_image/310_juniperus_scopulorum/medium/52135945052_215b8a8fbf_b.jpg	["Full sun"]	Average
311	Blue Star Juniper	Juniperus squamata 'Blue Star (tree form)'	"Singleseed Juniper"	https://perenual.com/storage/species_image/311_juniperus_squamata_blue_star_tree_form/medium/52579851871_5ee59e67dd_b.jpg	["full sun","part sun/part shade"]	Average
312	Daub's Frosted Juniper (tree form)	Juniperus x media 'Daub's Frosted (tree form)'	\N	https://perenual.com/storage/species_image/312_juniperus_x_media_daubs_frosted_tree_form/medium/46569652812_99306626ca_b.jpg	["full sun","part shade"]	Frequent
313	Golden Rain Tree	Koelreuteria paniculata	"Varnish Tree"	https://perenual.com/storage/species_image/313_koelreuteria_paniculata/medium/52179977604_1257d15a3b_b.jpg	["Full sun"]	Average
314	Coral Sun Golden Rain Tree	Koelreuteria paniculata 'Coral Sun'	"Varnish Tree"	https://perenual.com/storage/species_image/314_koelreuteria_paniculata_coral_sun/medium/800px-Koelreuteria_paniculata_JPG1H.jpg	["full sun"]	Average
315	Weeping Laburnum	Laburnum x watereri 'Pendulum'	"Golden Chain Tree"	https://perenual.com/storage/species_image/315_laburnum_x_watereri_pendulum/medium/Laburnum_x_watereri_Vossii_0zz.jpg	["full sun","part shade"]	Average
316	Vossii Laburnum	Laburnum x watereri 'Vossii'	"Golden Chain Tree"	https://perenual.com/storage/species_image/316_laburnum_x_watereri_vossii/medium/3518869127_6f86c8e26e_b.jpg	["full sun","part shade"]	Frequent
317	Near East Crapemyrtle	Lagerstroemia indica 'Near East'	"Crape Myrtle"	https://perenual.com/storage/species_image/317_lagerstroemia_indica_near_east/medium/3584863665_1fc057a714_b.jpg	["full sun"]	Frequent
318	Bay Laurel	Laurus nobilis	"Sweet Bay"	https://perenual.com/storage/species_image/318_laurus_nobilis/medium/24776239912_a8a8ce8368_b.jpg	["full sun","part sun/part shade"]	Minimum
319	Sweet Gum	Liquidambar styraciflua	"American Sweet Gum"	https://perenual.com/storage/species_image/319_liquidambar_styraciflua/medium/52423149590_da255cc041_b.jpg	["full sun"]	Average
320	Round Leaf Sweet Gum	Liquidambar styraciflua 'Rotundiloba'	"American Sweet Gum"	https://perenual.com/storage/species_image/320_liquidambar_styraciflua_rotundiloba/medium/2560px-Liquidambar_styraciflua_Rotundiloba_3zz.jpg	["full sun"]	Average
321	Silver King Sweet Gum	Liquidambar styraciflua 'Silver King'	"American Sweet Gum"	https://perenual.com/storage/species_image/321_liquidambar_styraciflua_silver_king/medium/Liquidambar_styraciflua_Silver_King_1zz.jpg	["full sun"]	Average
322	Slender Silhouette Sweet Gum	Liquidambar styraciflua 'Slender Silhouette'	"American Sweet Gum"	https://perenual.com/storage/species_image/322_liquidambar_styraciflua_slender_silhouette/medium/Liquidambar_styraciflua_Slender_Silhouette_2zz.jpg	["full sun"]	Average
323	Worplesdon Sweet Gum	Liquidambar styraciflua 'Worplesdon'	"American Sweet Gum"	https://perenual.com/storage/species_image/323_liquidambar_styraciflua_worplesdon/medium/2560px-Baden-Baden-Liquidambar_styraciflua-48-Amberbaum-Frucht-Laub-2013-gje.jpg	["full sun"]	Minimum
324	Tuliptree	Liriodendron tulipifera	"Tulip Magnolia"	https://perenual.com/storage/species_image/324_liriodendron_tulipifera/medium/2048px-Liriodendron_tulipifera_tulip_close.jpg	["Full sun"]	Average
325	Arnold Tuliptree	Liriodendron tulipifera 'Arnold'	"Tulip Magnolia"	https://perenual.com/storage/species_image/325_liriodendron_tulipifera_arnold/medium/37501584912_34ff5d863e_b.jpg	["Full sun"]	Average
326	Yellow Variegated Tuliptree	Liriodendron tulipifera 'Aureomarginatum'	"Tulip Magnolia"	https://perenual.com/storage/species_image/326_liriodendron_tulipifera_aureomarginatum/medium/5868813038_0c152d9e15_b.jpg	["full sun"]	Minimum
327	Fastigiatum Tuliptree	Liriodendron tulipifera 'Fastigiatum'	"Tulip Magnolia"	https://perenual.com/storage/species_image/327_liriodendron_tulipifera_fastigiatum/medium/2048px-Liriodendron_tulipifera_tulip_close.jpg	["full sun"]	Frequent
328	Butterflies Magnolia	Magnolia 'Butterflies'	\N	https://perenual.com/storage/species_image/328_magnolia_butterflies/medium/magnolia-yellow-blossom-magnolia-acuminata-butterflies-magnoliengewaechs-bloom.jpg	["Full sun","part shade"]	Average
329	Daybreak Magnolia	Magnolia 'Daybreak'	\N	https://perenual.com/storage/species_image/329_magnolia_daybreak/medium/magnolia-blue-skies-spring.jpg	["full sun","part shade"]	Average
330	Elizabeth Magnolia	Magnolia 'Elizabeth'	\N	https://perenual.com/storage/species_image/330_magnolia_elizabeth/medium/47030569101_8ff0b0310a_b.jpg	["full sun","part shade"]	Average
331	Gold Star Magnolia	Magnolia 'Gold Star'	\N	https://perenual.com/storage/species_image/331_magnolia_gold_star/medium/2560px-Magnolia_Gold_Star_2022-04-28_8652.jpg	["full sun"]	Average
332	Golden Gift Magnolia	Magnolia 'Golden Gift'	\N	https://perenual.com/storage/species_image/332_magnolia_golden_gift/medium/2560px-Yellow_magnolia.jpg	["full sun","part shade"]	Average
333	Marilyn Magnolia	Magnolia 'Marilyn'	\N	https://perenual.com/storage/species_image/333_magnolia_marilyn/medium/pexels-photo-4099162.jpg	["full sun","part shade"]	Average
334	Rose Marie Magnolia	Magnolia 'Rose Marie'	"Rosemarie Magnolia"	https://perenual.com/storage/species_image/334_magnolia_rose_marie/medium/Magnolia_C397_soulangeana_BW_1.jpg	["full sun","part shade"]	Minimum
335	Star Wars Magnolia	Magnolia 'Star Wars'	\N	https://perenual.com/storage/species_image/335_magnolia_star_wars/medium/2560px-Flower_of_magnolia_Star_wars.jpg	["full sun"]	Frequent
336	Sunburst Magnolia	Magnolia 'Sunburst'	\N	https://perenual.com/storage/species_image/336_magnolia_sunburst/medium/2560px-Yellow_magnolia.jpg	["full sun"]	Average
337	Yellow Bird Magnolia	Magnolia 'Yellow Bird'	\N	https://perenual.com/storage/species_image/337_magnolia_yellow_bird/medium/7384703532_7b3c58347a_b.jpg	["full sun","part shade"]	Average
338	Yulan Magnolia	Magnolia denudata	"Yulan magnolia"	https://perenual.com/storage/species_image/338_magnolia_denudata/medium/51855171944_403ed9f976_b.jpg	["full sun","part shade"]	Average
339	Southern Magnolia	Magnolia grandiflora	"Bull Bay"	https://perenual.com/storage/species_image/339_magnolia_grandiflora/medium/48132372757_ea96e7aa50_b.jpg	["Full sun","part shade"]	Average
340	Bracken's Brown Beauty Magnolia	Magnolia grandiflora 'Bracken's Brown Beauty'	"Bull Bay"	https://perenual.com/storage/species_image/340_magnolia_grandiflora_brackens_brown_beauty/medium/21530242714_d0662b679a_b.jpg	["full sun","part shade"]	Average
341	D.D. Blanchard Magnolia	Magnolia grandiflora 'D.D. Blanchard'	"Bull Bay"	https://perenual.com/storage/species_image/341_magnolia_grandiflora_dd_blanchard/medium/Magnolia_grandiflora_-_flower_1.jpg	["Full sun","part shade"]	Average
342	Little Gem Magnolia	Magnolia grandiflora 'Little Gem'	"Bull Bay"	https://perenual.com/storage/species_image/342_magnolia_grandiflora_little_gem/medium/2560px-thumbnail.jpg	["Full sun","part shade"]	Average
343	Teddy Bear® Magnolia	Magnolia grandiflora 'Southern Charm'	"Bull Bay"	https://perenual.com/storage/species_image/343_magnolia_grandiflora_southern_charm/medium/Magnolia_grandiflora_flower.jpg	["full sun","part shade"]	Average
344	Kobus Magnolia	Magnolia kobus	\N	https://perenual.com/storage/species_image/344_magnolia_kobus/medium/17143034688_9b3104719b_b.jpg	["full sun","part sun/part shade"]	Average
345	Wada's Memory Magnolia	Magnolia kobus 'Wada's Memory'	\N	https://perenual.com/storage/species_image/345_magnolia_kobus_wadas_memory/medium/flowers_white_white_flowers_nature_green_blossoms_spring_bloom-636471.jpg	["full sun","part sun/part shade"]	Frequent
346	Oyama Magnolia	Magnolia sieboldii	"Siebold's Magnolia"	https://perenual.com/storage/species_image/346_magnolia_sieboldii/medium/51202061229_74b794b96c_b.jpg	["full sun"]	Average
347	Leonard Messel Magnolia	Magnolia x loebneri 'Leonard Messel'	\N	https://perenual.com/storage/species_image/347_magnolia_x_loebneri_leonard_messel/medium/46116900715_8f58d82c01_b.jpg	["Full sun"]	Average
348	Merrill Magnolia	Magnolia x loebneri 'Merrill'	\N	https://perenual.com/storage/species_image/348_magnolia_x_loebneri_merrill/medium/51928821369_9ec6298a22_b.jpg	["full sun"]	Frequent
349	Alexandrina Saucer Magnolia	Magnolia x soulangeana 'Alexandrina'	\N	https://perenual.com/storage/species_image/349_magnolia_x_soulangeana_alexandrina/medium/magnolia-magnolia-tree-flowers-magnoliengewaechs.jpg	["full sun","part sun/part shade"]	Average
350	Rustica Rubra Magnolia	Magnolia x soulangeana 'Rustica Rubra'	\N	https://perenual.com/storage/species_image/350_magnolia_x_soulangeana_rustica_rubra/medium/9252384031_bb4ecbfc97_b.jpg	["full sun","part sun/part shade"]	Average
351	Akane Apple	Malus 'Akane'	\N	https://perenual.com/storage/species_image/351_malus_akane/medium/800px-Akane-Pomme-20141026.jpg	["full sun"]	Frequent
352	Ambrosia Apple	Malus 'Ambrosia'	\N	https://perenual.com/storage/species_image/352_malus_ambrosia/medium/30356393327_b96daa22cb_b.jpg	["full sun"]	Average
353	Belle de Boskoop Apple	Malus 'Belle de Boskoop'	\N	https://perenual.com/storage/species_image/353_malus_belle_de_boskoop/medium/337214c7b72a8b61ca79685f9ebe-1633146.jpg	["full sun"]	Frequent
354	Braeburn Apple	Malus 'Braeburn'	\N	https://perenual.com/storage/species_image/354_malus_braeburn/medium/26257641106_44b6973b16_b.jpg	["full sun","filtered shade"]	Frequent
355	Candied Apple Flowering Crab	Malus 'Candied Apple'	"Roseybloom"	https://perenual.com/storage/species_image/355_malus_candied_apple/medium/663px-Apples_on_tree_2021_G1.jpg	["full sun","part shade"]	Average
356	Chehalis Apple	Malus 'Chehalis'	\N	https://perenual.com/storage/species_image/356_malus_chehalis/medium/apple_garden_apfelernte_green_red_apple_tree_autumn_pick_food-689389.jpg	["full sun"]	Average
357	Cortland Apple	Malus 'Cortland'	\N	https://perenual.com/storage/species_image/357_malus_cortland/medium/Talvenauding.jpg	["full sun"]	Frequent
358	Cox's Orange Pippin Apple	Malus 'Cox's Orange Pippin'	"Cox Orange"	https://perenual.com/storage/species_image/358_malus_coxs_orange_pippin/medium/Cox_orange_renette2.jpg	["full sun"]	Frequent
359	Dolgo Apple	Malus 'Dolgo'	"Roseybloom"	https://perenual.com/storage/species_image/359_malus_dolgo/medium/apple-zieraepfel-wild-apple-tree-branch.jpg	["full sun"]	Average
360	Donald Wyman Flowering Crab	Malus 'Donald Wyman'	"Roseybloom"	https://perenual.com/storage/species_image/360_malus_donald_wyman/medium/frembellishment_apple_small_694055-image-kybdt6db.jpg	["full sun"]	Average
361	Elstar Apple	Malus 'Elstar'	\N	https://perenual.com/storage/species_image/361_malus_elstar/medium/garden-apple-tree-fruit-harvest.jpg	["full sun"]	Average
362	Gala Apple	Malus 'Gala'	\N	https://perenual.com/storage/species_image/362_malus_gala/medium/50860295937_612a404fc9_b.jpg	["full sun"]	Frequent
363	Golden Delicious Apple	Malus 'Golden Delicious'	\N	https://perenual.com/storage/species_image/363_malus_golden_delicious/medium/49974806732_27600746d1_b.jpg	["full sun","part shade"]	Frequent
364	Golden Russet Apple	Malus 'Golden Russet'	\N	https://perenual.com/storage/species_image/364_malus_golden_russet/medium/Malus_sylvestris_005.jpg	["full sun"]	Frequent
365	Granny Smith Apple	Malus 'Granny Smith'	\N	https://perenual.com/storage/species_image/365_malus_granny_smith/medium/52433732205_15e7af9d98_b.jpg	["full sun"]	Frequent
366	Gravenstein Apple	Malus 'Gravenstein'	\N	https://perenual.com/storage/species_image/366_malus_gravenstein/medium/Malus-Shampion.jpg	["full sun","part sun/part shade"]	Average
367	Honeycrisp Apple	Malus 'Honeycrisp'	\N	https://perenual.com/storage/species_image/367_malus_honeycrisp/medium/SweeTango_apple_harvest_2010.jpg	["full sun"]	Frequent
368	Jonagold Apple	Malus 'Jonagold'	\N	https://perenual.com/storage/species_image/368_malus_jonagold/medium/3968289043_ec00297a19_b.jpg	["full sun"]	Average
369	Jonathan Apple	Malus 'Jonathan'	\N	https://perenual.com/storage/species_image/369_malus_jonathan/medium/3896656299_a4328986e4_b.jpg	["full sun","part shade"]	Frequent
370	Liberty Apple	Malus 'Liberty'	\N	https://perenual.com/storage/species_image/370_malus_liberty/medium/Malus-Berner-Rosenapfel_27.08.2012.jpg	["full sun","part shade"]	Frequent
371	Lodi Apple	Malus 'Lodi'	\N	https://perenual.com/storage/species_image/371_malus_lodi/medium/2560px-PapierC3B3wka_owoce_na_gaC582C499ziach.jpg	["full sun"]	Frequent
372	Louisa Flowering Crab	Malus 'Louisa'	"Roseybloom"	https://perenual.com/storage/species_image/372_malus_louisa/medium/10362143644_d44b00de9e_b.jpg	["full sun"]	Average
373	Macintosh Apple	Malus 'Macintosh'	\N	https://perenual.com/storage/species_image/373_malus_macintosh/medium/515px-Malus_Nela.jpg	["full sun","part shade"]	Frequent
374	Melrose Apple	Malus 'Melrose'	\N	https://perenual.com/storage/species_image/374_malus_melrose/medium/50860213661_1b84b33396_b.jpg	["full sun"]	Average
375	Norland Apple	Malus 'Norland'	\N	https://perenual.com/storage/species_image/375_malus_norland/medium/frapple_apple_tree_fruit_17-image-kycidzch.jpg	["full sun"]	Frequent
376	Pink Lady Apple	Malus 'Pink Lady'	\N	https://perenual.com/storage/species_image/376_malus_pink_lady/medium/25239912735_4801f32049_b.jpg	["full sun"]	Frequent
377	Prairifire Flowering Crab	Malus 'Prairifire'	"Prairiefire"	https://perenual.com/storage/species_image/377_malus_prairifire/medium/10106223855_71b40e6586_b.jpg	["full sun"]	Average
378	Red Delicious Apple	Malus 'Red Delicious'	\N	https://perenual.com/storage/species_image/378_malus_red_delicious/medium/culture_of_apple_apple_malus_domestica_autumn_ripe_harvest_fruit_nutrients-936179.jpg	["full sun","part shade"]	Frequent
379	Red Jewel Flowering Crab	Malus 'Red Jewel'	"Roseybloom"	https://perenual.com/storage/species_image/379_malus_red_jewel/medium/embellishment_apple_small_ornamental_tree_ornamental_fruit_malus_rose_greenhouse_fruits-745555.jpg	["full sun","part shade"]	Average
380	Scarlet Pippin Apple	Malus 'Scarlet Pippin'	\N	https://perenual.com/storage/species_image/380_malus_scarlet_pippin/medium/Cox_orange_renette2.jpg	["full sun"]	Frequent
381	Sentinel Flowering Crab	Malus 'Sentinel'	"Roseybloom"	https://perenual.com/storage/species_image/381_malus_sentinel/medium/49409253573_b0a8bd2496_b.jpg	["full sun"]	Average
382	Snowdrift Flowering Crab	Malus 'Snowdrift'	"Roseybloom"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Average
383	Spartan Apple	Malus 'Spartan'	\N	https://perenual.com/storage/species_image/383_malus_spartan/medium/7960750712_309acfda70_b.jpg	["full sun"]	Average
384	Summerland Apple	Malus 'Summerland'	"Summerland MacIntosh Apple"	https://perenual.com/storage/species_image/384_malus_summerland/medium/1280px-Malus_Galmac.jpg	["full sun"]	Frequent
385	Wealthy Apple	Malus 'Wealthy'	\N	https://perenual.com/storage/species_image/385_malus_wealthy/medium/garden-apple-tree-fruit-harvest.jpg	["full sun","part sun/part shade"]	Average
386	Yellow Transparent Apple	Malus 'Yellow Transparent'	\N	https://perenual.com/storage/species_image/386_malus_yellow_transparent/medium/799px-Weisser_Klarapfel_Freilichtmuseum_Roscheider_Hof_Frucht_H17.jpg	["full sun"]	Average
387	Zestar Apple	Malus 'Zestar'	\N	https://perenual.com/storage/species_image/387_malus_zestar/medium/6123001930_f9b7729ef4_b.jpg	["full sun"]	Frequent
388	Dawn Redwood	Metasequoia glyptostroboides	\N	https://perenual.com/storage/species_image/388_metasequoia_glyptostroboides/medium/52302475270_e70a77b14e_b.jpg	["full sun"]	Average
389	Gold Rush Dawn Redwood	Metasequoia glyptostroboides 'Gold Rush'	\N	https://perenual.com/storage/species_image/389_metasequoia_glyptostroboides_gold_rush/medium/50020197378_1f05400c2d_b.jpg	["full sun"]	Frequent
390	Black Gum	Nyssa sylvatica	"Tupelo"	https://perenual.com/storage/species_image/390_nyssa_sylvatica/medium/52036943537_be41b3d4a6_b.jpg	["full sun","part sun/part shade","sheltered"]	Average
391	Arbequina European Olive	Olea europaea 'Arbequina'	\N	https://perenual.com/storage/species_image/391_olea_europaea_arbequina/medium/Oliva_arbequina.jpg	["full sun"]	Average
392	Sourwood	Oxydendron arboreum	\N	https://perenual.com/storage/species_image/392_oxydendron_arboreum/medium/22511463730_9ffccbc95e_b.jpg	["full sun","part shade"]	Average
393	Persian Parrotia	Parrotia persica	"Persian Ironwood"	https://perenual.com/storage/species_image/393_parrotia_persica/medium/50082932326_cf57855708_b.jpg	["full sun"]	Average
394	Royal Empress Tree	Paulownia tomentosa	"Princess Tree"	https://perenual.com/storage/species_image/394_paulownia_tomentosa/medium/cherry_blossom_tree_bloom_nature_spring_flowers_pink-975171.jpg	["full sun","part sun/part shade","sheltered"]	Average
395	Norway Spruce	Picea abies	"Norwegian Spruce"	https://perenual.com/storage/species_image/395_picea_abies/medium/52568050018_002cd3ebe7_b.jpg	["Full sun"," Part sun/part shade"]	Average
396	Golden Norway Spruce	Picea abies 'Aurea'	"Norwegian Spruce"	https://perenual.com/storage/species_image/396_picea_abies_aurea/medium/26671120711_4b5e70ebc8_b.jpg	["full sun"]	Average
397	Columnar Norway Spruce	Picea abies 'Cupressina'	"Norwegian Spruce"	https://perenual.com/storage/species_image/397_picea_abies_cupressina/medium/49401283911_53b0de4b2b_b.jpg	["full sun"]	Frequent
398	Chinese abelia	Abelia chinensis	\N	https://perenual.com/storage/species_image/398_abelia_chinensis/medium/6189995427_71561e14d6_b.jpg	["full sun","part shade"]	Average
407	fragrant abelia	Abelia mosanensis 'SMNAMDS' SWEET EMOTION	\N	https://perenual.com/storage/species_image/407_abelia_mosanensis_smnamds_sweet_emotion/medium/715px-Abelia_mosanensis_2015-05-29_OB_335.jpg	["full sun","part shade"]	Average
409	white forsythia	Abeliophyllum distichum	\N	https://perenual.com/storage/species_image/409_abeliophyllum_distichum/medium/25532100204_8e1e352054_b.jpg	["full sun"]	Average
412	sunset huskmallow	Abelmoschus manihot	\N	https://perenual.com/storage/species_image/412_abelmoschus_manihot/medium/14884640072_2e21234175_b.jpg	["Full sun"]	Average
413	musk mallow	Abelmoschus moschatus	\N	https://perenual.com/storage/species_image/413_abelmoschus_moschatus/medium/51850304040_56db43daec_b.jpg	["full sun"]	Average
417	momi fir	Abies firma	\N	https://perenual.com/storage/species_image/417_abies_firma/medium/49284511967_369192470b_b.jpg	["Full sun","part shade"]	Average
418	grand fir	Abies grandis	"Lowland Fir"	https://perenual.com/storage/species_image/418_abies_grandis/medium/49215359123_fd53ec05f4_b.jpg	["full sun"]	Average
419	Nikko fir	Abies homolepis	\N	https://perenual.com/storage/species_image/419_abies_homolepis/medium/49284318506_fe4d6f0cd3_b.jpg	["full sun"]	Average
420	Korean fir	Abies koreana 'Silberlocke'	\N	https://perenual.com/storage/species_image/420_abies_koreana_silberlocke/medium/49235093158_4fb1b74f2c_b.jpg	["full sun","part shade"]	Average
424	Spanish fir	Abies pinsapo 'Horstmann'	\N	https://perenual.com/storage/species_image/424_abies_pinsapo_horstmann/medium/1508px-Abies_pinsapo_27Horstmann27_-_Oregon_Garden_-_Silverton2C_Oregon_-_DSC00267.jpg	["full sun"]	Average
429	river wattle	Acacia cognata 'Mini Cog'	\N	https://perenual.com/storage/species_image/429_acacia_cognata_mini_cog/medium/50784458942_ae69e82698_b.jpg	["full sun","part shade"]	Average
430	koa	Acacia koa	\N	https://perenual.com/storage/species_image/430_acacia_koa/medium/52457570805_4edbb5b5c3_b.jpg	["full sun"]	Average
431	black cat claw	Acacia redolens	\N	https://perenual.com/storage/species_image/431_acacia_redolens/medium/40378248193_eb3db1b183_b.jpg	["full sun"]	Average
432	acaena	Acaena inermis 'Purpurea'	\N	https://perenual.com/storage/species_image/432_acaena_inermis_purpurea/medium/33706454305_095187d7ab_b.jpg	["full sun"]	Average
433	red hot cat's tail	Acalypha hispida	\N	https://perenual.com/storage/species_image/433_acalypha_hispida/medium/20298859928_ac5f7bc791_b.jpg	["full sun","part shade"]	Average
434	Jacob's coat	Acalypha wilkesiana	\N	https://perenual.com/storage/species_image/434_acalypha_wilkesiana/medium/24945289366_5035e5d0a9_b.jpg	["full sun","part shade"]	Frequent
435	prickly thrift	Acantholimon ulicinum	\N	https://perenual.com/storage/species_image/435_acantholimon_ulicinum/medium/7183717384_81c4a5d842_b.jpg	["full sun"]	Average
440	mountain thistle	Acanthus montanus	\N	https://perenual.com/storage/species_image/440_acanthus_montanus/medium/1536px-Acanthus_montanus_01.jpg	["full sun","part shade"]	Average
443	pineapple guava	Acca sellowiana	\N	https://perenual.com/storage/species_image/443_acca_sellowiana/medium/50121311041_b7735952c6_b.jpg	["full sun","part shade"]	Minimum
444	trident maple	Acer buergerianum	\N	https://perenual.com/storage/species_image/444_acer_buergerianum/medium/50064604842_abf376d0cb_b.jpg	["full sun","part shade"]	Average
449	cappadocian maple	Acer cappadocicum	\N	https://perenual.com/storage/species_image/449_acer_cappadocicum/medium/5142300636_bf566b49f2_b.jpg	["full sun","part shade"]	Frequent
450	hornbeam maple	Acer carpinifolium	\N	https://perenual.com/storage/species_image/450_acer_carpinifolium/medium/10508100463_84bcbd009a_b.jpg	["full sun","part shade"]	Frequent
451	ivy-leaved maple	Acer cissifolium	\N	https://perenual.com/storage/species_image/451_acer_cissifolium/medium/46142753255_d025429d49_b.jpg	["full sun","part shade"]	Average
455	full moon maple	Acer japonicum 'O-isami'	\N	https://perenual.com/storage/species_image/455_acer_japonicum_o-isami/medium/40091527453_06fde57c30_b.jpg	["full sun","part shade"]	Minimum
456	Montpellier maple	Acer monspessulanum	\N	https://perenual.com/storage/species_image/456_acer_monspessulanum/medium/37118296615_63394a793d_b.jpg	["full sun","part shade"]	Average
466	silver maple	Acer saccharinum 'Silver Queen'	\N	https://perenual.com/storage/species_image/466_acer_saccharinum_silver_queen/medium/Acer_Saccharinum_27Laciniatum27_JPG2.jpg	["full sun","part sun/part shade"]	Average
467	bigtooth maple	Acer saccharum subsp. grandidentatum	"Hard Maple"	https://perenual.com/storage/species_image/467_acer_saccharum_subsp_grandidentatum/medium/6431690699_b0b58f4dc5_b.jpg	["full sun","part sun/part shade"]	Frequent
468	sugar maple	Acer saccharum 'Sweet Shadow'	"Hard Maple"	https://perenual.com/storage/species_image/468_acer_saccharum_sweet_shadow/medium/26470317439_86f0498e17_b.jpg	["full sun"]	Frequent
469	Amur maple	Acer tataricum subsp. ginnala 'Mandy' RED RHAPSODY	\N	https://perenual.com/storage/species_image/469_acer_tataricum_subsp_ginnala_mandy_red_rhapsody/medium/51741176527_a68d90f9cf_b.jpg	["full sun","part shade"]	Average
470	shantung maple	Acer truncatum	\N	https://perenual.com/storage/species_image/470_acer_truncatum/medium/40480028000_557e582fb3_b.jpg	["full sun","part shade"]	Average
473	Alps yarrow	Achillea distans	\N	https://perenual.com/storage/species_image/473_achillea_distans/medium/51814554903_89600efb50_b.jpg	["full sun","part shade"]	Average
494	Siberian yarrow	Achillea sibirica	\N	https://perenual.com/storage/species_image/494_achillea_sibirica/medium/7762255084_e1def57a0c_b.jpg	["full sun"]	Average
500	woolly yarrow	Achillea tomentosa 'Aurea'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Average
502	hot water plant	Achimenes (group)	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["part shade"]	Average
503	golden spaniard	Aciphylla aurea	\N	https://perenual.com/storage/species_image/503_aciphylla_aurea/medium/2560px-Aciphylla_aurea_kz13.jpg	["full sun"]	Average
504	paurotis palm	Acoelorrhaphe wrightii	\N	https://perenual.com/storage/species_image/504_acoelorrhaphe_wrightii/medium/24857511382_4d8a1ef1dc_b.jpg	["full sun"]	Frequent
509	climbing monk's hood	Aconitum hemsleyanum	\N	https://perenual.com/storage/species_image/509_aconitum_hemsleyanum/medium/6166179411_f2598d51ec_b.jpg	["full sun","part shade"]	Average
524	white baneberry	Actaea pachypoda	"doll's eyes"	https://perenual.com/storage/species_image/524_actaea_pachypoda/medium/25484939465_d30c5fac03_b.jpg	["part sun/part shade"]	Frequent
527	black cohosh	Actaea racemosa	"Bugbane"	https://perenual.com/storage/species_image/527_actaea_racemosa/medium/28204469216_e9680ed0a4_b.jpg	["full sun","part shade"]	Average
534	hardy kiwi	Actinidia arguta	\N	https://perenual.com/storage/species_image/534_actinidia_arguta/medium/8054888032_690ac1e6ae_b.jpg	["full sun","part shade"]	Frequent
535	hardy kiwi vine	Actinidia arguta 'Issai'	\N	https://perenual.com/storage/species_image/535_actinidia_arguta_issai/medium/34451388751_202d8a0677_b.jpg	["full sun","part shade"]	Average
536	kiwifruit	Actinidia deliciosa	\N	https://perenual.com/storage/species_image/536_actinidia_deliciosa/medium/25119432356_f10218d971_b.jpg	["Full sun"]	Average
539	baobab	Adansonia digitata	\N	https://perenual.com/storage/species_image/539_adansonia_digitata/medium/52185616677_5e7ccc0374_b.jpg	["full sun"]	Minimum
540	desert rose	Adenium obesum	\N	https://perenual.com/storage/species_image/540_adenium_obesum/medium/9244335137_6d662ed77c_b.jpg	["full sun"]	Minimum
543	maidenhair fern	Adiantum capillus-veneris	"Southern Maidenhair"	https://perenual.com/storage/species_image/543_adiantum_capillus-veneris/medium/49636882698_cb4fa4c685_b.jpg	["part shade","part sun/part shade"]	Average
544	rough maidenhair fern	Adiantum hispidulum	\N	https://perenual.com/storage/species_image/544_adiantum_hispidulum/medium/50608477431_5f3bb0a767_b.jpg	["part shade","part sun/part shade"]	Average
545	Northern maidenhair fern	Adiantum pedatum	"Maidenhair Fern"	https://perenual.com/storage/species_image/545_adiantum_pedatum/medium/51419830961_2a163c78cb_b.jpg	["part sun/part shade","part shade"]	Average
546	delta maidenhair fern	Adiantum raddianum	\N	https://perenual.com/storage/species_image/546_adiantum_raddianum/medium/48134564587_c4562175cb_b.jpg	["part shade"]	Average
547	Chinese buttonbush	Adina rubella	\N	https://perenual.com/storage/species_image/547_adina_rubella/medium/51851513968_f8b102672f_b.jpg	["full sun","part shade"]	Average
548	Manila palm	Adonidia merrillii	\N	https://perenual.com/storage/species_image/548_adonidia_merrillii/medium/24448087423_f637c13e43_b.jpg	["full sun"]	Average
549	urn plant	Aechmea fasciata	"silver vase"	https://perenual.com/storage/species_image/549_aechmea_fasciata/medium/51446529161_03b99a881f_b.jpg	["part sun/part shade"]	Average
550	bishop's weed	Aegopodium podagraria 'Variegatum'	"bishop's weed"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Frequent
551	stalked aeonium	Aeonium undulatum	\N	https://perenual.com/storage/species_image/551_aeonium_undulatum/medium/023e2628848775ea95af34a39eaee4d60fab11ed.jpg	["full sun","part shade"]	Average
552	lipstick plant	Aeschynanthus radicans	\N	https://perenual.com/storage/species_image/552_aeschynanthus_radicans/medium/29949422675_2671589cdf_b.jpg	["part shade","full sun"]	Average
553	California buckeye	Aesculus californica	\N	https://perenual.com/storage/species_image/553_aesculus_californica/medium/50050525617_96d27d79d1_b.jpg	["full sun","part shade"]	Average
557	Chinese horse chestnut	Aesculus chinensis	\N	https://perenual.com/storage/species_image/557_aesculus_chinensis/medium/9229802422_3efa7e70af_b.jpg	["full sun","part shade"]	Average
558	yellow buckeye	Aesculus flava	\N	https://perenual.com/storage/species_image/558_aesculus_flava/medium/28338394486_65718bb983_b.jpg	["full sun","part shade"]	Average
563	Indian horse chustnut	Aesculus indica 'Sydney Pearce'	\N	https://perenual.com/storage/species_image/563_aesculus_indica_sydney_pearce/medium/3049990207_0b235f0202_b.jpg	["full sun","part shade"]	Average
567	red buckeye	Aesculus pavia	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
568	painted buckeye	Aesculus sylvatica	\N	https://perenual.com/storage/species_image/568_aesculus_sylvatica/medium/5023642954_ecfc48536a_b.jpg	["part shade","full sun","part sun/part shade"]	Minimum
569	buckeye	Aesculus woerlitzensis	\N	https://perenual.com/storage/species_image/569_aesculus_woerlitzensis/medium/8695236245_99090599fa_b.jpg	["full sun","part shade"]	Frequent
570	African fern pine	Afrocarpus gracilior	\N	https://perenual.com/storage/species_image/570_afrocarpus_gracilior/medium/Starr_061224-2850_Afrocarpus_gracilior.jpg	["full sun","part sun/part shade"]	Average
571	slenderleaf false foxglove	Agalinis tenuifolia	"Slenderleaf False Foxglove"	https://perenual.com/storage/species_image/571_agalinis_tenuifolia/medium/51729887719_21b2944da8_b.jpg	["full sun"]	Average
572	African lily	Agapanthus africanus	\N	https://perenual.com/storage/species_image/572_agapanthus_africanus/medium/48607455623_1c45a1f82e_b.jpg	["full sun"]	Average
589	anise hyssop	Agastache foeniculum	"giant hyssop"	https://perenual.com/storage/species_image/589_agastache_foeniculum/medium/9497142760_cc4468f21d_b.jpg	["full sun","part sun/part shade"]	Average
591	dwarf hybrid hyssop	Agastache KUDOS RED	\N	https://perenual.com/storage/species_image/591_agastache_kudos_red/medium/1365px-Agastache_27Kudos_Mandarin27_02.jpg	["full sun"]	Average
592	yellow giant hyssop	Agastache nepetoides	\N	https://perenual.com/storage/species_image/592_agastache_nepetoides/medium/Agastache_nepetoides_-_Catnip_giant_hyssop.jpg	["full sun","part sun/part shade"]	Average
596	purple giant hyssop	Agastache rugosa 'Golden Jubilee'	\N	https://perenual.com/storage/species_image/596_agastache_rugosa_golden_jubilee/medium/Agastache_rugosa_Golden_Jubilee_0zz.jpg	["full sun","part shade"]	Average
606	American century plant	Agave americana	\N	https://perenual.com/storage/species_image/606_agave_americana/medium/51350574500_deff0b0166_b.jpg	["full sun","sheltered"]	Minimum
609	spineless jade agave	Agave desmetiana	\N	https://perenual.com/storage/species_image/609_agave_desmetiana/medium/32890107377_b45716fb43_b.jpg	["full sun","part shade"]	Average
610	agave	Agave geminiflora RASTA MAN	\N	https://perenual.com/storage/species_image/610_agave_geminiflora_rasta_man/medium/52530443763_67d6cb9ebb_b.jpg	["full sun"]	Minimum
612	whale's tongue agave	Agave ovatifolia	\N	https://perenual.com/storage/species_image/612_agave_ovatifolia/medium/Agave_ovatifolia.jpg	["full sun"]	Minimum
613	Parry's agave	Agave parryi	\N	https://perenual.com/storage/species_image/613_agave_parryi/medium/51853759307_703d562098_b.jpg	["full sun"]	Minimum
616	coastal agave	Agave shawii	\N	https://perenual.com/storage/species_image/616_agave_shawii/medium/36689783073_9767391d99_b.jpg	["full sun"]	Average
625	Philippine evergreen	Aglaonema commutatum	\N	https://perenual.com/storage/species_image/625_aglaonema_commutatum/medium/24798632751_3a039ecbc6_b.jpg	["part shade","full shade"]	Average
626	Chinese evegreen	Aglaonema 'Cutlass'	\N	https://perenual.com/storage/species_image/626_aglaonema_cutlass/medium/2560px-Chinese_Evergreen_28Aglaonema_nitidum_27Silver_Queen2729_1.jpg	["part shade","full shade"]	Average
629	creeping bent grass	Agrostis palustris NO MOW	\N	https://perenual.com/storage/species_image/629_agrostis_palustris_no_mow/medium/Agrostis_Wuchs.jpg	["full sun","part sun/part shade"]	Average
630	cloud grass	Agrostis palustris 'Pennlinks'	\N	https://perenual.com/storage/species_image/630_agrostis_palustris_pennlinks/medium/Agrostis_Wuchs.jpg	["full sun","part sun/part shade"]	Average
631	tree of Heaven	Ailanthus altissima	"Chinese Sumac"	https://perenual.com/storage/species_image/631_ailanthus_altissima/medium/48991100806_d53cf134e8_b.jpg	["full sun","part sun/part shade"]	Minimum
634	common bugle	Ajuga reptans	"carpet bugleweed"	https://perenual.com/storage/species_image/634_ajuga_reptans/medium/52079855469_b3fea85b0e_b.jpg	["part sun/part shade"]	Average
649	chocolate vine	Akebia quinata	\N	https://perenual.com/storage/species_image/649_akebia_quinata/medium/14766055561_6e9fcb386e_b.jpg	["full sun","part shade"]	Frequent
652	rain tree	Albizia saman	\N	https://perenual.com/storage/species_image/652_albizia_saman/medium/48301317661_620fd032a0_b.jpg	["full sun","part sun/part shade"]	Average
659	silky lady's mantle	Alchemilla sericata 'Gold Strike'	\N	https://perenual.com/storage/species_image/659_alchemilla_sericata_gold_strike/medium/Alchemilla_peristerica_kz02.jpg	["full sun","part shade"]	Average
660	tung-oil tree	Aleurites fordii	\N	https://perenual.com/storage/species_image/660_aleurites_fordii/medium/2560px-Vernicia_fordii8.jpg	["full sun"]	Average
661	northern water plantain	Alisma triviale	"Water Plantain"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part sun/part shade"]	Frequent
662	bush allamanda	Allamanda schottii	\N	https://perenual.com/storage/species_image/662_allamanda_schottii/medium/46903965462_bb70dc339e_b.jpg	["full sun","part sun/part shade"]	Frequent
665	leek	Allium ampeloprasum	\N	https://perenual.com/storage/species_image/665_allium_ampeloprasum/medium/49970438148_ca26f3b176_b.jpg	["full sun","part shade"]	Average
666	wild leek	Allium babingtonii	\N	https://perenual.com/storage/species_image/666_allium_babingtonii/medium/52351847169_fed2da6e16_b.jpg	["full sun","part sun/part shade"]	Average
668	nodding onion	Allium cernuum	\N	https://perenual.com/storage/species_image/668_allium_cernuum/medium/52520397273_a3366abb1a_b.jpg	["full sun","part sun/part shade"]	Average
670	star of Persia	Allium cristophii	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Average
671	scallion	Allium fistulosum	"Welsh onion"	https://perenual.com/storage/species_image/671_allium_fistulosum/medium/25082567665_7c36a69c15_b.jpg	["full sun"]	Frequent
674	Hooker's onion	Allium hookeri var. muliense	\N	https://perenual.com/storage/species_image/674_allium_hookeri_var_muliense/medium/Allium_hookeri_var._muliense.jpg	["full sun","part shade"]	Average
676	allium	Allium kunthianum	\N	https://perenual.com/storage/species_image/676_allium_kunthianum/medium/52682376381_361b1dbf1e_b.jpg	["full sun"]	Average
680	golden garlic	Allium moly	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
693	round-headed leek	Allium sphaerocephalon	\N	https://perenual.com/storage/species_image/693_allium_sphaerocephalon/medium/51375216744_632d68de0a_b.jpg	["full sun"]	Average
694	prairie onion	Allium stellatum	"Prairie Onion"	https://perenual.com/storage/species_image/694_allium_stellatum/medium/Allium_lusitanicum_003.jpg	["full sun"]	Minimum
697	garlic chives	Allium tuberosum	"Chinese chives"	https://perenual.com/storage/species_image/697_allium_tuberosum/medium/51949630538_39d542591d_b.jpg	["full sun","part shade"]	Average
698	wild garlic	Allium ursinum	\N	https://perenual.com/storage/species_image/698_allium_ursinum/medium/52156804216_7dd5683e59_b.jpg	["full sun","part shade"]	Average
701	Italian alder	Alnus cordata	\N	https://perenual.com/storage/species_image/701_alnus_cordata/medium/51881225889_7856d72c70_b.jpg	["part shade","part sun/part shade"]	Minimum
702	European alder	Alnus glutinosa	"Black Alder"	https://perenual.com/storage/species_image/702_alnus_glutinosa/medium/51873517982_20fa4c6c22_b.jpg	["full sun","part shade"]	Average
703	grey alder	Alnus incana	"Tag Alder"	https://perenual.com/storage/species_image/703_alnus_incana/medium/52399973491_ccfed31074_b.jpg	["Sun"," Partial Shade"]	Frequent
705	Japanese alder	Alnus japonica	\N	https://perenual.com/storage/species_image/705_alnus_japonica/medium/Alnus_japonica2.jpg	["full sun","part shade"]	Frequent
708	alder	Alnus mayrii	\N	https://perenual.com/storage/species_image/708_alnus_mayrii/medium/alnus_glutinosa_alder_common_alder_black_alder_tree_flora_branch_plant-710760.jpg	["full sun","part shade"]	Average
711	Amazonian elephant's ear	Alocasia amazonica 'Polly'	\N	https://perenual.com/storage/species_image/711_alocasia_amazonica_polly/medium/pexels-photo-12419491.jpg	["part shade"]	Frequent
719	torch plant	Aloe aristata	\N	https://perenual.com/storage/species_image/719_aloe_aristata/medium/23962599232_fdc4070814_b.jpg	["full sun","part shade"]	Average
720	Cape aloe	Aloe ferox	\N	https://perenual.com/storage/species_image/720_aloe_ferox/medium/52617385752_7902a3eda2_b.jpg	["full sun"]	Average
722	Karoo aloe	Aloe longistyla	\N	https://perenual.com/storage/species_image/722_aloe_longistyla/medium/pexels-photo-6156450.jpg	["full sun","part shade"]	Average
723	large Chimanimani aloe	Aloe munchii	\N	https://perenual.com/storage/species_image/723_aloe_munchii/medium/4329678019_9e37d1442d_b.jpg	["full sun","part sun/part shade"]	Average
725	Yemen tree aloe	Aloe sabaea	\N	https://perenual.com/storage/species_image/725_aloe_sabaea/medium/488c2e98bae5c75ae8edcb2901f56875341dae17.jpg	["full sun"]	Minimum
726	coral aloe	Aloe striata	\N	https://perenual.com/storage/species_image/726_aloe_striata/medium/46765462314_294129dbb5_b.jpg	["full sun"]	Minimum
729	lemon verbena	Aloysia citriodora	\N	https://perenual.com/storage/species_image/729_aloysia_citriodora/medium/49215257062_e24ef40444_b.jpg	["full sun"]	Average
730	sweet almond bush	Aloysia virgata	\N	https://perenual.com/storage/species_image/730_aloysia_virgata/medium/52719161032_8ddc25c296_b.jpg	["Full sun"]	Minimum
731	siamese ginger	Alpinia galanga	\N	https://perenual.com/storage/species_image/731_alpinia_galanga/medium/48273723091_277cd37b51_b.jpg	["full sun","part shade"]	Average
732	ginger lily	Alpinia japonica	\N	https://perenual.com/storage/species_image/732_alpinia_japonica/medium/9207617816_a0facab3f0_b.jpg	["full sun","part sun/part shade"]	Average
733	shellplant	Alpinia zerumbet	\N	https://perenual.com/storage/species_image/733_alpinia_zerumbet/medium/50121588037_5c1e5c1272_b.jpg	["Full sun","part shade"]	Average
734	shell ginger	Alpinia zerumbet 'Variegata'	\N	https://perenual.com/storage/species_image/734_alpinia_zerumbet_variegata/medium/2463223337_25c98419a3_b.jpg	["part shade","part sun/part shade"]	Average
741	inca lily	Alstroemeria ligtu subsp. incarnata	\N	https://perenual.com/storage/species_image/741_alstroemeria_ligtu_subsp_incarnata/medium/alstroemeria_pink_flower_summer_flowers-1101402.jpg	["full sun","part shade"]	Average
745	brazilian joyweed	Alternanthera brasiliana 'Purple Prince'	\N	https://perenual.com/storage/species_image/745_alternanthera_brasiliana_purple_prince/medium/Alternanthera_dentata_27Brazilian_Red_Hots27.jpg	["full sun","part shade"]	Frequent
749	marsh mallow	Althaea officinalis	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Frequent
750	yellowtuft	Alyssum murale	\N	https://perenual.com/storage/species_image/750_alyssum_murale/medium/35098400373_dcdb39285e_b.jpg	["full sun"]	Average
751	alyssum	Alyssum propinquum	\N	https://perenual.com/storage/species_image/751_alyssum_propinquum/medium/c804cd9a7f0774e1fb0b352be3a0-1424377.jpg	["Full sun"]	Frequent
752	madwort	Alyssum wulfenianum 'Golden Spring'	\N	https://perenual.com/storage/species_image/752_alyssum_wulfenianum_golden_spring/medium/16054232986_a2f186fe3e_b.jpg	["full sun"]	Average
753	love-lies-bleeding	Amaranthus caudatus	\N	https://perenual.com/storage/species_image/753_amaranthus_caudatus/medium/14912743664_5b2ca6df71_b.jpg	["full sun","part shade"]	Average
756	alder-leaved serviceberry	Amelanchier alnifolia 'Regent'	\N	https://perenual.com/storage/species_image/756_amelanchier_alnifolia_regent/medium/18193498233_7c9ff38ba7_b.jpg	["full sun"]	Average
757	dwarf serviceberry	Amelanchier alnifolia var. pumila	\N	https://perenual.com/storage/species_image/757_amelanchier_alnifolia_var_pumila/medium/Amelanchier_alnifolia.jpg	["full sun"]	Average
763	Allegheny serviceberry	Amelanchier laevis	"Allegheny Serviceberry"	https://perenual.com/storage/species_image/763_amelanchier_laevis/medium/41909182552_486c47e700_b.jpg	["full sun","part sun/part shade"]	Average
764	juneberry	Amelanchier lamarckii	\N	https://perenual.com/storage/species_image/764_amelanchier_lamarckii/medium/33791583306_f594902691_b.jpg	["full sun","part shade"]	Average
765	Nantucket serviceberry	Amelanchier nantucketensis	\N	https://perenual.com/storage/species_image/765_amelanchier_nantucketensis/medium/34321014605_093dcf6a34_b.jpg	["full sun","part shade"]	Average
766	coastal serviceberry	Amelanchier obovalis	\N	https://perenual.com/storage/species_image/766_amelanchier_obovalis/medium/1024_Felsenbirne_28Amelanchier_obovalis29-2247.jpg	["full sun","part shade"]	Average
767	running serviceberry	Amelanchier stolonifera	\N	https://perenual.com/storage/species_image/767_amelanchier_stolonifera/medium/Amelanchier_ovalis._MollC3A9ndanu_28frutu29.jpg	["Full sun","part shade"]	Average
768	lead plant	Amorpha canescens	"Downy Indigobush"	https://perenual.com/storage/species_image/768_amorpha_canescens/medium/27430390504_7b4975296f_b.jpg	["full sun"]	Average
770	Ouachita Mountain leadplant	Amorpha ouachitensis	\N	https://perenual.com/storage/species_image/770_amorpha_ouachitensis/medium/1365px-Amorpha_ouachitensis_-_Fleurs-3.jpg	["full sun","part shade"]	Average
771	Devil's tongue	Amorphophallus konjac	\N	https://perenual.com/storage/species_image/771_amorphophallus_konjac/medium/7375633894_b44dbcd920_b.jpg	["part shade","part sun/part shade"]	Average
772	monkshood vine	Ampelopsis aconitifolia var. glabra	\N	https://perenual.com/storage/species_image/772_ampelopsis_aconitifolia_var_glabra/medium/Ampelopsis_aconitifolia_2c.jpg	["full sun","part shade"]	Frequent
773	amur peppervine	Ampelopsis brevipedunculata	\N	https://perenual.com/storage/species_image/773_ampelopsis_brevipedunculata/medium/30639333801_f26c72e005_b.jpg	["full sun","part shade"]	Average
774	porcelain vine	Ampelopsis brevipedunculata var. maximowiczii 'Elegans'	\N	https://perenual.com/storage/species_image/774_ampelopsis_brevipedunculata_var_maximowiczii_elegans/medium/30639333801_f26c72e005_b.jpg	["full sun","part shade"]	Average
781	shining blue star	Amsonia illustris	\N	https://perenual.com/storage/species_image/781_amsonia_illustris/medium/9200879238_416df5a6b3_b.jpg	["full sun","part shade"]	Minimum
787	dwarf blue star	Amsonia tabernaemontana 'Short Stack'	\N	https://perenual.com/storage/species_image/787_amsonia_tabernaemontana_short_stack/medium/Amsonia_tabernaemontana_Blue_Ice_2zz.jpg	["full sun","part shade"]	Average
790	blue pimpernel	Anagallis monelli	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Average
793	variegated pineapple	Ananas comosus var. variegatus	\N	https://perenual.com/storage/species_image/793_ananas_comosus_var_variegatus/medium/3084408454_c0938466ae_b.jpg	["part sun/part shade"]	Frequent
799	bluestem	Andropogon capillipes 'Valdosta Blue'	\N	https://perenual.com/storage/species_image/799_andropogon_capillipes_valdosta_blue/medium/48666137008_7f8da5fb3a_b.jpg	["full sun","part shade"]	Frequent
804	bushy bluestem	Andropogon glomeratus	\N	https://perenual.com/storage/species_image/804_andropogon_glomeratus/medium/25246448476_718627bf93_b.jpg	["Full sun"]	Minimum
805	Roundleaf Liverleaf	Anemone americana	\N	https://perenual.com/storage/species_image/805_anemone_americana/medium/26956083207_fbdd787ef8_b.jpg	["part shade"]	Frequent
813	Japanese thimbleweed	Anemone hupehensis	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
829	small-flowered anemone	Anemone parviflora	"Few Flowered Anemone"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Partial Shade"]	Average
831	snowdrop windflower	Anemone sylvestris	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part sun/part shade"]	Average
833	thimbleweed	Anemone virginiana	"Thimbleweed"	https://perenual.com/storage/species_image/833_anemone_virginiana/medium/51378330438_1d02259787_b.jpg	["Full sun","part shade"]	Minimum
834	dill	Anethum graveolens	\N	https://perenual.com/storage/species_image/834_anethum_graveolens/medium/52142605681_267b587549_b.jpg	["full sun","part shade"]	Average
835	garden angelica	Angelica archangelica	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Frequent
839	tall kangaroo paw	Anigozanthos flavidus	\N	https://perenual.com/storage/species_image/839_anigozanthos_flavidus/medium/50336336492_6d9c104690_b.jpg	["Full sun","part shade"]	Average
840	kangaroo paw	Anigozanthos 'Joe Joe Red'	\N	https://perenual.com/storage/species_image/840_anigozanthos_joe_joe_red/medium/15699356497_9b52c7dae1_b.jpg	["full sun"]	Average
841	Texas firecracker	Anisacanthus quadrifidus var. wrightii	\N	https://perenual.com/storage/species_image/841_anisacanthus_quadrifidus_var_wrightii/medium/2229260565_617fc8a76d_b.jpg	["full sun"]	Average
842	soursop	Annona muricata	\N	https://perenual.com/storage/species_image/842_annona_muricata/medium/52334747039_ee5c16a899_b.jpg	["full sun"]	Frequent
843	custard apple	Annona reticulata	\N	https://perenual.com/storage/species_image/843_annona_reticulata/medium/49288331417_5427e85d0b_b.jpg	["full sun","part shade"]	Average
844	anomatheca	Anomatheca laxa	\N	https://perenual.com/storage/species_image/844_anomatheca_laxa/medium/47830055392_4211843d66_b.jpg	["Full sun"]	Average
845	heartleaf madeiravine	Anredera cordifolia	\N	https://perenual.com/storage/species_image/845_anredera_cordifolia/medium/48757222371_bb7fe8e0f1_b.jpg	["Full sun","part shade"]	Average
847	field pussytoes	Antennaria neglecta	\N	https://perenual.com/storage/species_image/847_antennaria_neglecta/medium/26815073747_bb9d7f94d4_b.jpg	["full sun","part shade"]	Minimum
848	pussy toes	Antennaria parlinii	\N	https://perenual.com/storage/species_image/848_antennaria_parlinii/medium/51937315830_a99ebc389f_b.jpg	["Full sun","part shade"]	Minimum
852	Dyer's chamomile	Anthemis tinctoria 'Kelwayi'	\N	https://perenual.com/storage/species_image/852_anthemis_tinctoria_kelwayi/medium/Cota_tinctoria_27Kelwayi27_syn._Anthemis_tinctoria_27Kelwayi27_Rumian_C5BCC3B3C582ty_2010-06-11_02.jpg	["Full sun"]	Minimum
853	golden marguerite	Anthemis tinctoria 'Moonlight'	\N	https://perenual.com/storage/species_image/853_anthemis_tinctoria_moonlight/medium/5843978630_04a41081db_z.jpg	["Full sun"]	Minimum
857	coral vine	Antigonon leptopus	\N	https://perenual.com/storage/species_image/857_antigonon_leptopus/medium/24665048204_b6360869a1_b.jpg	["full sun"]	Average
862	celery	Apium graveolens var. dulce	\N	https://perenual.com/storage/species_image/862_apium_graveolens_var_dulce/medium/2560px-Apium_graveolens.jpg	["full sun","filtered shade"]	Average
865	Indian hemp	Apocynum cannabinum	"Indian Hemp"	https://perenual.com/storage/species_image/865_apocynum_cannabinum/medium/52279327528_0d7dd70f2c_b.jpg	["Partial Shade"]	Minimum
866	Cape pondweed	Aponogeton distachyos	\N	https://perenual.com/storage/species_image/866_aponogeton_distachyos/medium/51708012018_04d7cd2cda_b.jpg	["Full sun","part shade"]	Frequent
883	sweet-scented columbine	Aquilegia fragrans	\N	https://perenual.com/storage/species_image/883_aquilegia_fragrans/medium/3976118459_cb8e055024_b.jpg	["Full sun","part shade"]	Average
908	garden rockcress	Arabis caucasica	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Minimum
909	peanut	Arachis hypogaea	\N	https://perenual.com/storage/species_image/909_arachis_hypogaea/medium/51118802774_79812c9f6c_b.jpg	["Full sun"]	Average
910	arachnoides	Arachniodes simplicior 'Variegata'	\N	https://perenual.com/storage/species_image/910_arachniodes_simplicior_variegata/medium/2560px-Arachniodes_simplicior_Variegata_kz1.jpg	["Part shade","full shade"]	Frequent
911	Chinese angelica tree	Aralia chinensis	\N	https://perenual.com/storage/species_image/911_aralia_chinensis/medium/2560px-Cornus_kousa_var_chinensis_in_La_Jaysinia_28129.jpg	["Full sun","part shade"]	Average
914	American spikenard	Aralia racemosa	"Life Of Man"	https://perenual.com/storage/species_image/914_aralia_racemosa/medium/36841734182_4b347a5055_b.jpg	["Partial sun Shade"]	Average
915	Devil's walking stick	Aralia spinosa	\N	https://perenual.com/storage/species_image/915_aralia_spinosa/medium/33510919603_2564d403a0_b.jpg	["full sun","part shade"]	Average
916	New Caledonian pine	Araucaria columnaris	\N	https://perenual.com/storage/species_image/916_araucaria_columnaris/medium/4413609480_e574f49af7_b.jpg	["Full sun"]	Average
917	Norfolk Island pine	Araucaria heterophylla	\N	https://perenual.com/storage/species_image/917_araucaria_heterophylla/medium/49833684212_2aff9d7b3c_b.jpg	["Part shade"]	Average
918	hybrid strawberry tree	Arbutus andrachnoides	\N	https://perenual.com/storage/species_image/918_arbutus_andrachnoides/medium/50783640608_7dfdc41b15_b.jpg	["Full sun"]	Average
919	strawberry tree	Arbutus unedo 'Oktoberfest'	"Apple of Cain; Cane Apple"	https://perenual.com/storage/species_image/919_arbutus_unedo_oktoberfest/medium/52160426443_867db2703f_b.jpg	["Full sun"," Part sun/part shade"," Sheltered"]	Minimum
923	bearberry	Arctostaphylos uva-ursi 'Wood's Red'	"kinnikinnick"	https://perenual.com/storage/species_image/923_arctostaphylos_uva-ursi_woods_red/medium/5188484321_5cf1761bf4_b.jpg	["Full sun Partial sun"]	Minimum
924	African daisy	Arctotis hybrida	\N	https://perenual.com/storage/species_image/924_arctotis_hybrida/medium/50811071336_f9b50120cc_b.jpg	["Full sun"]	Average
925	hen's eyes	Ardisia crenata	\N	https://perenual.com/storage/species_image/925_ardisia_crenata/medium/50950278062_f6dbb4e8ba_b.jpg	["part shade","part sun/part shade"]	Average
926	marlberry	Ardisia japonica	\N	https://perenual.com/storage/species_image/926_ardisia_japonica/medium/2560px-Ardisia_japonica_4.jpg	["Part shade","full shade"]	Average
927	Argan tree	Argania spinosa	\N	https://perenual.com/storage/species_image/927_argania_spinosa/medium/5336554394_706554b7db_b.jpg	["Full sun"]	Average
928	prickly poppy	Argemone polyanthemos	\N	https://perenual.com/storage/species_image/928_argemone_polyanthemos/medium/19283239043_f1233f717c_b.jpg	["Full sun"]	Minimum
929	cobbitty daisy	Argyranthemum frutescens	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
931	Japanese cobra lily	Arisaema kishidae 'Silver Pattern'	\N	https://perenual.com/storage/species_image/931_arisaema_kishidae_silver_pattern/medium/2560px-Arisaema_kishidae_4.jpg	["part shade","part sun/part shade"]	Frequent
937	jack-in-the-pulpit	Arisaema triphyllum	\N	https://perenual.com/storage/species_image/937_arisaema_triphyllum/medium/52073665971_07d62b3600_b.jpg	["Deciduous Shade (Spring Sun)"]	Frequent
938	aristea	Aristea platycaulis	\N	https://perenual.com/storage/species_image/938_aristea_platycaulis/medium/11754805406_e5e971fe9c_b.jpg	["Full sun","part shade"]	Average
940	pelican flower	Aristolochia gigantea	\N	https://perenual.com/storage/species_image/940_aristolochia_gigantea/medium/50858207652_bf39093230_b.jpg	["Full sun","part shade"]	Average
954	horseradish	Armoracia rusticana	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Average
955	pale Indian plantain	Arnoglossum atriplicifolium	\N	https://perenual.com/storage/species_image/955_arnoglossum_atriplicifolium/medium/20292435404_1cc094815d_b.jpg	["Full sun","part shade"]	Average
956	great Indian plantain	Arnoglossum reniforme	\N	https://perenual.com/storage/species_image/956_arnoglossum_reniforme/medium/3248063045_a4ea59d977_b.jpg	["full sun"]	Average
968	purple-fruited chokeberry	Aronia prunifolia	\N	https://perenual.com/storage/species_image/968_aronia_prunifolia/medium/50352225938_fcc00078d3_b.jpg	["full sun","part shade"]	Average
969	southernwood	Artemisia abrotanum	"Sagebrush"	https://perenual.com/storage/species_image/969_artemisia_abrotanum/medium/3825719144_9de775e7a5_b.jpg	["Sun"]	Minimum
972	California sagebrush	Artemisia californica 'Canyon Gray'	\N	https://perenual.com/storage/species_image/972_artemisia_californica_canyon_gray/medium/51175626765_a033a0855c_b.jpg	["Full sun","part shade"]	Minimum
974	tarragon	Artemisia dracunculus	"Tarragon"	https://perenual.com/storage/species_image/974_artemisia_dracunculus/medium/38707336995_edd3f8c50c_b.jpg	["full sun","part shade"]	Average
975	French tarragon	Artemisia dracunculus 'Sativa'	"Tarragon"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Minimum
976	silky wormwood	Artemisia frigida	"Pasture Sagewort"	https://perenual.com/storage/species_image/976_artemisia_frigida/medium/52389600665_c8fc39039b_b.jpg	["Sun"]	Minimum
977	white mugwort	Artemisia lactiflora (Guizhou Group)	\N	https://perenual.com/storage/species_image/977_artemisia_lactiflora_guizhou_group/medium/50320418362_baf156d999_b.jpg	["full sun","part sun/part shade"]	Average
987	rienga lily	Arthropodium cirrhatum	\N	https://perenual.com/storage/species_image/987_arthropodium_cirrhatum/medium/Arthropodium_cirrhatum.jpg	["Part shade"]	Minimum
988	breadfruit	Artocarpus altilis	\N	https://perenual.com/storage/species_image/988_artocarpus_altilis/medium/27300926886_1fe42029eb_b.jpg	["full sun","part shade"]	Average
989	jackfruit	Artocarpus heterophyllus	\N	https://perenual.com/storage/species_image/989_artocarpus_heterophyllus/medium/52334746009_86cd4b3f95_b.jpg	["Full sun"]	Frequent
998	bamboo orchid	Arundina graminifolia	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Part shade"]	Average
999	giant cane bamboo	Arundinaria gigantea	\N	https://perenual.com/storage/species_image/999_arundinaria_gigantea/medium/24505585774_54c8864f95_b.jpg	["full sun"]	Average
1000	giant reed	Arundo donax	\N	https://perenual.com/storage/species_image/1000_arundo_donax/medium/30461658446_3f6dc7a285_b.jpg	["Full sun","part shade"]	Frequent
1001	trailing snapdragon	Asarina procumbens	\N	https://perenual.com/storage/species_image/1001_asarina_procumbens/medium/9240253872_46be573382_b.jpg	["full sun","part shade"]	Average
1004	European wild ginger	Asarum europaeum	\N	https://perenual.com/storage/species_image/1004_asarum_europaeum/medium/51882112892_9bd923fc35_b.jpg	["Part shade","full shade"]	Frequent
1007	blood flower	Asclepias curassavica	\N	https://perenual.com/storage/species_image/1007_asclepias_curassavica/medium/51757177616_7ca0baaa87_b.jpg	["full sun"]	Average
1013	purple milkweed	Asclepias purpurascens	\N	https://perenual.com/storage/species_image/1013_asclepias_purpurascens/medium/50066872228_65e918b71a_b.jpg	["Full sun"]	Minimum
1014	fourleaf milkweed	Asclepias quadrifolia	"Whorled Milkweed"	https://perenual.com/storage/species_image/1014_asclepias_quadrifolia/medium/32020637552_bef6ec13d8_b.jpg	["Full sun","part shade"]	Minimum
1015	showy milkweed	Asclepias speciosa	\N	https://perenual.com/storage/species_image/1015_asclepias_speciosa/medium/42796339951_9b834a57c4_b.jpg	["Full sun"]	Minimum
1017	common milkweed	Asclepias syriaca	"Silkweed"	https://perenual.com/storage/species_image/1017_asclepias_syriaca/medium/Asclepias_syriaca_-_Common_Milkweed.jpg	["Sun"]	Minimum
1021	whorled milkweed	Asclepias verticillata	"Eastern Whorled Milkweed"	https://perenual.com/storage/species_image/1021_asclepias_verticillata/medium/29538479571_3ef54dd273_b.jpg	["Full sun","part shade"]	Minimum
1022	green milkweed	Asclepias viridis	\N	https://perenual.com/storage/species_image/1022_asclepias_viridis/medium/9123680137_d82dea1342_b.jpg	["Full sun"]	Minimum
1023	Sprenger's asparagus fern	Asparagus densiflorus	\N	https://perenual.com/storage/species_image/1023_asparagus_densiflorus/medium/49289066276_4bbe4e5b94_b.jpg	["part shade"]	Average
1030	Ming fern	Asparagus retrofractus	"pom pom asparagus fern"	https://perenual.com/storage/species_image/1030_asparagus_retrofractus/medium/Starr_071024-9887_Asparagus_densiflorus.jpg	["Full sun","part shade"]	Average
1034	king's spear	Asphodeline lutea	\N	https://perenual.com/storage/species_image/1034_asphodeline_lutea/medium/8869006693_cd691deaed_b.jpg	["Full sun"]	Average
1035	white-flowered asphodel	Asphodelus albus	\N	https://perenual.com/storage/species_image/1035_asphodelus_albus/medium/51165198881_b75d352195_b.jpg	["Full sun","part shade"]	Average
1036	cast-iron plant	Aspidistra elatior	\N	https://perenual.com/storage/species_image/1036_aspidistra_elatior/medium/e5c6a91ae63e816bdb0d287f549bd74829e09923.jpg	["part shade","full shade"]	Average
1037	walking spleenwort	Asplenium ebenoides	\N	https://perenual.com/storage/species_image/1037_asplenium_ebenoides/medium/4991032969_910e731977_z.jpg	["Part shade","full shade"]	Average
1038	bird's nest fern	Asplenium nidus 'Antiquum'	\N	https://perenual.com/storage/species_image/1038_asplenium_nidus_antiquum/medium/29457334967_82a2d8789c_b.jpg	["full sun","part shade","full shade"]	Average
1039	ebony spleenwort	Asplenium platyneuron	\N	https://perenual.com/storage/species_image/1039_asplenium_platyneuron/medium/52117887278_1388a4ee0a_b.jpg	["Partial Shade"," Shade"]	Minimum
1043	maidenhair spleenwort	Asplenium trichomanes	\N	https://perenual.com/storage/species_image/1043_asplenium_trichomanes/medium/51698793799_a69d99ba08_b.jpg	["Part shade","full shade"]	Average
1044	Italian aster	Aster amellus 'Veilchenkönigin' VIOLET QUEEN	\N	https://perenual.com/storage/species_image/1044_aster_amellus_veilchenkönigin_violet_queen/medium/herfstasters-aster-autumn-purple-garden-petals.jpg	["Full sun"]	Average
1045	michaelmas daisy	Aster 'Celeste'	\N	https://perenual.com/storage/species_image/1045_aster_celeste/medium/flowers-garden-petals-nature-aroma-flower.jpg	["Full sun"]	Average
1051	tartarian aster	Aster tataricus	\N	https://perenual.com/storage/species_image/1051_aster_tataricus/medium/51577222466_39fd091818_b.jpg	["Full sun"]	Average
1052	tatarian aster	Aster tataricus 'Jindai'	\N	https://perenual.com/storage/species_image/1052_aster_tataricus_jindai/medium/51577221556_55434310fe_b.jpg	["Full sun"]	Average
1055	astericus	Asteriscus maritimus	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
1083	Florist's spiraea	Astilbe japonica	\N	https://perenual.com/storage/species_image/1083_astilbe_japonica/medium/39386513705_e9def738c3_b.jpg	["Part shade","full shade"]	Average
1095	astilboides	Astilboides tabularis	\N	https://perenual.com/storage/species_image/1095_astilboides_tabularis/medium/4829354669_013486d54c_b.jpg	["Part shade","full shade"]	Average
1096	two-grooved milkvetch	Astragalus bisulcatus	\N	https://perenual.com/storage/species_image/1096_astragalus_bisulcatus/medium/52157395732_a81cbf8cfe_b.jpg	["full sun","part shade"]	Minimum
1097	milk vetch	Astragalus canadensis	\N	https://perenual.com/storage/species_image/1097_astragalus_canadensis/medium/1365px-Astragalus_canadensis_kz1.jpg	["Sun"]	Average
1098	ground plum	Astragalus crassicarpus	"Buffalo Bean"	https://perenual.com/storage/species_image/1098_astragalus_crassicarpus/medium/5258391576_e4425517d4_b.jpg	["full sun","filtered shade"]	Minimum
1113	southern lady fern	Athyrium asplenioides	\N	https://perenual.com/storage/species_image/1113_athyrium_asplenioides/medium/Athyrium_filix-femina_3zz.jpg	["Part shade","full shade"]	Average
1120	tatting fern	Athyrium filix-femina 'Frizelliae'	"Ladyfern"	https://perenual.com/storage/species_image/1120_athyrium_filix-femina_frizelliae/medium/2560px-Athyrium_filix-femina_27Frizelliae27_kz02.jpg	["Partial Shade"," Shade"]	Average
1129	painted lady fern	Athyrium niponicum var. niponicum	\N	https://perenual.com/storage/species_image/1129_athyrium_niponicum_var_niponicum/medium/14366846512_ffbde9e55f_b.jpg	["Part shade","full shade"]	Average
1139	hybrid painted fern	Athyrium 'Ocean's Fury'	\N	https://perenual.com/storage/species_image/1139_athyrium_oceans_fury/medium/20329327985_06f7a01734_b.jpg	["Part shade","full shade"]	Average
1140	eared lady fern	Athyrium otophorum	\N	https://perenual.com/storage/species_image/1140_athyrium_otophorum/medium/4848911993_af2bcc583d_b.jpg	["Part shade","full shade"]	Average
1144	mountain spinach	Atriplex hortensis	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
1145	deadly nightshade	Atropa belladonna	\N	https://perenual.com/storage/species_image/1145_atropa_belladonna/medium/Atropa_belladonna_004.jpg	["full sun","part shade"]	Average
1151	basket-of-gold	Aurinia saxatilis	"basket-of-gold"	https://perenual.com/storage/species_image/1151_aurinia_saxatilis/medium/34689507682_64cc2e8ec7_b.jpg	["full sun","part shade"]	Minimum
1154	star fruit	Averrhoa carambola	\N	https://perenual.com/storage/species_image/1154_averrhoa_carambola/medium/52334449226_20bfe2f29d_b.jpg	["Full sun"]	Frequent
1155	neem	Azadirachta indica	\N	https://perenual.com/storage/species_image/1155_azadirachta_indica/medium/31761735438_24132d574f_b.jpg	["full sun","part shade"]	Average
1156	azara	Azara microphylla	\N	https://perenual.com/storage/species_image/1156_azara_microphylla/medium/46332585474_c13cacf220_b.jpg	["Full sun","part shade"]	Average
1159	water fern	Azolla filiculoides	"mosquito fern"	https://perenual.com/storage/species_image/1159_azolla_filiculoides/medium/2560px-Azolla_filiculoides_01.jpg	["full sun","part shade"]	Frequent
1160	false willow	Baccharis angustifolia	\N	https://perenual.com/storage/species_image/1160_baccharis_angustifolia/medium/30197099822_5c63c64feb_b.jpg	["Full sun"]	Frequent
1161	eastern baccharis	Baccharis halimifolia	\N	https://perenual.com/storage/species_image/1161_baccharis_halimifolia/medium/23969225957_89ec59747e_b.jpg	["Full sun"]	Frequent
1164	Buddha belly bamboo	Bambusa ventricosa	\N	https://perenual.com/storage/species_image/1164_bambusa_ventricosa/medium/5690344982_ab2d5ae605_b.jpg	["Full sun","part shade"]	Average
1167	white false indigo	Baptisia alba var. macrophylla	\N	https://perenual.com/storage/species_image/1167_baptisia_alba_var_macrophylla/medium/Baptisia_lactea.jpg	["full sun","part shade"]	Minimum
1177	gopherweed	Baptisia lanceolata	\N	https://perenual.com/storage/species_image/1177_baptisia_lanceolata/medium/49acdf5482fc254dcdbd4836aa4ca1046c093a46.jpg	["Full sun"]	Minimum
1185	wild indigo	Baptisia tinctoria	"Horseflyweed"	https://perenual.com/storage/species_image/1185_baptisia_tinctoria/medium/14500201360_c01bb6f614_b.jpg	["Sun"]	Minimum
1187	Philippine violet	Barleria cristata	\N	https://perenual.com/storage/species_image/1187_barleria_cristata/medium/9200963340_9b0094a844_b.jpg	["full sun","part shade"]	Average
1188	Malabar spinach	Basella alba	\N	https://perenual.com/storage/species_image/1188_basella_alba/medium/3127195220_e6912d8aed_b.jpg	["full sun"]	Frequent
1189	Ceylon spinach	Basella rubra 'Red Stem'	\N	https://perenual.com/storage/species_image/1189_basella_rubra_red_stem/medium/24603734219_d4ea98b0cc_b.jpg	["full sun"]	Average
1190	burning bush	Bassia scoparia f. trichophylla	\N	https://perenual.com/storage/species_image/1190_bassia_scoparia_f_trichophylla/medium/Kochia_aka_Fire_bush_7128.jpg	["full sun","part shade"]	Average
1191	Hong Kong orchid tree	Bauhinia blakeana	\N	https://perenual.com/storage/species_image/1191_bauhinia_blakeana/medium/52661560703_469c6c5af9_b.jpg	["Full sun","part shade"]	Average
1192	ponytail palm	Beaucarnea recurvata	\N	https://perenual.com/storage/species_image/1192_beaucarnea_recurvata/medium/51792797390_1b15a8415d_b.jpg	["part sun/part shade"]	Average
1193	beesia	Beesia deltophylla	\N	https://perenual.com/storage/species_image/1193_beesia_deltophylla/medium/7246439522_8b7c73cb31_b.jpg	["Part shade","full shade"]	Average
1212	iron cross begonia	Begonia masoniana	\N	https://perenual.com/storage/species_image/1212_begonia_masoniana/medium/29865980861_27d35f6447_b.jpg	["part sun/part shade","filtered shade"]	Average
1219	wax begonia	Begonia semperflorens-cultorum 'Harmony Scarlet'	\N	https://perenual.com/storage/species_image/1219_begonia_semperflorens-cultorum_harmony_scarlet/medium/52423452233_02b4dc198b_b.jpg	["part shade","filtered shade"]	Average
1229	wax gourd	Benincasa hispida	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
1230	holly-leaved barberry	Berberis aquifolium	\N	https://perenual.com/storage/species_image/1230_berberis_aquifolium/medium/51093554136_76d8dd16c9_b.jpg	["Part shade","full shade"]	Average
1235	Jepson's Oregon-grape	Berberis dictyota	\N	https://perenual.com/storage/species_image/1235_berberis_dictyota/medium/25798467545_4609c916be_b.jpg	["Full sun","part shade"]	Minimum
1256	supple-Jack	Berchemia scandens	\N	https://perenual.com/storage/species_image/1256_berchemia_scandens/medium/35634376910_99bc712275_b.jpg	["full sun","part shade"]	Minimum
1258	winter begonia	Bergenia ciliata	\N	https://perenual.com/storage/species_image/1258_bergenia_ciliata/medium/13527657053_626a3bbf93_b.jpg	["Part shade","full shade"]	Average
1267	purple bergenia	Bergenia purpurascens	\N	https://perenual.com/storage/species_image/1267_bergenia_purpurascens/medium/9198104173_4e54a1ac35_b.jpg	["Part shade","full shade"]	Average
1271	green eyes	Berlandiera texana	\N	https://perenual.com/storage/species_image/1271_berlandiera_texana/medium/4c60390f41944819b23434133d60526423013ea3.jpg	["Full sun"]	Minimum
1272	jewel plant	Bertolonia maculata	\N	https://perenual.com/storage/species_image/1272_bertolonia_maculata/medium/Bertolonia_maculata_2019-04-16_0864.jpg	["part shade","part sun/part shade"]	Frequent
1278	sugar beet	Beta vulgaris subsp. vulgaris	\N	https://perenual.com/storage/species_image/1278_beta_vulgaris_subsp_vulgaris/medium/24879462575_521a00b451_b.jpg	["Full sun"]	Average
1279	Asian black birch	Betula dahurica	\N	https://perenual.com/storage/species_image/1279_betula_dahurica/medium/2560px-Betula_dahurica_kz06.jpg	["Full sun","part shade"]	Average
1280	dwarf birch	Betula 'Golden Treasure' CESKY GOLD	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
1281	sweet birch	Betula lenta	"sweet birch"	https://perenual.com/storage/species_image/1281_betula_lenta/medium/30316536233_231e8568d8_b.jpg	["Sun"," Partial Shade"]	Average
1286	water birch	Betula occidentalis	"River Birch"	https://perenual.com/storage/species_image/1286_betula_occidentalis/medium/49852650303_ae4566b8c2_b.jpg	["full sun"]	Average
1287	paper birch	Betula papyrifera 'Varen' PRAIRIE DREAM	"White Birch"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Frequent
1288	European white birch	Betula pendula	"silver birch"	https://perenual.com/storage/species_image/1288_betula_pendula/medium/13952996937_bf790c084f_b.jpg	["Sun"]	Frequent
1289	silver birch	Betula pendula MAGICAL GLOBE	"silver birch"	https://perenual.com/storage/species_image/1289_betula_pendula_magical_globe/medium/birch-grove-forest-spring.jpg	["Sun"]	Frequent
1292	birch	Betula 'Royal Frost'	\N	https://perenual.com/storage/species_image/1292_betula_royal_frost/medium/B._pubescens_f._rubra_2.jpg	["Full sun","part shade"]	Frequent
1293	Himalayan birch	Betula utilis var. jacquemontii	\N	https://perenual.com/storage/species_image/1293_betula_utilis_var_jacquemontii/medium/9020914937_f8664866cf_b.jpg	["Full sun","part shade"]	Frequent
1294	Arizona beggarstick	Bidens aurea	\N	https://perenual.com/storage/species_image/1294_bidens_aurea/medium/51602760037_8e24af0c9d_b.jpg	["Full sun"]	Average
1295	cross vine	Bignonia capreolata 'Atrosanguinea'	\N	https://perenual.com/storage/species_image/1295_bignonia_capreolata_atrosanguinea/medium/Bignonia_capreolata.jpg	["full sun","part shade"]	Average
1296	Bismarck palm	Bismarckia nobilis	\N	https://perenual.com/storage/species_image/1296_bismarckia_nobilis/medium/25025773182_e4c2abce86_b.jpg	["full sun"]	Minimum
1297	meadow bistort	Bistorta officinalis	\N	https://perenual.com/storage/species_image/1297_bistorta_officinalis/medium/14275743484_796a6b64cf_b.jpg	["full sun","part shade"]	Average
1298	deer fern	Blechnum spicant	\N	https://perenual.com/storage/species_image/1298_blechnum_spicant/medium/19037882166_f4147f7171_b.jpg	["Part shade","full shade"]	Average
1302	akee	Blighia sapida	\N	https://perenual.com/storage/species_image/1302_blighia_sapida/medium/Blighia_sapida_in_Colombia.jpg	["Full sun"]	Average
1305	false chamomile	Boltonia asteroides var. latisquama	"Snowbank aster"	https://perenual.com/storage/species_image/1305_boltonia_asteroides_var_latisquama/medium/19783967908_b7f81b2f69_b.jpg	["Partial Shade"]	Average
1307	red silk cottontree	Bombax ceiba	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Frequent
1308	borage	Borago officinalis	\N	https://perenual.com/storage/species_image/1308_borago_officinalis/medium/51426550443_6ec1f1869d_b.jpg	["full sun","part shade"]	Average
1309	sideoats grass	Bouteloua curtipendula	"Side Oats Grama"	https://perenual.com/storage/species_image/1309_bouteloua_curtipendula/medium/20481812753_c93285f109_b.jpg	["Sun"," Partial Shade"]	Minimum
1315	Chinese mustard	Brassica juncea	\N	https://perenual.com/storage/species_image/1315_brassica_juncea/medium/48139869301_b604032873_b.jpg	["full sun","part shade"]	Average
1316	mustard greens	Brassica juncea 'Japanese Giant Red'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
1317	rutabaga	Brassica napus (Napobrassica Group)	\N	https://perenual.com/storage/species_image/1317_brassica_napus_napobrassica_group/medium/51997317516_789eafcc91_b.jpg	["full sun","part shade"]	Average
1318	rapeseed	Brassica napus (Oleifera Group)	\N	https://perenual.com/storage/species_image/1318_brassica_napus_oleifera_group/medium/52176476596_b973b8482f_b.jpg	["full sun"]	Average
1319	Siberian kale	Brassica napus (Pabularia Group)	\N	https://perenual.com/storage/species_image/1319_brassica_napus_pabularia_group/medium/1365px-Brassica_napus_plant2C_koolzaad_28129.jpg	["full sun","part shade"]	Average
1320	kale	Brassica oleracea (Acephala Group) 'Redbor'	\N	https://perenual.com/storage/species_image/1320_brassica_oleracea_acephala_group_redbor/medium/kohl-kale-red-green-cabbage-redbor.jpg	["full sun","part shade"]	Average
1321	Romanesco broccoli	Brassica oleracea (Botrytis Group)	\N	https://perenual.com/storage/species_image/1321_brassica_oleracea_botrytis_group/medium/25392112491_3facfbf97c_b.jpg	["full sun"]	Frequent
1325	Brussels sprouts	Brassica oleracea (Gemmifera Group)	\N	https://perenual.com/storage/species_image/1325_brassica_oleracea_gemmifera_group/medium/brussels-sprouts-vegetables-brussels-carbon-sprouts-cabbage.jpg	["full sun"]	Average
1326	kohlrabi	Brassica oleracea (Gongylodes Group)	\N	https://perenual.com/storage/species_image/1326_brassica_oleracea_gongylodes_group/medium/root-vegetable-white-turnip-turnips-roots-turnip.jpg	["full sun"]	Average
1327	broccoli	Brassica oleracea (Italica Group)	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Average
1328	ornamental cabbage	Brassica oleracea (Ornamental Cabbage and Kale Group)	\N	https://perenual.com/storage/species_image/1328_brassica_oleracea_ornamental_cabbage_and_kale_group/medium/318568954_0b66be78c0_b.jpg	["full sun","part shade"]	Average
1329	Asian greens	Brassica rapa (Asian Greens Group)	\N	https://perenual.com/storage/species_image/1329_brassica_rapa_asian_greens_group/medium/Brassica_rapa_subsp_narinosa.jpg	["full sun","part shade"]	Average
1332	Chinese cabbage	Brassica rapa (Pekinensis Group)	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun"]	Average
1333	turnip	Brassica rapa (Rapifera Group)	\N	https://perenual.com/storage/species_image/1333_brassica_rapa_rapifera_group/medium/51816290342_771a199fd5_b.jpg	["full sun"]	Average
1334	broccoli raab	Brassica rapa (Ruva Group)	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
1335	tat soi	Brassica rapa var. rosularis	\N	https://perenual.com/storage/species_image/1335_brassica_rapa_var_rosularis/medium/24605859029_ae624b33f6_b.jpg	["full sun","part shade"]	Average
1336	snowbush	Breynia disticha	\N	https://perenual.com/storage/species_image/1336_breynia_disticha/medium/24779650290_d3aeb869be_b.jpg	["full sun","part shade"]	Average
1337	false boneset	Brickellia eupatorioides	\N	https://perenual.com/storage/species_image/1337_brickellia_eupatorioides/medium/28889142413_7d3580ac6e_b.jpg	["Full sun","part shade"]	Minimum
1338	common quaking grass	Briza media	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
1339	smooth brome	Bromus inermis 'Skinner's Gold'	\N	https://perenual.com/storage/species_image/1339_bromus_inermis_skinners_gold/medium/52268197340_bb39283a28_b.jpg	["full sun","part shade"]	Minimum
1342	bush violet	Browallia speciosa	\N	https://perenual.com/storage/species_image/1342_browallia_speciosa/medium/38776942744_eb6bc1013b_b.jpg	["Full sun","part shade"]	Average
1343	brownea	Brownea coccinea subsp. capitella	\N	https://perenual.com/storage/species_image/1343_brownea_coccinea_subsp_capitella/medium/E5AFB6E586A0E69CA8_Brownea_capitella_-E696B0E58AA0E59DA1E6A48DE789A9E59C92_Singapore_Botanic_Gardens-_28920761820829.jpg	["Full sun","part shade"]	Average
1344	angel's trumpet	Brugmansia candida	\N	https://perenual.com/storage/species_image/1344_brugmansia_candida/medium/4934191189_e7aece5acf_b.jpg	["full sun"]	Average
1345	brugmansia	Brugmansia 'Pink Perfume'	\N	https://perenual.com/storage/species_image/1345_brugmansia_pink_perfume/medium/angel-trumpet-pink-toxic-flowers.jpg	["Full sun"]	Average
1346	maikoa	Brugmansia suaveolens	\N	https://perenual.com/storage/species_image/1346_brugmansia_suaveolens/medium/51282682179_b3c9afc30d_b.jpg	["Full sun"]	Average
1362	alternate-leaved butterfly bush	Buddleja alternifolia	\N	https://perenual.com/storage/species_image/1362_buddleja_alternifolia/medium/49110322106_8d3ef7620e_b.jpg	["Full sun","part shade"]	Average
1389	mountain sagewood	Buddleja loricata	\N	https://perenual.com/storage/species_image/1389_buddleja_loricata/medium/Budd._loricata_flowers.jpg	["Full sun"]	Average
1395	South African sage wood	Buddleja salviifolia	\N	https://perenual.com/storage/species_image/1395_buddleja_salviifolia/medium/17966565868_133ba6cf21_b.jpg	["Full sun"]	Minimum
1399	orange bulbine	Bulbine frutescens	\N	https://perenual.com/storage/species_image/1399_bulbine_frutescens/medium/39135511090_970d4428c8_b.jpg	["Full sun"]	Minimum
1400	gumbo-limbo	Bursera simaruba	\N	https://perenual.com/storage/species_image/1400_bursera_simaruba/medium/Bursera_simaruba_15zz.jpg	["full sun"]	Average
1401	flame of the forest	Butea monosperma	\N	https://perenual.com/storage/species_image/1401_butea_monosperma/medium/6920939647_f8d05f5cb2_b.jpg	["Full sun","part shade"]	Average
1402	South American jelly palm	Butia capitata	\N	https://perenual.com/storage/species_image/1402_butia_capitata/medium/5582656068_8138ef55c1_b.jpg	["full sun","part shade"]	Average
1403	Balearic boxwood	Buxus balearica	\N	https://perenual.com/storage/species_image/1403_buxus_balearica/medium/5579804755_bbaf2dbdd9_b.jpg	["Full sun","part shade"]	Average
1409	Harland boxwood	Buxus harlandii	\N	https://perenual.com/storage/species_image/1409_buxus_harlandii/medium/Buxus_harlandii_1zz.jpg	["Full sun","part shade"]	Average
1422	common box	Buxus sempervirens	\N	https://perenual.com/storage/species_image/1422_buxus_sempervirens/medium/51944088906_7a93dc559c_b.jpg	["Deep shade"," Filtered shade"," Full sun only if soil kept moist"," Part sun/part shade"]	Average
1453	Carolina fanwort	Cabomba caroliniana	\N	https://perenual.com/storage/species_image/1453_cabomba_caroliniana/medium/8373721958_f89f623cb5_b.jpg	["full sun","part sun/part shade"]	Frequent
1454	divi-divi	Caesalpinia coriaria	\N	https://perenual.com/storage/species_image/1454_caesalpinia_coriaria/medium/49163015211_7d786aed50_b.jpg	["Full sun","part shade"]	Minimum
1455	poinciana	Caesalpinia gilliesii	\N	https://perenual.com/storage/species_image/1455_caesalpinia_gilliesii/medium/27634406318_afd760c9ed_b.jpg	["full sun","part sun/part shade"]	Frequent
1456	pride of barbados	Caesalpinia pulcherrima	\N	https://perenual.com/storage/species_image/1456_caesalpinia_pulcherrima/medium/50103863477_43c1efeed3_b.jpg	["full sun"]	Frequent
1457	angel wings	Caladium bicolor	"angel wings"	https://perenual.com/storage/species_image/1457_caladium_bicolor/medium/25575875658_d782fb76f1_b.jpg	["part shade","part sun/part shade"]	Average
1463	reed grass	Calamagrostis brachytricha	\N	https://perenual.com/storage/species_image/1463_calamagrostis_brachytricha/medium/52387252870_3b93bf7c6a_b.jpg	["full sun"]	Frequent
1467	Cumberland reed grass	Calamovilfa arcuata	\N	https://perenual.com/storage/species_image/1467_calamovilfa_arcuata/medium/Calamovilfa_arcuata.jpg	["Full sun"]	Frequent
1469	rattlesnake plant	Calathea lancifolia	\N	https://perenual.com/storage/species_image/1469_calathea_lancifolia/medium/3676781257_2e8730f471_b.jpg	["part shade","part sun/part shade"]	Average
1470	peacock plant	Calathea makoyana	\N	https://perenual.com/storage/species_image/1470_calathea_makoyana/medium/5455983461_9d5ac395aa_b.jpg	["part shade","part sun/part shade"]	Average
1472	slipper flower	Calceolaria (Herbeohybrida Group)	"pouch flower"	https://perenual.com/storage/species_image/1472_calceolaria_herbeohybrida_group/medium/2428017395_db5e093bd6_b.jpg	["Part shade","full shade"]	Average
1473	marigold	Calendula officinalis	\N	https://perenual.com/storage/species_image/1473_calendula_officinalis/medium/52278754303_ec74264930_b.jpg	["full sun"]	Average
1476	water arum	Calla palustris	"Water Arum"	https://perenual.com/storage/species_image/1476_calla_palustris/medium/52126915441_df34301803_b.jpg	["part shade","full shade"]	Average
1477	powder puff tree	Calliandra haematocephala	\N	https://perenual.com/storage/species_image/1477_calliandra_haematocephala/medium/52063600268_834ebc0538_b.jpg	["Full sun"]	Average
1488	Japanese beautyberry	Callicarpa japonica	\N	https://perenual.com/storage/species_image/1488_callicarpa_japonica/medium/50519037076_6a78000b65_b.jpg	["Full sun","part shade"]	Average
1490	shikoku beautyberry	Callicarpa shikokiana	\N	https://perenual.com/storage/species_image/1490_callicarpa_shikokiana/medium/7985396230_5581715566_b.jpg	["Full sun","part shade"]	Average
1491	black wattle	Callicoma serratifolia	\N	https://perenual.com/storage/species_image/1491_callicoma_serratifolia/medium/6075978469_129d324aef_b.jpg	["Full sun","part shade"]	Average
1494	Bush's poppy mallow	Callirhoe bushii	\N	https://perenual.com/storage/species_image/1494_callirhoe_bushii/medium/2560px-Poppymallow_1331.jpg	["Full sun"]	Minimum
1495	fringed poppy mallow	Callirhoe digitata	\N	https://perenual.com/storage/species_image/1495_callirhoe_digitata/medium/43006813335_4f259472cb_b.jpg	["Full sun"]	Minimum
1496	purple poppy mallow	Callirhoe involucrata	\N	https://perenual.com/storage/species_image/1496_callirhoe_involucrata/medium/20955754593_d8dc04c810_b.jpg	["Full sun"]	Minimum
1497	clustered poppy mallow	Callirhoe triangulata	\N	https://perenual.com/storage/species_image/1497_callirhoe_triangulata/medium/19679462245_a9b827a99f_b.jpg	["Full sun"]	Minimum
1499	crimson bottlebrush	Callistemon citrinus	\N	https://perenual.com/storage/species_image/1499_callistemon_citrinus/medium/49024199786_85bea4772f_b.jpg	["Full sun"]	Average
1500	lemon bottlebrush	Callistemon pallidus	\N	https://perenual.com/storage/species_image/1500_callistemon_pallidus/medium/5455833449_010993bd69_b.jpg	["Full sun","part shade"]	Frequent
1501	stiff bottlebrush	Callistemon rigidus	\N	https://perenual.com/storage/species_image/1501_callistemon_rigidus/medium/8452634702_69590c77b0_b.jpg	["Full sun"]	Average
1503	China aster	Callistephus chinensis	\N	https://perenual.com/storage/species_image/1503_callistephus_chinensis/medium/Callistephus_chinensis_2021-09-01_0242.jpg	["Full sun","part shade"]	Average
1508	grass pink orchid	Calopogon tuberosus	\N	https://perenual.com/storage/species_image/1508_calopogon_tuberosus/medium/52305878150_64123b8a74_b.jpg	["full sun","part shade"]	Frequent
1509	giant milkweed	Calotropis gigantea	\N	https://perenual.com/storage/species_image/1509_calotropis_gigantea/medium/24847034070_f858b07333_b.jpg	["Full sun"]	Average
1510	roostertree	Calotropis procera	\N	https://perenual.com/storage/species_image/1510_calotropis_procera/medium/52510464700_bf08e6fbc5_b.jpg	["Full sun","part shade"]	Minimum
1511	marsh marigold	Caltha palustris	"Wild Calla Lily"	https://perenual.com/storage/species_image/1511_caltha_palustris/medium/51997588079_70c80507a9_b.jpg	["Sun"," Partial Shade"]	Frequent
1512	Chinese sweetshrub	Calycanthus chinensis	\N	https://perenual.com/storage/species_image/1512_calycanthus_chinensis/medium/2560px-Calycanthus_chinensis_2020-06-23_9522.jpg	["Full sun","part shade"]	Average
1515	Californian allspice	Calycanthus occidentalis	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
1519	shrubby evening primrose	Calylophus serrulatus	\N	https://perenual.com/storage/species_image/1519_calylophus_serrulatus/medium/D096D0BED0B2D182D0B5D186D18C_D196D0BBD196D180D196D0B9D181D18CD0BAD0B8D0B9_D0BDD0B0_D181D182D0B5D0BFD0BED0B2D0BED0BCD183_D181D185D0B8D0BBD196_D0B4D0BED0BBD0B8D0BDD0B8_D180D196D187D0BAD0B8_D0AFD182D180D0B0D0BDD18C.jpg	["Full sun"]	Minimum
1520	prairie camas	Camassia angusta	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
1521	Cusick's camass	Camassia cusickii	\N	https://perenual.com/storage/species_image/1521_camassia_cusickii/medium/52085333725_69de6490e0_b.jpg	["Full sun","part shade"]	Frequent
1522	large camas	Camassia leichtlinii	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Sun"]	Average
1525	wild hyacinth	Camassia scilloides	"Atlantic Camas"	https://perenual.com/storage/species_image/1525_camassia_scilloides/medium/52018796365_365b605111_b.jpg	["Partial Shade"," Shade"]	Average
1535	yellow camellia	Camellia petelotii var. petelotii	\N	https://perenual.com/storage/species_image/1535_camellia_petelotii_var_petelotii/medium/52219180804_4f356e559f_b.jpg	["Part shade"]	Average
1539	tea	Camellia sinensis	\N	https://perenual.com/storage/species_image/1539_camellia_sinensis/medium/30876009547_674c0fcc3f_b.jpg	["Part shade"]	Average
1541	tall bellflower	Campanula americana	\N	https://perenual.com/storage/species_image/1541_campanula_americana/medium/35281868914_cd6441792f_b.jpg	["Full sun","part shade"]	Average
1543	tussock bellflower	Campanula carpatica f. alba 'Weisse Clips' WHITE CLIPS	\N	https://perenual.com/storage/species_image/1543_campanula_carpatica_f_alba_weisse_clips_white_clips/medium/51393550582_3dcdd0baca_b.jpg	["Full sun","part shade"]	Average
1545	Adriatic bellflower	Campanula garganica 'Dickson's Gold'	\N	https://perenual.com/storage/species_image/1545_campanula_garganica_dicksons_gold/medium/51765369977_d73847f8f2_b.jpg	["Full sun","part shade"]	Average
1551	Odessa bellflower	Campanula glomerata var. dahurica 'Odessa'	\N	https://perenual.com/storage/species_image/1551_campanula_glomerata_var_dahurica_odessa/medium/Campanula_glomerata_Superba_2zz.jpg	["full sun","part shade"]	Average
1555	milky bellflower	Campanula lactiflora 'Pouffe'	\N	https://perenual.com/storage/species_image/1555_campanula_lactiflora_pouffe/medium/36323598651_92faaba614_b.jpg	["Full sun","part shade"]	Average
1559	peach-leaved bellflower	Campanula persicifolia 'Chettle Charm'	"peach-leaved bellflower"	https://perenual.com/storage/species_image/1559_campanula_persicifolia_chettle_charm/medium/52253762173_c0575455ce_b.jpg	["full sun","part shade"]	Average
1563	Dalmation bellflower	Campanula portenschlagiana 'Aurea'	\N	https://perenual.com/storage/species_image/1563_campanula_portenschlagiana_aurea/medium/2560px-Campanula_portenschlagiana_A.jpg	["Full sun","part shade"]	Average
1569	rampion bellflower	Campanula rapunculoides	"Rampion Bellflower"	https://perenual.com/storage/species_image/1569_campanula_rapunculoides/medium/51423217822_3779a56dc1_b.jpg	["Sun"," Partial Shade"]	Average
1570	rampion	Campanula rapunculus	\N	https://perenual.com/storage/species_image/1570_campanula_rapunculus/medium/34343129703_3e180fc119_b.jpg	["Full sun","part shade"]	Average
1578	nettle-leaved bellflower	Campanula trachelium	\N	https://perenual.com/storage/species_image/1578_campanula_trachelium/medium/51866157544_557753af80_b.jpg	["full sun","part shade"]	Average
1587	camptosema	Camptosema praeandinum	\N	https://perenual.com/storage/species_image/1587_camptosema_praeandinum/medium/Crista-de-galo_28Camptosema_grandiflora292C_brazilian_native._Sao_Paulo_Botanical_garden7.jpg	["Full sun","part shade"]	Average
1595	cayenne pepper	Capsicum annuum	\N	https://perenual.com/storage/species_image/1595_capsicum_annuum/medium/51677548162_b86511d0e5_b.jpg	["full sun"]	Average
1596	sweet pepper	Capsicum annuum 'Bananarama'	\N	https://perenual.com/storage/species_image/1596_capsicum_annuum_bananarama/medium/52253428433_0748cd6ff6_b.jpg	["Full sun"]	Average
1599	hot pepper	Capsicum annuum 'Holy Mole'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
1602	sweet bell pepper	Capsicum annuum 'Park's Early Thickset'	\N	https://perenual.com/storage/species_image/1602_capsicum_annuum_parks_early_thickset/medium/bell-pepper-plant-pepper-shrub-paprika-pepper-harvest.jpg	["Full sun"]	Average
1605	habanero pepper	Capsicum chinense 'Roulette'	\N	https://perenual.com/storage/species_image/1605_capsicum_chinense_roulette/medium/51050016636_03ee376ee8_b.jpg	["full sun"]	Average
1606	Siberian peashrub	Caragana arborescens	\N	https://perenual.com/storage/species_image/1606_caragana_arborescens/medium/36200941416_a244616720_b.jpg	["Full sun"]	Minimum
1607	rose peashrub	Caragana rosea	\N	https://perenual.com/storage/species_image/1607_caragana_rosea/medium/9216111658_14dbc2a85c_b.jpg	["Full sun"]	Minimum
1608	cutleaf toothwort	Cardamine concatenata	\N	https://perenual.com/storage/species_image/1608_cardamine_concatenata/medium/51972744827_9ab3bf0ba7_b.jpg	["Sun"," Partial Shade"]	Average
1609	bitter cress	Cardamine pratensis	"Cuckoo Bittercress"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Frequent
1610	trifoliate bittercress	Cardamine trifolia	\N	https://perenual.com/storage/species_image/1610_cardamine_trifolia/medium/CardamineTrifolia.jpg	["Part shade","full shade"]	Average
1611	Cardiandra	Cardiandra alternifolia	\N	https://perenual.com/storage/species_image/1611_cardiandra_alternifolia/medium/Cardiandra_alternifolia_kusaazsi03.jpg	["Part shade"]	Average
1614	broadwing sedge	Carex alata	"Broadwing Sedge"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Sun"," Partial Shade"]	Frequent
1615	white-tinged sedge	Carex albicans	"White Tinge Sedge"	https://perenual.com/storage/species_image/1615_carex_albicans/medium/41217983275_125d4e9e3d_b.jpg	["Sun"," Partial Shade"]	Average
1617	prairie sedge	Carex bicknellii	"Copper Shouldered Oval Sedge"	https://perenual.com/storage/species_image/1617_carex_bicknellii/medium/6467477919_0cd519e1e0_b.jpg	["Sun"," Partial Shade"," Shade"]	Average
1618	brome-like sedge	Carex bromoides	\N	https://perenual.com/storage/species_image/1618_carex_bromoides/medium/2560px-Carex_remota_kz07.jpg	["Part shade"]	Frequent
1621	Bush's sedge	Carex bushii	\N	https://perenual.com/storage/species_image/1621_carex_bushii/medium/Carex_swanii_23_June_2018_Will_County2C_Illinois.jpg	["Full sun","part shade"]	Frequent
1627	fringed sedge	Carex crinita	\N	https://perenual.com/storage/species_image/1627_carex_crinita/medium/26298830557_4057e00d18_b.jpg	["Full sun","part shade"]	Frequent
1630	Davis's sedge	Carex davisii	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["part sun/part shade","full sun"]	Average
1632	bristle-leaved sedge	Carex eburnea	"Black Fruited Sedge"	https://perenual.com/storage/species_image/1632_carex_eburnea/medium/2560px-Carex_eburnea_kz01.jpg	["Part shade","full shade"]	Average
1633	tufted sedge	Carex elata	\N	https://perenual.com/storage/species_image/1633_carex_elata/medium/27192153993_c9f54d0276_b.jpg	["Full sun","part shade"]	Frequent
1634	Bowles' golden sedge	Carex elata 'Aurea'	\N	https://perenual.com/storage/species_image/1634_carex_elata_aurea/medium/27192153993_c9f54d0276_b.jpg	["Part shade","full shade"]	Frequent
1635	blue green sedge	Carex flacca	"Glaucus Sedge"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Sun"," Partial Shade"]	Frequent
1636	blue sedge	Carex flacca 'Blue Zinger'	"Glaucus Sedge"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Sun"," Partial Shade"]	Frequent
1637	blue wood sedge	Carex flaccosperma	\N	https://perenual.com/storage/species_image/1637_carex_flaccosperma/medium/2560px-Grasses_of_Kerala_07239.jpg	["Part shade","full shade"]	Frequent
1638	Frank's sedge	Carex frankii	\N	https://perenual.com/storage/species_image/1638_carex_frankii/medium/Carex_pseudocyperus_inflorescens_281929.jpg	["Sun"," Partial Shade"]	Frequent
1639	gray sedge	Carex grayi	"Bur Sedge"	https://perenual.com/storage/species_image/1639_carex_grayi/medium/28537687075_61a056d85a_b.jpg	["Sun"," Partial Shade"," Deciduous Shade (Spring Sun)"]	Frequent
1640	Hayden's sedge	Carex haydenii	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Sun"," Partial Shade"]	Frequent
1644	oval sedge	Carex leporina	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Part shade","full shade"]	Frequent
1645	sallow sedge	Carex lurida	"Sallow Sedge"	https://perenual.com/storage/species_image/1645_carex_lurida/medium/51178147282_2dba5552a9_b.jpg	["full sun","part sun/part shade"]	Average
1655	greater straw sedge	Carex normalis	\N	https://perenual.com/storage/species_image/1655_carex_normalis/medium/Carex_normalis_2.jpg	["Sun"," Partial Shade"]	Frequent
1665	clustered field sedge	Carex praegracilis	"Freeway Sedge"	https://perenual.com/storage/species_image/1665_carex_praegracilis/medium/50219839618_6d6e20dc7f_b.jpg	["Sun"]	Frequent
1666	eastern star sedge	Carex radiata	"Eastern Star Sedge"	https://perenual.com/storage/species_image/1666_carex_radiata/medium/Carex_radiata_-_Hauck_Botanic_Gardens_-_DSC03769_28cropped29.jpg	["full sun","part sun/part shade"]	Minimum
1667	reflexed sedge	Carex retroflexa	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Partial Shade"," Deciduous Shade (Spring Sun)"]	Minimum
1673	squarrose sedge	Carex squarrosa	\N	https://perenual.com/storage/species_image/1673_carex_squarrosa/medium/49783395316_52d4e67610_b.jpg	["Sun"," Partial Shade"]	Frequent
1674	tussock sedge	Carex stricta	"Upright Sedge"	https://perenual.com/storage/species_image/1674_carex_stricta/medium/6405964869_b5ab595d57_b.jpg	["full sun","part shade"]	Frequent
1676	Berkeley sedge	Carex tumulicola	"Splitawn Sedge"	https://perenual.com/storage/species_image/1676_carex_tumulicola/medium/Carex_tumulicola_kz3.jpg	["Sun"," Partial Shade"]	Frequent
1677	fox sedge	Carex vulpinoidea	\N	https://perenual.com/storage/species_image/1677_carex_vulpinoidea/medium/50025444643_39b8298937_b.jpg	["Sun"]	Frequent
1680	bush anemone	Carpenteria californica 'Elizabeth'	\N	https://perenual.com/storage/species_image/1680_carpenteria_californica_elizabeth/medium/Carpenteria_californica_kz01.jpg	["Full sun","part shade"]	Minimum
1681	common hornbeam	Carpinus betulus 'Columnaris Nana'	\N	https://perenual.com/storage/species_image/1681_carpinus_betulus_columnaris_nana/medium/51874473616_ed686d6be8_b.jpg	["Full sun","part shade"]	Average
1682	American hornbeam	Carpinus caroliniana	"Blue Beech"	https://perenual.com/storage/species_image/1682_carpinus_caroliniana/medium/30764165451_028cd12a07_b.jpg	["Partial Shade"," Shade"]	Average
1683	hornbeam	Carpinus cordata	\N	https://perenual.com/storage/species_image/1683_carpinus_cordata/medium/1365px-Carpinus_cordata_04.jpg	["Part shade","full shade"]	Average
1684	oriental hornbeam	Carpinus orientalis	\N	https://perenual.com/storage/species_image/1684_carpinus_orientalis/medium/2527px-Carpinus_orientalis_multi-stemmed.jpg	["Part shade","full shade"]	Average
1685	bitternut hickory	Carya cordiformis	"Swamp Hickory"	https://perenual.com/storage/species_image/1685_carya_cordiformis/medium/35706708956_7827e0db18_b.jpg	["Sun"," Partial Shade"]	Frequent
1686	pignut	Carya glabra	"Black Hickory"	https://perenual.com/storage/species_image/1686_carya_glabra/medium/52367535256_a4a2c600a3_b.jpg	["Full sun","part shade"]	Average
2512	leatherwood	Dirca palustris	\N	https://perenual.com/storage/species_image/2512_dirca_palustris/medium/52281630514_f7d2ea1ac5_b.jpg	["part sun/part shade"]	Average
1689	shellbark hickory	Carya laciniosa	"Kingnut Hickory"	https://perenual.com/storage/species_image/1689_carya_laciniosa/medium/35359612770_43b6e0bd1e_b.jpg	["Full sun","part shade"]	Frequent
1690	hickory	Carya laneyi	\N	https://perenual.com/storage/species_image/1690_carya_laneyi/medium/52637828200_ab9d23d9a5_b.jpg	["Full sun","part shade"]	Average
1691	shagbark hickory	Carya ovata	"Upland Hickory"	https://perenual.com/storage/species_image/1691_carya_ovata/medium/9062760925_26a70e37b7_b.jpg	["full sun"]	Average
1692	mockernut	Carya tomentosa	\N	https://perenual.com/storage/species_image/1692_carya_tomentosa/medium/52487088885_5bec97cef5_b.jpg	["Sun"]	Average
1705	wishing tree	Cassia bakeriana	\N	https://perenual.com/storage/species_image/1705_cassia_bakeriana/medium/50013535496_091986a639_b.jpg	["Full sun"]	Average
1708	cassiope	Cassiope 'Randle Cooke'	\N	https://perenual.com/storage/species_image/1708_cassiope_randle_cooke/medium/51653085164_3d9d2cbe8a_b.jpg	["Full sun","part shade"]	Frequent
1709	Japanese chestnut	Castanea crenata	\N	https://perenual.com/storage/species_image/1709_castanea_crenata/medium/23010217995_178aa8aabc_b.jpg	["Full sun"]	Average
1710	American chestnut	Castanea dentata	"Sweet Chestnut"	https://perenual.com/storage/species_image/1710_castanea_dentata/medium/50331266137_77acd7616d_b.jpg	["Full sun"]	Average
1711	Ozark chinquapin	Castanea ozarkensis	\N	https://perenual.com/storage/species_image/1711_castanea_ozarkensis/medium/2560px-Atlas_roslin_pl_Kasztan_jadalny_10922_8628.jpg	["Full sun"]	Average
1712	Indian paintbrush	Castilleja coccinea	"Indian Paintbrush"	https://perenual.com/storage/species_image/1712_castilleja_coccinea/medium/24470364784_a15f1dfc79_b.jpg	["Sun"]	Average
1713	Chinese catalpa	Catalpa ovata	\N	https://perenual.com/storage/species_image/1713_catalpa_ovata/medium/46053174505_f56c3d040b_b.jpg	["full sun","part shade"]	Frequent
1714	cupid's dart	Catananche caerulea	\N	https://perenual.com/storage/species_image/1714_catananche_caerulea/medium/48187616897_659f5186e9_b.jpg	["Full sun"]	Average
1715	Madagascar periwinkle	Catharanthus roseus	\N	https://perenual.com/storage/species_image/1715_catharanthus_roseus/medium/49305331131_4e5ab296ac_b.jpg	["full sun","part shade"]	Average
1719	cavanillesia	Cavanillesia platanifolia	\N	https://perenual.com/storage/species_image/1719_cavanillesia_platanifolia/medium/7167520234_bc9c2272c8_b.jpg	["full sun"]	Average
1720	New Jersey tea	Ceanothus americanus	"Red Root"	https://perenual.com/storage/species_image/1720_ceanothus_americanus/medium/52602569619_d23bae5d14_b.jpg	["Sun"," Partial Shade"]	Minimum
1723	inland New Jersey tea	Ceanothus herbaceus	"Jersey Tea"	https://perenual.com/storage/species_image/1723_ceanothus_herbaceus/medium/8932989532_3fd2610379_b.jpg	["Full sun"]	Minimum
1727	blue mountain lilac	Ceanothus thyrsiflorus 'Skylark'	\N	https://perenual.com/storage/species_image/1727_ceanothus_thyrsiflorus_skylark/medium/Ceanothus_thyrsiflorus_27Skylark27_kz3.jpg	["Full sun","part shade"]	Minimum
1730	Himalayan cedar	Cedrus deodara 'Shalimar'	\N	https://perenual.com/storage/species_image/1730_cedrus_deodara_shalimar/medium/1536px-Cedrus_deodara_27Shalimar27_cone_at_the_New_York_Botanical_Garden.jpg	["Full sun"]	Average
1734	kapoktree	Ceiba pentandra	\N	https://perenual.com/storage/species_image/1734_ceiba_pentandra/medium/52577950949_ae4e9bf649_b.jpg	["full sun"]	Average
1735	oriental bittersweet	Celastrus orbiculatus	"Oriental Bittersweet"	https://perenual.com/storage/species_image/1735_celastrus_orbiculatus/medium/49056908163_e5da42d657_b.jpg	["Sun"," Partial Shade"]	Average
1736	American bittersweet	Celastrus scandens	"Climbing Bittersweet"	https://perenual.com/storage/species_image/1736_celastrus_scandens/medium/9054601510_525c180013_b.jpg	["Sun"," Partial Shade"]	Average
1739	cockscomb	Celosia argentea var. cristata (Cristata Group)	\N	https://perenual.com/storage/species_image/1739_celosia_argentea_var_cristata_cristata_group/medium/flowers-field-people-red-nature-wild-flowers.jpg	["Full sun"]	Average
1741	Mediterranean hackberry	Celtis australis	\N	https://perenual.com/storage/species_image/1741_celtis_australis/medium/51163956003_f40b23b248_b.jpg	["Full sun"]	Average
1742	sugarberry	Celtis laevigata	\N	https://perenual.com/storage/species_image/1742_celtis_laevigata/medium/brazil-universidade-estadual-paulista-julio-de-mesquita-filho-forest.jpg	["Full sun","part shade"]	Frequent
1743	hackberry	Celtis occidentalis	"Bastard Elm"	https://perenual.com/storage/species_image/1743_celtis_occidentalis/medium/43766978374_11f4749216_b.jpg	["Sun"," Partial Shade"]	Frequent
1744	weeping Japanese hackberry	Celtis sinensis 'Green Cascade'	\N	https://perenual.com/storage/species_image/1744_celtis_sinensis_green_cascade/medium/800px-Celtis_sinensis_in_Hackfalls_Arboretum_28429.jpg	["Full sun","part shade"]	Average
1745	cornflower	Centaurea cyanus	"Bachelor's Button"	https://perenual.com/storage/species_image/1745_centaurea_cyanus/medium/52294924979_1e0d2f49b1_b.jpg	["full sun","part shade"]	Average
1746	knapweed	Centaurea dealbata	\N	https://perenual.com/storage/species_image/1746_centaurea_dealbata/medium/35066134070_1b408ace34_b.jpg	["Full sun"]	Average
1747	bighead knapweed	Centaurea macrocephala	\N	https://perenual.com/storage/species_image/1747_centaurea_macrocephala/medium/4998442329_1762f5d79d_b.jpg	["Full sun"]	Minimum
1750	perennial cornflower	Centaurea montana 'Gold Bullion'	"Perennial Cornflower"	https://perenual.com/storage/species_image/1750_centaurea_montana_gold_bullion/medium/49433282823_4451f6d08d_b.jpg	["Full sun"," Part sun/part shade"]	Minimum
1754	bachelor's button	Centratherum punctatum 'Button Beauty'	\N	https://perenual.com/storage/species_image/1754_centratherum_punctatum_button_beauty/medium/2560px-Centratherum_punctatum_-_Brazilian_Button_Flower_28129.jpg	["Full sun"]	Average
1755	buttonbush	Cephalanthus occidentalis	"Common Buttonbush"	https://perenual.com/storage/species_image/1755_cephalanthus_occidentalis/medium/52140527402_128a8af17f_b.jpg	["Partial Shade"," Shade"]	Frequent
1756	giant pincushion flower	Cephalaria gigantea	\N	https://perenual.com/storage/species_image/1756_cephalaria_gigantea/medium/14309558510_2edddd8e05_b.jpg	["Full sun"]	Average
1757	Chinese plum yew	Cephalotaxus fortunei	\N	https://perenual.com/storage/species_image/1757_cephalotaxus_fortunei/medium/33454539652_e304f79620_b.jpg	["Part shade","full shade"]	Average
1760	cow's tail pine	Cephalotaxus harringtonia 'Nana'	\N	https://perenual.com/storage/species_image/1760_cephalotaxus_harringtonia_nana/medium/Cephalotaxus_harringtonia_var._nana_5.jpg	["Part shade","full shade"]	Average
1761	field chickweed	Cerastium arvense	\N	https://perenual.com/storage/species_image/1761_cerastium_arvense/medium/51881741515_3bc241c34a_b.jpg	["Sun"]	Minimum
1762	mouse-ear chickweed	Cerastium arvense subsp. glandulosum	\N	https://perenual.com/storage/species_image/1762_cerastium_arvense_subsp_glandulosum/medium/51873958295_57b10ae3ce_b.jpg	["Sun"]	Minimum
1766	St. John's bread	Ceratonia siliqua	\N	https://perenual.com/storage/species_image/1766_ceratonia_siliqua/medium/51727496702_12a8e930cb_b.jpg	["Full sun"]	Minimum
1767	ceratostigma	Ceratostigma abyssinicum	\N	https://perenual.com/storage/species_image/1767_ceratostigma_abyssinicum/medium/af3144c03bd96ecffba9e8c066ab007965503450.jpg	["Full sun"]	Average
1768	plumbago	Ceratostigma plumbaginoides	\N	https://perenual.com/storage/species_image/1768_ceratostigma_plumbaginoides/medium/1638px-Ceratostigma_plumbaginoides_-_Fleurs.jpg	["Full sun","part shade"]	Average
1785	redbud	Cercis 'Merlot'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
1786	Judas tree	Cercis siliquastrum	\N	https://perenual.com/storage/species_image/1786_cercis_siliquastrum/medium/52023115307_dd766b26a7_b.jpg	["Full sun","part shade"]	Average
1787	mountain mahogany	Cercocarpus montanus	\N	https://perenual.com/storage/species_image/1787_cercocarpus_montanus/medium/Cercocarpus_montanus_-_Flickr_-_aspidoscelis.jpg	["Full sun"]	Minimum
1788	orange jessamine	Cestrum aurantiacum	\N	https://perenual.com/storage/species_image/1788_cestrum_aurantiacum/medium/30999301361_53c2b6f922_b.jpg	["full sun"]	Average
1789	purple cestrum	Cestrum elegans	\N	https://perenual.com/storage/species_image/1789_cestrum_elegans/medium/4773903444_eafd97c924_b.jpg	["full sun","part shade"]	Minimum
1818	chamaecytisus	Chamaecytisus hirsutus	\N	https://perenual.com/storage/species_image/1818_chamaecytisus_hirsutus/medium/8304604088_3bb9762f55_b.jpg	["Full sun","part shade"]	Average
1819	leatherleaf	Chamaedaphne calyculata 'Verdant'	\N	https://perenual.com/storage/species_image/1819_chamaedaphne_calyculata_verdant/medium/52386178358_0b4baefd2f_b.jpg	["Full sun Partial sun"]	Frequent
1820	parlor palm	Chamaedorea elegans	"neanthe bella palm"	https://perenual.com/storage/species_image/1820_chamaedorea_elegans/medium/24981394791_176142abd3_b.jpg	["part shade"]	Average
1821	chamaedorea	Chamaedorea microspadix	\N	https://perenual.com/storage/species_image/1821_chamaedorea_microspadix/medium/26815590515_805ab5b081_b.jpg	["part shade"]	Frequent
1823	fairy wand	Chamaelirium luteum	"Fairywand"	https://perenual.com/storage/species_image/1823_chamaelirium_luteum/medium/3918371474_36e925b08a_b.jpg	["Sun"," Partial Shade"]	Average
1824	chamomile	Chamaemelum nobile	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
1827	northern sea oats	Chasmanthium latifolium	"Indian Woodoats"	https://perenual.com/storage/species_image/1827_chasmanthium_latifolium/medium/49052331178_9bbf4db8c2_b.jpg	["Sun"," Partial Shade"]	Frequent
1828	greater celandine	Chelidonium majus	"Swallow Wort"	https://perenual.com/storage/species_image/1828_chelidonium_majus/medium/41229326874_9edd2a1ee1_b.jpg	["Sun"," Partial Shade"]	Average
1829	white turtlehead	Chelone glabra	"White Turtlehead"	https://perenual.com/storage/species_image/1829_chelone_glabra/medium/48649062712_79b35154ed_b.jpg	["Part shade"]	Frequent
1834	shellflower	Chelone obliqua var. speciosa	\N	https://perenual.com/storage/species_image/1834_chelone_obliqua_var_speciosa/medium/Chelone_obliqua_A.jpg	["part shade","filtered shade"]	Average
1835	Japanese turtlehead	Chelonopsis yagiharana	\N	https://perenual.com/storage/species_image/1835_chelonopsis_yagiharana/medium/Chelonopsis_yagiharana_2.jpg	["Full sun","part shade"]	Average
1836	quinoa	Chenopodium quinoa	\N	https://perenual.com/storage/species_image/1836_chenopodium_quinoa/medium/51970611547_474ec1c40b_b.jpg	["Full sun"]	Average
1839	wintersweet	Chimonanthus praecox	\N	https://perenual.com/storage/species_image/1839_chimonanthus_praecox/medium/52097245318_07fcc71ba3_b.jpg	["Full sun","part shade"]	Average
1840	Chinese fringe tree	Chionanthus retusus 'Tokyo Tower'	\N	https://perenual.com/storage/species_image/1840_chionanthus_retusus_tokyo_tower/medium/51977306321_89f586f0d2_b.jpg	["Full sun","part shade"]	Average
1852	silk floss tree	Chorisia speciosa	\N	https://perenual.com/storage/species_image/1852_chorisia_speciosa/medium/23508266388_a86b95e6cf_b.jpg	["Full sun"]	Average
1875	golden knee	Chrysogonum virginianum	\N	https://perenual.com/storage/species_image/1875_chrysogonum_virginianum/medium/52060286368_b4f0e6abc2_b.jpg	["Part shade","full shade"]	Frequent
1876	goldenstar	Chrysogonum virginianum 'Allen Bush'	\N	https://perenual.com/storage/species_image/1876_chrysogonum_virginianum_allen_bush/medium/Chrysogonum_virginianum_Allen_Bush_1zz.jpg	["Part shade","full shade"]	Average
1877	star apple	Chrysophyllum cainito	\N	https://perenual.com/storage/species_image/1877_chrysophyllum_cainito/medium/24516065483_28701b38e1_b.jpg	["full sun"]	Average
1878	golden aster	Chrysopsis mariana	\N	https://perenual.com/storage/species_image/1878_chrysopsis_mariana/medium/Chrysopsis_mariana_-_Maryland_Golden_Aster.jpg	["Full sun","part shade"]	Minimum
1879	chicory	Cichorium intybus	\N	https://perenual.com/storage/species_image/1879_cichorium_intybus/medium/52347380770_908f5f52e9_b.jpg	["Full sun"]	Average
1880	wood reed grass	Cinna arundinacea	"Sweet Woodreed"	https://perenual.com/storage/species_image/1880_cinna_arundinacea/medium/wind-blowing-gray-plants.jpg	["full sun"]	Frequent
1881	Chinese cinnamon tree	Cinnamomum cassia	\N	https://perenual.com/storage/species_image/1881_cinnamomum_cassia/medium/24863710281_f765890747_b.jpg	["Full sun","part shade"]	Average
1882	cinnamon	Cinnamomum verum	\N	https://perenual.com/storage/species_image/1882_cinnamomum_verum/medium/6674347847_0921897054_b.jpg	["Full sun","part shade"]	Average
1883	grape ivy	Cissus alata	\N	https://perenual.com/storage/species_image/1883_cissus_alata/medium/2560px-Cissus_rhombifolia_Mandaiana_2017-10-02_6618.jpg	["Part shade"]	Average
1884	marine ivy	Cissus trifoliata	\N	https://perenual.com/storage/species_image/1884_cissus_trifoliata/medium/35751301814_135ac65204_b.jpg	["full sun"]	Average
1885	watermelon	Citrullus lanatus	\N	https://perenual.com/storage/species_image/1885_citrullus_lanatus/medium/24563439383_073cc7d9dd_b.jpg	["full sun"]	Average
1886	Thai lime	Citrus hystrix	\N	https://perenual.com/storage/species_image/1886_citrus_hystrix/medium/52497420446_f1e97c4900_b.jpg	["Full sun"]	Average
1887	kumquat	Citrus japonica 'Centennial Variegated'	\N	https://perenual.com/storage/species_image/1887_citrus_japonica_centennial_variegated/medium/52388128456_cfb6e458f1_b.jpg	["Full sun"]	Average
1888	lemon	Citrus limon	\N	https://perenual.com/storage/species_image/1888_citrus_limon/medium/52457383899_cd1df60899_b.jpg	["full sun"]	Average
1889	pummelo	Citrus maxima	\N	https://perenual.com/storage/species_image/1889_citrus_maxima/medium/51008956827_5733a1c387_b.jpg	["full sun"]	Average
1890	Buddha's hand	Citrus medica var. sarcodactylis	\N	https://perenual.com/storage/species_image/1890_citrus_medica_var_sarcodactylis/medium/2560px-Buddhas-Hand-Zitrone_04.jpg	["Full sun"]	Average
1891	meyer lemon	Citrus meyeri	\N	https://perenual.com/storage/species_image/1891_citrus_meyeri/medium/52503082796_4e584f5e18_b.jpg	["full sun","part shade"]	Minimum
1892	giant lemon	Citrus 'Ponderosa'	\N	https://perenual.com/storage/species_image/1892_citrus_ponderosa/medium/52120765575_fe9caaeb2c_b.jpg	["Full sun"]	Average
1893	mandarin orange	Citrus reticulata 'Clementine'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
1894	blood orange	Citrus sinensis 'Moro'	\N	https://perenual.com/storage/species_image/1894_citrus_sinensis_moro/medium/Citrus-sinensis-fruit.jpg	["full sun"]	Average
1900	satin flower	Clarkia amoena	\N	https://perenual.com/storage/species_image/1900_clarkia_amoena/medium/49993959112_eb5d4ebbab_b.jpg	["full sun","part shade"]	Average
1901	spring beauty	Claytonia virginica	\N	https://perenual.com/storage/species_image/1901_claytonia_virginica/medium/52350989949_19fe95289c_b.jpg	["Full sun","part shade"]	Average
1908	blue jasmine	Clematis crispa	\N	https://perenual.com/storage/species_image/1908_clematis_crispa/medium/50234734136_6bd0839f85_b.jpg	["Full sun","part shade"]	Frequent
1922	Fremont's leather flower	Clematis fremontii	\N	https://perenual.com/storage/species_image/1922_clematis_fremontii/medium/48306102187_7de45e1ba4_b.jpg	["Full sun","part shade"]	Average
1923	Mongolian gold clematis	Clematis fruticosa 'Mongolian Gold'	\N	https://perenual.com/storage/species_image/1923_clematis_fruticosa_mongolian_gold/medium/frbeech_wood_autumn_autumn-image-kyci3chf.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.jpg	["Full sun","part shade"]	Average
1938	downy clematis	Clematis macropetala	\N	https://perenual.com/storage/species_image/1938_clematis_macropetala/medium/34068299575_48d4eec1a6_b.jpg	["Full sun","part shade"]	Average
1952	Scott's clematis	Clematis scottii	\N	https://perenual.com/storage/species_image/1952_clematis_scottii/medium/2453567646_e8689fbbb5_b.jpg	["Full sun","part shade"]	Average
1958	sweet autumn virginsbower	Clematis terniflora	\N	https://perenual.com/storage/species_image/1958_clematis_terniflora/medium/52143972179_fe0c42c700_b.jpg	["Full sun","part shade"]	Average
1963	pale leather flower	Clematis versicolor	\N	https://perenual.com/storage/species_image/1963_clematis_versicolor/medium/5670956156_948b443fc2_b.jpg	["full sun","part shade"]	Average
1965	woodbine	Clematis virginiana	\N	https://perenual.com/storage/species_image/1965_clematis_virginiana/medium/28603207183_ffcd2521a1_b.jpg	["Full sun","part shade"]	Frequent
1968	spider flower	Cleome 'Inncleosr' SENORITA ROSALITA	\N	https://perenual.com/storage/species_image/1968_cleome_inncleosr_senorita_rosalita/medium/33736727935_f296596883_b.jpg	["Full sun","part shade"]	Minimum
1969	rose glory bower	Clerodendrum bungei	\N	https://perenual.com/storage/species_image/1969_clerodendrum_bungei/medium/22802737237_81ca01045e_b.jpg	["Full sun","part shade"]	Average
1970	glory bower	Clerodendrum splendens	\N	https://perenual.com/storage/species_image/1970_clerodendrum_splendens/medium/8316564197_398d2a7654_b.jpg	["full sun","part sun/part shade"]	Average
1972	glory-bower	Clerodendrum wallichii	\N	https://perenual.com/storage/species_image/1972_clerodendrum_wallichii/medium/9229856796_b0007ba1b8_b.jpg	["part sun/part shade","full sun"]	Average
1983	summersweet	Clethra alnifolia 'Sixteen Candles'	\N	https://perenual.com/storage/species_image/1983_clethra_alnifolia_sixteen_candles/medium/36488327072_3d824459e1_b.jpg	["Full sun","part shade"]	Frequent
1988	clethra	Clethra pringlei	\N	https://perenual.com/storage/species_image/1988_clethra_pringlei/medium/52569271743_c02336422c_b.jpg	["Full sun","part shade"]	Average
1989	woolly white alder	Clethra tomentosa 'Cottondale'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Frequent
1990	sakaki	Cleyera japonica	\N	https://perenual.com/storage/species_image/1990_cleyera_japonica/medium/2560px-Cleyera_japonica_kz01.jpg	["Full sun","part shade"]	Average
1991	limestone calamint	Clinopodium arkansanum	\N	https://perenual.com/storage/species_image/1991_clinopodium_arkansanum/medium/Clinopodium_arkansanum_5475026.jpg	["Full sun"]	Average
1992	butterfly pea	Clitoria ternatea	\N	https://perenual.com/storage/species_image/1992_clitoria_ternatea/medium/40124513630_db23a59476_b.jpg	["full sun","part sun/part shade"]	Average
1993	Natal lily	Clivia miniata	\N	https://perenual.com/storage/species_image/1993_clivia_miniata/medium/41360263231_d0922e6f41_b.jpg	["part shade","full sun"]	Average
1994	clusia	Clusia orthoneura	\N	https://perenual.com/storage/species_image/1994_clusia_orthoneura/medium/6225957058_7848701d0f_b.jpg	["part shade","full sun"]	Average
1995	cup and saucer vine	Cobaea scandens	\N	https://perenual.com/storage/species_image/1995_cobaea_scandens/medium/24415731154_7a5cb26790_b.jpg	["full sun"]	Average
1996	Carolina moonseed	Cocculus carolinus	\N	https://perenual.com/storage/species_image/1996_cocculus_carolinus/medium/49832177482_d8d20c3629_b.jpg	["Full sun","part shade"]	Average
1997	cocculus	Cocculus orbiculatus	\N	https://perenual.com/storage/species_image/1997_cocculus_orbiculatus/medium/52478853953_2b674b459b_b.jpg	["Full sun","part shade"]	Average
1998	coconut palm	Cocos nucifera	\N	https://perenual.com/storage/species_image/1998_cocos_nucifera/medium/52456605277_f34ffbc86b_b.jpg	["Full sun"]	Average
2001	bonnet bellflower	Codonopsis lanceolata	\N	https://perenual.com/storage/species_image/2001_codonopsis_lanceolata/medium/35252249863_3191a1e87d_b.jpg	["Full sun","part shade"]	Average
2002	Arabian coffee	Coffea arabica	"Arabian coffee"	https://perenual.com/storage/species_image/2002_coffea_arabica/medium/32931873737_c7b521ff1c_b.jpg	["part shade","part sun/part shade"]	Average
2013	blue-eyed Mary	Collinsia verna	\N	https://perenual.com/storage/species_image/2013_collinsia_verna/medium/33268751803_8860e83cea_b.jpg	["Part shade"]	Average
2014	horse balm	Collinsonia canadensis	\N	https://perenual.com/storage/species_image/2014_collinsonia_canadensis/medium/87ddbb3454006871eef8f588bce797250327a65c.jpg	["Part shade"]	Average
2029	Himalayan mint shrub	Colquhounia coccinea	\N	https://perenual.com/storage/species_image/2029_colquhounia_coccinea/medium/50330270631_258aff4d19_b.jpg	["Full sun","part shade"]	Average
2030	columnea	Columnea microcalyx	\N	https://perenual.com/storage/species_image/2030_columnea_microcalyx/medium/49358950793_0a0edfbc8e_b.jpg	["full sun","part sun/part shade"]	Average
2031	bladder senna	Colutea media	\N	https://perenual.com/storage/species_image/2031_colutea_media/medium/36467221140_634294b467_b.jpg	["Full sun"]	Minimum
2032	sweet fern	Comptonia peregrina	\N	https://perenual.com/storage/species_image/2032_comptonia_peregrina/medium/4850164175_d12f730c64_b.jpg	["Full sun","part shade"]	Minimum
2033	mistflower	Conoclinium coelestinum 'Cori'	\N	https://perenual.com/storage/species_image/2033_conoclinium_coelestinum_cori/medium/52545510174_bdeecc60a4_b.jpg	["Full sun","part shade"]	Frequent
2034	thoroughwort	Conoclinium greggii	\N	https://perenual.com/storage/species_image/2034_conoclinium_greggii/medium/9240150998_f75af727fb_b.jpg	["Full sun","part shade"]	Average
2035	Cumberland rosemary	Conradina verticillata	\N	https://perenual.com/storage/species_image/2035_conradina_verticillata/medium/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTExL2ZsNTE2Njc3OTUyMDYtaW1hZ2UuanBn.jpg	["Full sun"]	Minimum
2036	giant larkspur	Consolida ajacis	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
2041	silverbush	Convolvulus cneorum	\N	https://perenual.com/storage/species_image/2041_convolvulus_cneorum/medium/2560px-Convolvulus_cneorum_kz01.jpg	["Full sun"]	Minimum
2042	bindweed	Convolvulus tricolor	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
2043	Black Cloud Mirror Bush	Coprosma 'Black Cloud'	\N	https://perenual.com/storage/species_image/2043_coprosma_black_cloud/medium/5922642222_19030318da_b.jpg	["part shade","filtered shade"]	Average
2046	mountain palm	Cordyline indivisa	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["part shade","full sun"]	Average
2429	garden pinks	Dianthus 'Rainbow Loveliness'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
2060	fringeleaf tickseed	Coreopsis integrifolia	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Frequent
2067	greater tickseed	Coreopsis major	\N	https://perenual.com/storage/species_image/2067_coreopsis_major/medium/18376948593_cd1cfa0bd8_b.jpg	["Full sun"]	Minimum
2090	plains coreopsis	Coreopsis tinctoria	\N	https://perenual.com/storage/species_image/2090_coreopsis_tinctoria/medium/50260256921_e948e4f100_b.jpg	["Full sun"]	Minimum
2098	cilantro	Coriandrum sativum	"coriander"	https://perenual.com/storage/species_image/2098_coriandrum_sativum/medium/23933935237_ac36e334a3_b.jpg	["Full sun","part shade"]	Average
2111	swamp dogwood	Cornus amomum subsp. obliqua	\N	https://perenual.com/storage/species_image/2111_cornus_amomum_subsp_obliqua/medium/2046px-Cornus_amomum_subsp._obliqua_kz01_28cropped29.jpg	["Full sun","part shade"]	Frequent
2112	bunchberry	Cornus canadensis	\N	https://perenual.com/storage/species_image/2112_cornus_canadensis/medium/35579917475_9cd03d8ef0_b.jpg	["Part shade"]	Average
2113	evergreen dogwood	Cornus capitata	\N	https://perenual.com/storage/species_image/2113_cornus_capitata/medium/284039686_3197afecaf_b.jpg	["Full sun","part shade"]	Average
2128	hybrid dogwood	Cornus 'Kn30 8' VENUS	\N	https://perenual.com/storage/species_image/2128_cornus_kn30_8_venus/medium/yellow-springs-united-states-flowers-trees.jpg	["Full sun","part shade"]	Average
2137	cornelian cherry dogwood	Cornus mas 'Golden Glory'	\N	https://perenual.com/storage/species_image/2137_cornus_mas_golden_glory/medium/51054726811_82a6bf1410_b.jpg	["Full sun","part shade"]	Average
2138	mountain dogwood	Cornus nuttallii	\N	https://perenual.com/storage/species_image/2138_cornus_nuttallii/medium/2594196669_d402652086_b.jpg	["Deep shade"," Filtered shade"," Full sun"," Part sun/part shade"]	Frequent
2139	Japanese cornelian cherry	Cornus officinalis	\N	https://perenual.com/storage/species_image/2139_cornus_officinalis/medium/Cornus_officinalis.jpg	["Full sun","part shade"]	Average
2140	gray dogwood	Cornus racemosa	\N	https://perenual.com/storage/species_image/2140_cornus_racemosa/medium/50178426687_f0db2e4e9c_b.jpg	["Full sun","part shade"]	Frequent
2150	yellowtwig dogwood	Cornus sericea 'Budd's Yellow'	\N	https://perenual.com/storage/species_image/2150_cornus_sericea_budds_yellow/medium/32157867860_f6cf1c464f_b.jpg	["Full sun","part shade"]	Frequent
2151	yellow twig dogwood	Cornus sericea 'Flaviramea'	\N	https://perenual.com/storage/species_image/2151_cornus_sericea_flaviramea/medium/2560px-Genista_cinerascens_5.jpg	["Full sun"," Part sun/part shade"]	Frequent
2162	fumewort	Corydalis solida	\N	https://perenual.com/storage/species_image/2162_corydalis_solida/medium/51872388467_859494cc79_b.jpg	["Part shade","full shade"]	Frequent
2166	American hazelnut	Corylus americana	\N	https://perenual.com/storage/species_image/2166_corylus_americana/medium/14623759319_ea9914bbd5_b.jpg	["Full sun Partial sun"]	Minimum
2167	Harry Lauder's walking stick	Corylus avellana 'Contorta'	"Harry Lauder's walking stick"	https://perenual.com/storage/species_image/2167_corylus_avellana_contorta/medium/16697391528_e2d0cd5488_b.jpg	["Full sun"," Part sun/part shade"]	Average
2168	hazelnut	Corylus avellana 'Red Dragon'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
2169	large filbert	Corylus maxima	\N	https://perenual.com/storage/species_image/2169_corylus_maxima/medium/Corylus_maxima_27Purpurea27_a1.jpg	["Full sun","part shade"]	Average
2170	lemon eucalyptus	Corymbia citriodora	\N	https://perenual.com/storage/species_image/2170_corymbia_citriodora/medium/45816284891_952529a7a3_b.jpg	["Full sun"]	Average
2171	chocolate cosmos	Cosmos atrosanguineus	\N	https://perenual.com/storage/species_image/2171_cosmos_atrosanguineus/medium/44624968742_654051fe38_b.jpg	["Full sun"]	Minimum
2172	cosmos	Cosmos sulphureus	\N	https://perenual.com/storage/species_image/2172_cosmos_sulphureus/medium/9739651258_fe10d9d44f_b.jpg	["full sun","part shade"]	Average
2187	small-leaved cotoneaster	Cotoneaster microphyllus	"thyme-leaf cotoneaster"	https://perenual.com/storage/species_image/2187_cotoneaster_microphyllus/medium/1536px-Cotoneaster_microphyllus_C396BG_2012-07-08_280129.jpg	["Full sun","part shade"]	Average
2188	creeping cotoneaster	Cotoneaster nanshan	\N	https://perenual.com/storage/species_image/2188_cotoneaster_nanshan/medium/07d4a4861c42edd00b41cb15d5918d9d1a2310a9.jpg	["Full sun","part shade"]	Average
2190	cannonball tree	Couroupita guianensis	\N	https://perenual.com/storage/species_image/2190_couroupita_guianensis/medium/52334687103_098b65f052_b.jpg	["full sun"]	Frequent
2191	colewort	Crambe cordifolia	\N	https://perenual.com/storage/species_image/2191_crambe_cordifolia/medium/Crambe_cordifolia02.jpg	["Full sun"]	Average
2192	sea kale	Crambe maritima	\N	https://perenual.com/storage/species_image/2192_crambe_maritima/medium/27250076285_5e18531595_b.jpg	["full sun","part shade"]	Frequent
2193	jade plant	Crassula ovata	\N	https://perenual.com/storage/species_image/2193_crassula_ovata/medium/33253726791_980c738a1e_b.jpg	["full sun"]	Minimum
2198	black hawthorn	Crataegus douglasii	\N	https://perenual.com/storage/species_image/2198_crataegus_douglasii/medium/46329950334_f837a4a159_b.jpg	["Full sun Partial sun"]	Frequent
2201	Washington hawthorn	Crataegus phaenopyrum	\N	https://perenual.com/storage/species_image/2201_crataegus_phaenopyrum/medium/52398108594_c24c30508e_b.jpg	["Full sun"]	Average
2206	common calabash tree	Crescentia cujete	\N	https://perenual.com/storage/species_image/2206_crescentia_cujete/medium/9257958533_feb90509b5_b.jpg	["Full sun","part shade"]	Average
2207	Florida swamp lily	Crinum americanum	\N	https://perenual.com/storage/species_image/2207_crinum_americanum/medium/49748942177_ebd1d0d78d_b.jpg	["Full sun","part shade"]	Frequent
2208	poison bulb	Crinum asiaticum	\N	https://perenual.com/storage/species_image/2208_crinum_asiaticum/medium/49089789722_250452e5d4_b.jpg	["Full sun","part shade"]	Average
2230	crocus	Crocus luteus 'Golden Yellow'	\N	https://perenual.com/storage/species_image/2230_crocus_luteus_golden_yellow/medium/g8690c2c488681d10f416979f8e5eebd8ec9d7b2d58797129816c9090fea3f9a9b92ca413dd5c5935f4bf9b6e2340600f8ac63d73b30856325a5eec501c08be16_1280.jpg	["Full sun","part shade"]	Average
2231	saffron crocus	Crocus sativus	\N	https://perenual.com/storage/species_image/2231_crocus_sativus/medium/51885162396_fb3902be73_b.jpg	["Full sun","part shade"]	Average
2232	Sieber's crocus	Crocus sieberi subsp. atticus 'Firefly'	\N	https://perenual.com/storage/species_image/2232_crocus_sieberi_subsp_atticus_firefly/medium/Crocus_sieberi_Tricolor06.jpg	["Full sun","part shade"]	Average
2235	Dutch crocus	Crocus vernus	\N	https://perenual.com/storage/species_image/2235_crocus_vernus/medium/40400641675_1e41ce8b06_b.jpg	["Full sun","part shade"]	Average
2242	firecracker flower	Crossandra infundibuliformis	\N	https://perenual.com/storage/species_image/2242_crossandra_infundibuliformis/medium/2560px-Crossandra_infundibuliformis_3.jpg	["part shade","part sun/part shade"]	Average
2243	alabama croton	Croton alabamensis	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
2244	cryptanthus	Cryptanthus (group)	\N	https://perenual.com/storage/species_image/2244_cryptanthus_group/medium/black-mystic-starfish-plant-crytanthus-earth-star.jpg	["part shade","part sun/part shade"]	Average
2248	Canadian honewort	Cryptotaenia canadensis	\N	https://perenual.com/storage/species_image/2248_cryptotaenia_canadensis/medium/17660706206_9a748e6b87_b.jpg	["Partial sun Shade"]	Average
2249	Japanese parsley	Cryptotaenia japonica f. atropurpurea	\N	https://perenual.com/storage/species_image/2249_cryptotaenia_japonica_f_atropurpurea/medium/4757169063_dbed0b68ba_b.jpg	["Part shade"]	Average
2250	melon	Cucumis melo var. flexuosus	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
2251	cucumber	Cucumis sativus	"European cucumber"	https://perenual.com/storage/species_image/2251_cucumis_sativus/medium/Cucumis_sativus20090812_496.jpg	["full sun"]	Average
2255	summer squash	Cucurbita pepo	"zucchini"	https://perenual.com/storage/species_image/2255_cucurbita_pepo/medium/30834361358_ce4119cf89_b.jpg	["full sun"]	Average
2256	common dittany	Cunila origanoides	\N	https://perenual.com/storage/species_image/2256_cunila_origanoides/medium/9578954870_0aaf03af74_b.jpg	["Full sun","part shade"]	Minimum
2257	China-fir	Cunninghamia lanceolata	\N	https://perenual.com/storage/species_image/2257_cunninghamia_lanceolata/medium/24628441741_28283850d5_b.jpg	["Full sun"," Part sun/part shade"]	Average
2259	false heather	Cuphea hyssopifolia	\N	https://perenual.com/storage/species_image/2259_cuphea_hyssopifolia/medium/24865152956_a5ee722767_b.jpg	["Full sun"]	Average
2260	cigar flower	Cuphea ignea	\N	https://perenual.com/storage/species_image/2260_cuphea_ignea/medium/24218479610_62af710d52_b.jpg	["full sun"]	Average
2262	bat-faced cuphea	Cuphea purpurea	\N	https://perenual.com/storage/species_image/2262_cuphea_purpurea/medium/24865061776_cd11e29ac7_b.jpg	["full sun","part shade"]	Average
2264	blue waxweed	Cuphea viscosissima	\N	https://perenual.com/storage/species_image/2264_cuphea_viscosissima/medium/30040508631_acd1669836_b.jpg	["Full sun"]	Average
2265	Kashmir cypress	Cupressus cashmeriana	\N	https://perenual.com/storage/species_image/2265_cupressus_cashmeriana/medium/8206347511_86896d966b_b.jpg	["part sun/part shade"]	Average
2269	Siam tulip	Curcuma alismatifolia 'Pink'	\N	https://perenual.com/storage/species_image/2269_curcuma_alismatifolia_pink/medium/14756807415_eb959c5b10_b.jpg	["full sun","part shade"]	Average
2270	common turmeric	Curcuma longa	\N	https://perenual.com/storage/species_image/2270_curcuma_longa/medium/24615930674_282cb658e6_b.jpg	["Full sun","part shade"]	Frequent
2271	queen lily	Curcuma petiolata	\N	https://perenual.com/storage/species_image/2271_curcuma_petiolata/medium/9782467372_b9280c679c_b.jpg	["Part shade"]	Average
2272	Sago palm	Cycas revoluta	\N	https://perenual.com/storage/species_image/2272_cycas_revoluta/medium/26712271676_6dc6c5fabc_b.jpg	["full sun","part shade"]	Average
2275	cyclamen	Cyclamen persicum	\N	https://perenual.com/storage/species_image/2275_cyclamen_persicum/medium/40786856302_8145c0090b_b.jpg	["part shade","part sun/part shade"]	Average
2276	quince	Cydonia oblonga	\N	https://perenual.com/storage/species_image/2276_cydonia_oblonga/medium/51709597151_e111f71788_b.jpg	["Full sun"]	Average
2277	cymbalaria	Cymbalaria aequitriloba	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["part shade","part sun/part shade"]	Average
2278	Kenilworth ivy	Cymbalaria muralis	\N	https://perenual.com/storage/species_image/2278_cymbalaria_muralis/medium/25700823733_8aa332a835_b.jpg	["Part shade","full shade"]	Average
2280	lemon grass	Cymbopogon citratus	\N	https://perenual.com/storage/species_image/2280_cymbopogon_citratus/medium/24450188904_50e0c258d6_b.jpg	["Full sun"]	Average
2283	artichoke	Cynara cardunculus (Scolymus Group)	\N	https://perenual.com/storage/species_image/2283_cynara_cardunculus_scolymus_group/medium/artichoke-vegetables-bloom-tasty.jpg	["Full sun"]	Average
2286	Chinese forget-me-not	Cynoglossum amabile	\N	https://perenual.com/storage/species_image/2286_cynoglossum_amabile/medium/50112554833_6b7b61df79_b.jpg	["Full sun"]	Average
2291	papyrus	Cyperus papyrus KING TUT	\N	https://perenual.com/storage/species_image/2291_cyperus_papyrus_king_tut/medium/4204309031_492f309096_b.jpg	["Full sun","part shade"]	Average
2292	tree tomato	Cyphomandra betacea	\N	https://perenual.com/storage/species_image/2292_cyphomandra_betacea/medium/49288036626_f4bfa5c8c5_b.jpg	["Full sun","part shade"]	Average
2293	lady slipper	Cypripedium kentuckiense	\N	https://perenual.com/storage/species_image/2293_cypripedium_kentuckiense/medium/Cypripedium_kentuckiense_Orchi_2012-05-23_004.jpg	["Part shade","full shade"]	Frequent
2296	sealing wax palm	Cyrtostachys renda	\N	https://perenual.com/storage/species_image/2296_cyrtostachys_renda/medium/24962565842_7a81dc845e_b.jpg	["full sun","part shade"]	Average
2297	lowland fragile fern	Cystopteris protrusa	\N	https://perenual.com/storage/species_image/2297_cystopteris_protrusa/medium/6a73ea8f47dfd169c177d4ee9943029776968eee.jpg	["Part shade","full shade"]	Average
2298	pineapple broom	Cytisus kewensis	\N	https://perenual.com/storage/species_image/2298_cytisus_kewensis/medium/2560px-Pieris_japonica_var._yakushimanum_Cavatine_3zz.jpg	["Full sun"]	Average
2299	Scotch broom	Cytisus scoparius	\N	https://perenual.com/storage/species_image/2299_cytisus_scoparius/medium/52062443919_e1c61a661f_b.jpg	["Full sun"]	Minimum
2302	decorative dahlia	Dahlia 'Prinzessin Irene von Preussen'	\N	https://perenual.com/storage/species_image/2302_dahlia_prinzessin_irene_von_preussen/medium/52337423391_b7c7c0cfb3_b.jpg	["Full sun"]	Average
2304	white prairie clover	Dalea candida	\N	https://perenual.com/storage/species_image/2304_dalea_candida/medium/51689292753_0cd7859338_b.jpg	["Full sun"]	Average
2305	Gattinger's prairie clover	Dalea gattingeri	\N	https://perenual.com/storage/species_image/2305_dalea_gattingeri/medium/35252250283_b99d429143_b.jpg	["Full sun"]	Minimum
2311	mezereon	Daphne mezereum	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
2318	pricklyburr	Datura inoxia	"thorn apple"	https://perenual.com/storage/species_image/2318_datura_inoxia/medium/30273977418_24f9b17830_b.jpg	["Full sun"]	Average
2319	horn-of-plenty	Datura metel	\N	https://perenual.com/storage/species_image/2319_datura_metel/medium/48861017193_05f55aca0f_b.jpg	["Full sun"]	Average
2320	carrot	Daucus carota var. sativus	\N	https://perenual.com/storage/species_image/2320_daucus_carota_var_sativus/medium/baby-carrot-healthy-vegetable-roots-nutrition-fresh-food.jpg	["full sun"]	Average
2321	hare's foot fern	Davallia canariensis	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Part shade","full shade"]	Average
2324	dead man's fingers	Decaisnea fargesii	\N	https://perenual.com/storage/species_image/2324_decaisnea_fargesii/medium/10507754225_cfa8223148_b.jpg	["Full sun","part shade"]	Average
2325	swamp loosestrife	Decodon verticillatus	\N	https://perenual.com/storage/species_image/2325_decodon_verticillatus/medium/15053814039_93ff05d8bf_b.jpg	["Full sun","part shade"]	Frequent
2328	royal poinciana	Delonix regia	\N	https://perenual.com/storage/species_image/2328_delonix_regia/medium/47962771058_bf601c4a56_b.jpg	["full sun"]	Frequent
2335	hardy yellow iceplant	Delosperma nubigenum	\N	https://perenual.com/storage/species_image/2335_delosperma_nubigenum/medium/33577021271_55611e5457_b.jpg	["Full sun"]	Minimum
2339	cardinal larkspur	Delphinium cardinale	\N	https://perenual.com/storage/species_image/2339_delphinium_cardinale/medium/8715000276_5a4750b24a_b.jpg	["full sun","part shade"]	Average
2340	Carolina larkspur	Delphinium carolinianum	\N	https://perenual.com/storage/species_image/2340_delphinium_carolinianum/medium/9289516039_3a398b68c1_b.jpg	["Full sun","part shade"]	Average
2345	tall larkspur	Delphinium exaltatum	\N	https://perenual.com/storage/species_image/2345_delphinium_exaltatum/medium/Delphinium_exaltatum_inflorescence.jpg	["Full sun"]	Average
2352	Trelease's larkspur	Delphinium treleasei	\N	https://perenual.com/storage/species_image/2352_delphinium_treleasei/medium/Lobelia_anatina_83597674.jpg	["Full sun"]	Average
2353	dwarf larkspur	Delphinium tricorne	\N	https://perenual.com/storage/species_image/2353_delphinium_tricorne/medium/52038748552_9e416dde79_b.jpg	["Full sun"]	Average
2355	hay-scented fern	Dennstaedtia punctilobula	\N	https://perenual.com/storage/species_image/2355_dennstaedtia_punctilobula/medium/13704881685_e9bbdf1ddb_b.jpg	["Part shade","full shade"]	Average
2356	Japanese lady fern	Deparia petersenii	\N	https://perenual.com/storage/species_image/2356_deparia_petersenii/medium/35099432381_3615bf0350_b.jpg	["Part shade","full shade"]	Frequent
2357	tapering glade fern	Deparia pycnosora	\N	https://perenual.com/storage/species_image/2357_deparia_pycnosora/medium/17133511489_3cae631ebd_b.jpg	["Part shade","full shade"]	Average
2362	crinkled hair grass	Deschampsia flexuosa	\N	https://perenual.com/storage/species_image/2362_deschampsia_flexuosa/medium/1280px-Avena_fatua_28388628413029.jpg	["Part shade"]	Average
2363	prairie bundleflower	Desmanthus illinoensis	\N	https://perenual.com/storage/species_image/2363_desmanthus_illinoensis/medium/Desmanthus_illinoensis_inflorescence_26_fruits_01.jpg	["Full sun"]	Minimum
2364	elegant tick clover	Desmodium elegans	\N	https://perenual.com/storage/species_image/2364_desmodium_elegans/medium/21364672846_34877ed4aa_b.jpg	["Full sun"]	Average
2365	tick-trefoil	Desmodium illinoense	\N	https://perenual.com/storage/species_image/2365_desmodium_illinoense/medium/26107812372_66a5edb190_b.jpg	["Full sun"]	Minimum
2379	flax lily	Dianella tasmanica 'Variegata'	\N	https://perenual.com/storage/species_image/2379_dianella_tasmanica_variegata/medium/40261611192_73c5eea080_b.jpg	["Part shade"]	Minimum
2437	fringed pink	Dianthus superbus 'Crimsonia'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
2446	diarrhena	Diarrhena mandshurica	\N	https://perenual.com/storage/species_image/2446_diarrhena_mandshurica/medium/Diarrhena_mandshurica_41602261.jpg	["Part shade","full shade"]	Average
2448	twinspur	Diascia barberae	\N	https://perenual.com/storage/species_image/2448_diascia_barberae/medium/35866312631_7c0fe0a0d0_b.jpg	["Full sun"]	Average
2449	diascia	Diascia integerrima 'Coral Canyon'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
2453	Dutchman's breeches	Dicentra cucullaria	\N	https://perenual.com/storage/species_image/2453_dicentra_cucullaria/medium/52349751877_7b68ca04db_b.jpg	["Part shade","full shade"]	Average
2460	dichondra	Dichondra argentea 'Silver Falls'	\N	https://perenual.com/storage/species_image/2460_dichondra_argentea_silver_falls/medium/40202837181_86ba066273_b.jpg	["Full sun"]	Minimum
2461	blue ginger	Dichorisandra thyrsiflora	\N	https://perenual.com/storage/species_image/2461_dichorisandra_thyrsiflora/medium/9933145326_ded6d93c05_b.jpg	["Part shade"]	Average
2462	Chinese quinine	Dichroa febrifuga	\N	https://perenual.com/storage/species_image/2462_dichroa_febrifuga/medium/33126877948_782574be25_b.jpg	["part shade"]	Frequent
2463	soft tree fern	Dicksonia antarctica	\N	https://perenual.com/storage/species_image/2463_dicksonia_antarctica/medium/52447320602_78d1b2017d_b.jpg	["Part shade","full shade"]	Frequent
2464	dicliptera	Dicliptera squarrosa	\N	https://perenual.com/storage/species_image/2464_dicliptera_squarrosa/medium/2560px-Dicliptera_squarrosa_in_Jardin_des_plantes_de_Montpellier_01.jpg	["Full sun"]	Average
2468	dumb cane	Dieffenbachia seguine	\N	https://perenual.com/storage/species_image/2468_dieffenbachia_seguine/medium/24449059743_2aee995991_b.jpg	["filtered shade","part sun/part shade"]	Average
2469	Angel’s fishing rod	Dierama igneum	\N	https://perenual.com/storage/species_image/2469_dierama_igneum/medium/5890470263_12803435df_b.jpg	["full sun","part sun/part shade"]	Average
2470	angel's fishing rods	Dierama pendulum	\N	https://perenual.com/storage/species_image/2470_dierama_pendulum/medium/196231514_c687561fd9_b.jpg	["Full sun"]	Average
2471	dwarf bush-honeysuckle	Diervilla 'Copper'	\N	https://perenual.com/storage/species_image/2471_diervilla_copper/medium/31355848323_7fae796605_b.jpg	["Full sun","part shade"]	Average
2479	butterfly flag	Dietes bicolor	\N	https://perenual.com/storage/species_image/2479_dietes_bicolor/medium/15561391418_d269ebe263_b.jpg	["Full sun","part shade"]	Average
2480	dietes	Dietes iridioides	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
2484	large yellow foxglove	Digitalis grandiflora	\N	https://perenual.com/storage/species_image/2484_digitalis_grandiflora/medium/28506090073_64d0f10057_b.jpg	["Part shade"]	Average
2485	strawberry foxglove	Digitalis mertonensis	\N	https://perenual.com/storage/species_image/2485_digitalis_mertonensis/medium/5787359510_3f7e0bd0eb_b.jpg	["Full sun","part shade"]	Average
2486	willow-leaved foxglove	Digitalis obscura	\N	https://perenual.com/storage/species_image/2486_digitalis_obscura/medium/40079111613_2953016b89_b.jpg	["Part shade"]	Average
2495	mullein foxglove	Digitalis thapsi 'Spanish Peaks'	\N	https://perenual.com/storage/species_image/2495_digitalis_thapsi_spanish_peaks/medium/21530257614_6528992ba9_b.jpg	["Full sun","part shade"]	Average
2496	longan	Dimocarpus longan	\N	https://perenual.com/storage/species_image/2496_dimocarpus_longan/medium/24326697163_342ed81d99_b.jpg	["full sun","part shade"]	Average
2497	weather prophet	Dimorphotheca pluvialis	\N	https://perenual.com/storage/species_image/2497_dimorphotheca_pluvialis/medium/3056745969_e9bf801d70_b.jpg	["Full sun"]	Minimum
2503	water yam	Dioscorea alata	\N	https://perenual.com/storage/species_image/2503_dioscorea_alata/medium/24842091566_28c46d97bc_b.jpg	["Full sun","part shade"]	Average
2504	ornamental yam	Dioscorea discolor	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Average
2505	white yam	Dioscorea (vegetable group)	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["full sun","part shade"]	Average
2506	Japanese persimmon	Diospyros kaki 'Dagaishi'	\N	https://perenual.com/storage/species_image/2506_diospyros_kaki_dagaishi/medium/pexels-photo-5755632.jpg	["Full sun"]	Average
2507	kaki	Diospyros kaki 'Fuyu'	\N	https://perenual.com/storage/species_image/2507_diospyros_kaki_fuyu/medium/30717563617_e02a36cc4f_b.jpg	["Full sun"]	Average
2508	persimmon	Diospyros virginiana 'Meader'	\N	https://perenual.com/storage/species_image/2508_diospyros_virginiana_meader/medium/perssimon-edible-fruit-diospyros.jpg	["Full sun","part shade"]	Minimum
2509	rosy dipelta	Dipelta floribunda	\N	https://perenual.com/storage/species_image/2509_dipelta_floribunda/medium/49925890302_52aed32b0f_b.jpg	["Full sun","part shade"]	Average
2510	glade fern	Diplazium pycnocarpon	\N	https://perenual.com/storage/species_image/2510_diplazium_pycnocarpon/medium/2507px-Blechnum_novae-zelandiae_in_Wellington_Botanical_Garden_02.jpg	["Part shade","full shade"]	Average
2511	common teasel	Dipsacus fullonum	\N	https://perenual.com/storage/species_image/2511_dipsacus_fullonum/medium/50201810763_4b9a474143_b.jpg	["Full sun","part shade"]	Average
2513	disanthus	Disanthus cercidifolius	\N	https://perenual.com/storage/species_image/2513_disanthus_cercidifolius/medium/40037387943_389c5dd4ba_b.jpg	["Full sun"," Part sun/part shade"," Sheltered"]	Average
2514	Solomon's seal	Disporopsis arisanensis	\N	https://perenual.com/storage/species_image/2514_disporopsis_arisanensis/medium/51251900216_d46b696992_b.jpg	["part sun/part shade","filtered shade"]	Average
2515	evergreen Solomon's seal	Disporopsis pernyi	\N	https://perenual.com/storage/species_image/2515_disporopsis_pernyi/medium/2560px-Disporopsis_pernyi_kz1.jpg	["Part shade","full shade"]	Average
2521	shooting star	Dodecatheon meadia	\N	https://perenual.com/storage/species_image/2521_dodecatheon_meadia/medium/28261486828_194138fdfe_b.jpg	["Part shade"]	Average
2525	livingstone daisy	Dorotheanthus bellidiformis 'Mesbicla' MEZOO TRAILING RED	\N	https://perenual.com/storage/species_image/2525_dorotheanthus_bellidiformis_mesbicla_mezoo_trailing_red/medium/4067589256_8951787bde_b.jpg	["Full sun"]	Minimum
2528	fragrant dracaena	Dracaena fragrans	"cornstalk dracaena"	https://perenual.com/storage/species_image/2528_dracaena_fragrans/medium/52063786587_babb0e50c7_b.jpg	["part shade","part sun/part shade"]	Average
2531	dragontree	Dracaena marginata	"red margined dracaena"	https://perenual.com/storage/species_image/2531_dracaena_marginata/medium/24448909183_1a82d61ed5_b.jpg	["part shade","full sun","part sun/part shade"]	Average
2532	song of India	Dracaena reflexa 'Variegata'	\N	https://perenual.com/storage/species_image/2532_dracaena_reflexa_variegata/medium/8289680757_97717243ba_b.jpg	["part shade","full sun","part sun/part shade"]	Minimum
2533	dracaena	Dracaena sanderiana	\N	https://perenual.com/storage/species_image/2533_dracaena_sanderiana/medium/25080496475_3313fe4406_b.jpg	["part sun/part shade"]	Average
2534	northern dragonhead	Dracocephalum ruyschiana	\N	https://perenual.com/storage/species_image/2534_dracocephalum_ruyschiana/medium/27812537503_276357ec7c_b.jpg	["Full sun","part shade"]	Average
2535	clasping coneflower	Dracopis amplexicaulis	\N	https://perenual.com/storage/species_image/2535_dracopis_amplexicaulis/medium/4785728276_e9b91bf8c2_b.jpg	["Full sun"]	Average
2536	dragon arum	Dracunculus vulgaris	\N	https://perenual.com/storage/species_image/2536_dracunculus_vulgaris/medium/41176731390_c4fbdefc90_b.jpg	["Full sun","part shade"]	Average
2537	drosanthemum	Drosanthemum micans	\N	https://perenual.com/storage/species_image/2537_drosanthemum_micans/medium/4585693737_ae8127c2ff_b.jpg	["Full sun"]	Minimum
2538	daily dew	Drosera binata var. dichotoma	\N	https://perenual.com/storage/species_image/2538_drosera_binata_var_dichotoma/medium/Drosera_binata.jpg	["Full sun"]	Frequent
2539	cape sundew	Drosera capensis	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Frequent
2540	thread-leaf sundew	Drosera filiformis var. filiformis	\N	https://perenual.com/storage/species_image/2540_drosera_filiformis_var_filiformis/medium/d4169ed7e244a89b5956fba635acb64c7e8ebee9.jpg	["Full sun"]	Frequent
2541	woodfern	Dryopteris australis	\N	https://perenual.com/storage/species_image/2541_dryopteris_australis/medium/2560px-Dryopteris_C397_australis_kz1.jpg	["Part shade","full shade"]	Average
2543	log fern	Dryopteris celsa	\N	https://perenual.com/storage/species_image/2543_dryopteris_celsa/medium/2560px-Dryopteris_celsa_NBG_LR.jpg	["Part shade","full shade"]	Average
2544	champion's wood fern	Dryopteris championii	\N	https://perenual.com/storage/species_image/2544_dryopteris_championii/medium/Dryopteris_championii_1zz.jpg	["Part shade","full shade"]	Average
2545	Clinton's wood fern	Dryopteris clintoniana	\N	https://perenual.com/storage/species_image/2545_dryopteris_clintoniana/medium/2560px-Intermediate_Wood_Fern_283092714019529.jpg	["Part shade","full shade"]	Frequent
2553	Japanese shield fern	Dryopteris erythrosora	"autumn fern"	https://perenual.com/storage/species_image/2553_dryopteris_erythrosora/medium/30165946581_983c2c2041_b.jpg	["Deep shade"," Filtered shade"," Part sun/part shade"]	Average
2559	goldie's shield fern	Dryopteris goldiana	\N	https://perenual.com/storage/species_image/2559_dryopteris_goldiana/medium/41966736030_70946b7892_b.jpg	["Part shade","full shade"]	Average
2560	intermediate wood fern	Dryopteris intermedia	\N	https://perenual.com/storage/species_image/2560_dryopteris_intermedia/medium/35713998180_ae3ed7a34b_b.jpg	["Part shade","full shade"]	Average
2562	Mexican male fern	Dryopteris pseudofilix-mas	\N	https://perenual.com/storage/species_image/2562_dryopteris_pseudofilix-mas/medium/4156601581_9d3357dce1_b.jpg	["Part shade","full shade"]	Average
2564	Tokyo wood fern	Dryopteris tokyoensis	\N	https://perenual.com/storage/species_image/2564_dryopteris_tokyoensis/medium/Dryopteris_tokyoensis_kz2.jpg	["Part shade","full shade"]	Average
2565	golden dewdrops	Duranta erecta	\N	https://perenual.com/storage/species_image/2565_duranta_erecta/medium/24869683761_8771322190_b.jpg	["full sun","part sun/part shade"]	Average
2569	squirting cucumber	Ecballium elaterium	\N	https://perenual.com/storage/species_image/2569_ecballium_elaterium/medium/52172050815_784c85ac70_b.jpg	["Full sun"]	Average
2570	glory flower	Eccremocarpus scaber	\N	https://perenual.com/storage/species_image/2570_eccremocarpus_scaber/medium/8396405263_e2a2a12a90_b.jpg	["Full sun"]	Average
2574	narrow-leaf coneflower	Echinacea angustifolia	\N	https://perenual.com/storage/species_image/2574_echinacea_angustifolia/medium/3685858124_69f0c6394c_b.jpg	["Full sun"]	Minimum
2607	yellow coneflower	Echinacea paradoxa	\N	https://perenual.com/storage/species_image/2607_echinacea_paradoxa/medium/5867884094_882fb27a31_b.jpg	["Full sun"]	Minimum
2674	wavyleaf purple coneflower	Echinacea simulata	\N	https://perenual.com/storage/species_image/2674_echinacea_simulata/medium/31157903350_c32ab6d702_b.jpg	["Full sun","part shade"]	Average
2675	eastern coneflower	Echinacea 'Snow Cone'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Minimum
2697	blue globe thistle	Echinops bannaticus 'Blue Glow'	\N	https://perenual.com/storage/species_image/2697_echinops_bannaticus_blue_glow/medium/pexels-photo-5108622.jpg	["Full sun"]	Average
2705	pride of Madeira	Echium candicans	\N	https://perenual.com/storage/species_image/2705_echium_candicans/medium/46870345224_2bf1eeb9d6_b.jpg	["Full sun"]	Minimum
2707	viper's bugloss	Echium vulgare	"viper's bugloss"	https://perenual.com/storage/species_image/2707_echium_vulgare/medium/51865819989_9f2091e3ce_b.jpg	["Full sun"]	Minimum
2708	tower of jewels	Echium wildpretii	\N	https://perenual.com/storage/species_image/2708_echium_wildpretii/medium/42395477304_7580cbab99_b.jpg	["Full sun"]	Minimum
2711	common water hyacinth	Eichhornia crassipes	"water orchid"	https://perenual.com/storage/species_image/2711_eichhornia_crassipes/medium/Eichhornia_crassipes_002.jpg	["full sun"]	Minimum
2714	goumi	Elaeagnus multiflora	\N	https://perenual.com/storage/species_image/2714_elaeagnus_multiflora/medium/8084535880_7cbfc7b4d9_b.jpg	["Full sun","part shade"]	Average
2715	thorny olive	Elaeagnus pungens	"silverthorn"	https://perenual.com/storage/species_image/2715_elaeagnus_pungens/medium/5665620540_e32a6d8929_b.jpg	["Full sun","part shade"]	Average
2716	autumn olive	Elaeagnus umbellata	\N	https://perenual.com/storage/species_image/2716_elaeagnus_umbellata/medium/9050746801_8330ddb267_b.jpg	["Full sun","part shade"]	Average
2717	Chinese water chestnut	Eleocharis dulcis	\N	https://perenual.com/storage/species_image/2717_eleocharis_dulcis/medium/Eleocharis_palustris_Prague_2013_1.jpg	["full sun","part shade"]	Average
2718	creeping spike rush	Eleocharis palustris	\N	https://perenual.com/storage/species_image/2718_eleocharis_palustris/medium/52289575332_59ab727c08_b.jpg	["Full sun","part shade"]	Frequent
2719	elephant's foot	Elephantopus carolinianus	\N	https://perenual.com/storage/species_image/2719_elephantopus_carolinianus/medium/9286939262_9e870c574e_b.jpg	["Part shade"]	Minimum
2720	cardamom	Elettaria cardamomum	\N	https://perenual.com/storage/species_image/2720_elettaria_cardamomum/medium/5598454748_cdec530d45_b.jpg	["Part shade"]	Frequent
2721	aralia	Eleutherococcus sieboldianus 'Variegatus'	\N	https://perenual.com/storage/species_image/2721_eleutherococcus_sieboldianus_variegatus/medium/51595814153_0d567ba1c7_b.jpg	["Part shade","full shade"]	Minimum
2722	ellisiophyllum	Ellisiophyllum pinnatum	\N	https://perenual.com/storage/species_image/2722_ellisiophyllum_pinnatum/medium/7231605092_016f1d3c36_b.jpg	["Part shade","full shade"]	Average
2723	Canadian pondweed	Elodea canadensis	\N	https://perenual.com/storage/species_image/2723_elodea_canadensis/medium/50292731596_dd267c4a55_b.jpg	["Full sun"]	Frequent
2724	mint-shrub	Elsholtzia stauntonii	\N	https://perenual.com/storage/species_image/2724_elsholtzia_stauntonii/medium/6265069504_811ffdfdc6_b.jpg	["Full sun"]	Minimum
2725	Canada wild rye	Elymus canadensis	\N	https://perenual.com/storage/species_image/2725_elymus_canadensis/medium/48374199446_003f7c26b0_b.jpg	["Full sun Partial sun"]	Minimum
2726	bottlebrush grass	Elymus hystrix	\N	https://perenual.com/storage/species_image/2726_elymus_hystrix/medium/52115104041_c042e155dc_b.jpg	["Full sun","part shade"]	Minimum
2727	wheat grass	Elymus magellanicus 'Blue Tango'	\N	https://perenual.com/storage/species_image/2727_elymus_magellanicus_blue_tango/medium/1371px-Elymus_magellanicus_in_Botanical_garden2C_Minsk.jpg	["Full sun"]	Average
2728	Virginia wild rye	Elymus virginicus	\N	https://perenual.com/storage/species_image/2728_elymus_virginicus/medium/36390262425_031a003333_b.jpg	["Full sun","part shade"]	Average
2729	tall wheatgrass	Elytrigia elongata 'Jose Select'	\N	https://perenual.com/storage/species_image/2729_elytrigia_elongata_jose_select/medium/52267720656_208d9c5cfb_b.jpg	["Full sun"]	Minimum
2730	prickly cycad	Encephalartos altensteinii	\N	https://perenual.com/storage/species_image/2730_encephalartos_altensteinii/medium/32943227366_7a5f6c8764_b.jpg	["Full sun","part shade"]	Average
2731	eastern Cape blue cycad	Encephalartos horridus	\N	https://perenual.com/storage/species_image/2731_encephalartos_horridus/medium/24414094554_41ff99f331_b.jpg	["Full sun"]	Minimum
2732	false rue anemone	Enemion biternatum	\N	https://perenual.com/storage/species_image/2732_enemion_biternatum/medium/52350986618_b1e726123d_b.jpg	["Part shade"]	Average
2735	redvein enkianthus	Enkianthus campanulatus var. sikokianus	\N	https://perenual.com/storage/species_image/2735_enkianthus_campanulatus_var_sikokianus/medium/2560px-Enkianthus_sikokianus_1.jpg	["Full sun"," Part sun/part shade"]	Average
2736	white enkianthus	Enkianthus perulatus	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
2737	Abyssinian banana	Ensete ventricosum	\N	https://perenual.com/storage/species_image/2737_ensete_ventricosum/medium/24805853642_c4ab751d3c_b.jpg	["full sun"]	Frequent
2738	red banana	Ensete ventricosum 'Maurelii'	\N	https://perenual.com/storage/species_image/2738_ensete_ventricosum_maurelii/medium/30521107165_6c5cc7a5c3_b.jpg	["Full sun"]	Average
2739	snow poppy	Eomecon chionantha	\N	https://perenual.com/storage/species_image/2739_eomecon_chionantha/medium/32623058390_e2ff9327dd_b.jpg	["Full sun","part shade"]	Average
2740	hummingbird's trumpet	Epilobium californica 'Bowman'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Minimum
2757	barrenwort	Epimedium perralchicum 'Frohnleiten'	\N	https://perenual.com/storage/species_image/2757_epimedium_perralchicum_frohnleiten/medium/16751397843_5899f89e7a_b.jpg	["Part shade","full shade"]	Minimum
2772	marsh helleborine	Epipactis palustris	\N	https://perenual.com/storage/species_image/2772_epipactis_palustris/medium/52213305286_fe97935eda_b.jpg	["Full sun","part shade"]	Frequent
2773	golden pothos	Epipremnum aureum	"golden pothos"	https://perenual.com/storage/species_image/2773_epipremnum_aureum/medium/2560px-Epipremnum_aureum_31082012.jpg	["part sun/part shade"]	Average
2774	pothos	Epipremnum aureum 'Neon'	\N	https://perenual.com/storage/species_image/2774_epipremnum_aureum_neon/medium/3665937247_7801145167_b.jpg	["part shade","part sun/part shade"]	Average
2775	flame violet	Episcia cupreata	\N	https://perenual.com/storage/species_image/2775_episcia_cupreata/medium/29200832873_e31420514d_b.jpg	["part shade","part sun/part shade"]	Average
2776	scouringrush horsetail	Equisetum hyemale	"horsetail"	https://perenual.com/storage/species_image/2776_equisetum_hyemale/medium/52147634626_d995ac3584_b.jpg	["Full sun","part shade"]	Frequent
2778	sand lovegrass	Eragrostis trichodes	\N	https://perenual.com/storage/species_image/2778_eragrostis_trichodes/medium/2560px-Starr-180129-0912-Muhlenbergia_capillaris-in_landscaping-Kaanapali_Beach_Walk-Maui_283940938280529.jpg	["Full sun"]	Minimum
2780	blue sage	Eranthemum pulchellum	\N	https://perenual.com/storage/species_image/2780_eranthemum_pulchellum/medium/52061634205_5e412329b8_b.jpg	["Full sun","part shade"]	Average
2785	giant desert candle	Eremurus robustus	\N	https://perenual.com/storage/species_image/2785_eremurus_robustus/medium/Eremurus_robustus_Pustynnik_olbrzymi_2010-05-29_01.jpg	["Full sun"]	Average
2786	silver plume grass	Erianthus alopecuroides	\N	https://perenual.com/storage/species_image/2786_erianthus_alopecuroides/medium/52494667621_6aa3afc10d_b.jpg	["Full sun","part shade"]	Minimum
2787	tree heath	Erica arborea	\N	https://perenual.com/storage/species_image/2787_erica_arborea/medium/8303666485_1c90e319fd_b.jpg	["Full sun","part shade"]	Average
2788	rubber rabbitbrush	Ericameria nauseosa	\N	https://perenual.com/storage/species_image/2788_ericameria_nauseosa/medium/51598503775_b4d12c05da_b.jpg	["Full sun"]	Minimum
2789	fleabane	Erigeron 'Azurfee' AZURE FAIRY	\N	https://perenual.com/storage/species_image/2789_erigeron_azurfee_azure_fairy/medium/Alppiasteri_3.jpg	["Full sun"]	Minimum
2790	daisy fleabane	Erigeron 'Dunkelste Aller' DARKEST OF ALL	\N	https://perenual.com/storage/species_image/2790_erigeron_dunkelste_aller_darkest_of_all/medium/Erigeron_27Azure_Beauty27_03.jpg	["Full sun"]	Minimum
2791	common fleabane	Erigeron philadelphicus	\N	https://perenual.com/storage/species_image/2791_erigeron_philadelphicus/medium/49920924763_a1a07d1c05_b.jpg	["Full sun"]	Minimum
2792	Robin's plantain	Erigeron pulchellus	\N	https://perenual.com/storage/species_image/2792_erigeron_pulchellus/medium/52720969067_b5b8a20421_b.jpg	["Full sun"]	Minimum
2793	sulphur flower	Eriogonum umbellatum	\N	https://perenual.com/storage/species_image/2793_eriogonum_umbellatum/medium/52449019940_4da3960dfc_b.jpg	["Full sun"]	Minimum
2794	yellow heron's bill	Erodium chrysanthum	\N	https://perenual.com/storage/species_image/2794_erodium_chrysanthum/medium/7163931471_10f9ac600a_b.jpg	["Full sun"]	Average
2795	arugula	Eruca versicaria subsp. sativa	\N	https://perenual.com/storage/species_image/2795_eruca_versicaria_subsp_sativa/medium/Eruca_April_2010-1.jpg	["Full sun"]	Frequent
2799	Mediterranean sea holly	Eryngium bourgatii	\N	https://perenual.com/storage/species_image/2799_eryngium_bourgatii/medium/52290318258_018af54fca_b.jpg	["Full sun"]	Minimum
2800	Miss Willmott's ghost	Eryngium giganteum	\N	https://perenual.com/storage/species_image/2800_eryngium_giganteum/medium/42398973980_bdf6fdf5c9_b.jpg	["Full sun"]	Average
2809	variable-leaved sea holly	Eryngium variifolium	"Moroccan sea holly"	https://perenual.com/storage/species_image/2809_eryngium_variifolium/medium/6052384190_df5a2dc2bf_b.jpg	["Full sun"]	Minimum
2813	coastal wallflower	Erysimum capitatum	\N	https://perenual.com/storage/species_image/2813_erysimum_capitatum/medium/52185282618_d036da24ac_b.jpg	["full sun"]	Average
2816	coral tree	Erythrina bidwillii	\N	https://perenual.com/storage/species_image/2816_erythrina_bidwillii/medium/9537588864_fc64c96fc4_b.jpg	["full sun"]	Frequent
2817	cry-baby tree	Erythrina crista-galli	\N	https://perenual.com/storage/species_image/2817_erythrina_crista-galli/medium/34111457360_0bd6470dfa_b.jpg	["full sun"]	Frequent
2818	white dog's-tooth violet	Erythronium albidum	\N	https://perenual.com/storage/species_image/2818_erythronium_albidum/medium/23242269733_f1c51d7cb0_b.jpg	["Part shade","full shade"]	Average
2819	yellow adder's tongue	Erythronium americanum	"adder's tongue"	https://perenual.com/storage/species_image/2819_erythronium_americanum/medium/52350582052_cabf7a8c24_b.jpg	["Part shade","full shade"]	Average
2822	California poppy	Eschscholzia californica	\N	https://perenual.com/storage/species_image/2822_eschscholzia_californica/medium/52215972223_7538e57706_b.jpg	["Full sun"]	Average
2823	torch ginger	Etlingera elatior	\N	https://perenual.com/storage/species_image/2823_etlingera_elatior/medium/27955726500_9b9213a47a_b.jpg	["full sun","part shade"]	Average
2824	Eubotrys	Eubotrys racemosa	\N	https://perenual.com/storage/species_image/2824_eubotrys_racemosa/medium/7497899218_c4981bec61_b.jpg	["Part shade"]	Frequent
2825	argyle-apple	Eucalyptus cinerea	\N	https://perenual.com/storage/species_image/2825_eucalyptus_cinerea/medium/24714386799_a1369f7350_b.jpg	["Full sun"]	Average
2826	mountain gum	Eucalyptus dalrympleana	\N	https://perenual.com/storage/species_image/2826_eucalyptus_dalrympleana/medium/14406450326_8f72aa6962_b.jpg	["Full sun"]	Minimum
2827	Indonesian gum	Eucalyptus deglupta	\N	https://perenual.com/storage/species_image/2827_eucalyptus_deglupta/medium/52433263296_9f00f1313f_b.jpg	["Full sun"]	Frequent
2828	silver-dollar gum	Eucalyptus perriniana	\N	https://perenual.com/storage/species_image/2828_eucalyptus_perriniana/medium/Eucalyptus_perriniana.jpg	["Full sun"]	Minimum
2829	Amazon lily	Eucharis amazonica	\N	https://perenual.com/storage/species_image/2829_eucharis_amazonica/medium/a7ee110c200b4b9aa0ae464784f932f9c6ee57ae.jpg	["part shade","part sun/part shade"]	Average
2834	hardy rubber tree	Eucommia ulmoides	\N	https://perenual.com/storage/species_image/2834_eucommia_ulmoides/medium/28064522623_c1864b2c73_b.jpg	["Full sun","part shade"]	Average
2836	dwarf-winged burning bush	Euonymus alatus 'Compactus'	\N	https://perenual.com/storage/species_image/2836_euonymus_alatus_compactus/medium/48996178963_572296deff_b.jpg	["Full sun","part shade"]	Average
2839	strawberry bush	Euonymus americanus	\N	https://perenual.com/storage/species_image/2839_euonymus_americanus/medium/30304872435_08d1dcc9ff_b.jpg	["Part shade"]	Average
2840	eastern wahoo	Euonymus atropurpureus	\N	https://perenual.com/storage/species_image/2840_euonymus_atropurpureus/medium/21907988729_2f5d885885_b.jpg	["Full sun","part shade"]	Average
2844	winter creeper	Euonymus fortunei	"winter creeper"	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Average
2849	wintercreeper	Euonymus fortunei 'Variegatus'	\N	https://perenual.com/storage/species_image/2849_euonymus_fortunei_variegatus/medium/634528085_98ff30955b_b.jpg	["Full sun","part shade"]	Average
2855	tall thoroughwort	Eupatorium altissimum	\N	https://perenual.com/storage/species_image/2855_eupatorium_altissimum/medium/3293238908_5c6107429d_b.jpg	["Full sun","part shade"]	Minimum
2856	dogfennel	Eupatorium capillifolium	\N	https://perenual.com/storage/species_image/2856_eupatorium_capillifolium/medium/8291910742_9dc76b9963_b.jpg	["Full sun","part shade"]	Average
2857	sneeze weed	Eupatorium capillifolium 'Elegant Feather'	\N	https://perenual.com/storage/species_image/2857_eupatorium_capillifolium_elegant_feather/medium/401px-Eupatorium_capillifolium_27Elegant_Feather27_IMG_2660.jpg	["Full sun","part shade"]	Average
2858	hemp agrimony	Eupatorium chinense	\N	https://perenual.com/storage/species_image/2858_eupatorium_chinense/medium/9240253574_eccc26667d_b.jpg	["Full sun"]	Frequent
2859	American boneset	Eupatorium perfoliatum 'Milk and Cookies'	\N	https://perenual.com/storage/species_image/2859_eupatorium_perfoliatum_milk_and_cookies/medium/plant-honey-bee-bee-insect.jpg	["Full sun Partial sun"]	Frequent
2868	Mexican shrubby spurge	Euphorbia cotinifolia	\N	https://perenual.com/storage/species_image/2868_euphorbia_cotinifolia/medium/51952243235_061102bd05_b.jpg	["Full sun"]	Average
2869	sweet spurge	Euphorbia dulcis	\N	https://perenual.com/storage/species_image/2869_euphorbia_dulcis/medium/2319px-Euphorbia_dulcis_in_Aveyron_28429.jpg	["Filtered shade"," Full sun"]	Minimum
2880	snow on the mountain	Euphorbia marginata	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Minimum
2881	mountain spurge	Euphorbia marginata 'Kilimanjaro'	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun"]	Minimum
2885	christplant	Euphorbia milii	\N	https://perenual.com/storage/species_image/2885_euphorbia_milii/medium/Euphorbia_Milii_flowers.jpg	["full sun","part sun/part shade"]	Average
2886	myrtle spurge	Euphorbia myrsinites	"donkey-tail spurge"	https://perenual.com/storage/species_image/2886_euphorbia_myrsinites/medium/51572962469_a4d7d90045_b.jpg	["Full sun"]	Minimum
2888	bog spurge	Euphorbia palustris	\N	https://perenual.com/storage/species_image/2888_euphorbia_palustris/medium/51884774742_f91b4f26eb_b.jpg	["full sun","part sun/part shade"]	Frequent
2891	poinsettia	Euphorbia pulcherrima	\N	https://perenual.com/storage/species_image/2891_euphorbia_pulcherrima/medium/24314295374_d0b960686c_b.jpg	["part shade","part sun/part shade"]	Average
2893	Indian tree spurge	Euphorbia tirucalli	\N	https://perenual.com/storage/species_image/2893_euphorbia_tirucalli/medium/50565162811_35a80a030a_b.jpg	["Full sun"]	Minimum
2894	eurya	Eurya japonica 'Moutiers'	\N	https://perenual.com/storage/species_image/2894_eurya_japonica_moutiers/medium/16017861533_8924c5d0d9_b.jpg	["Full sun","part shade"]	Average
2898	southern prairie aster	Eurybia hemispherica	\N	https://perenual.com/storage/species_image/2898_eurybia_hemispherica/medium/25171841361_5a64e7c3a8_b.jpg	["Full sun"]	Minimum
2899	large-leaved aster	Eurybia macrophylla	\N	https://perenual.com/storage/species_image/2899_eurybia_macrophylla/medium/7972801728_7c22f11990_b.jpg	["Part shade","full shade"]	Average
2901	euscaphis	Euscaphis japonica	\N	https://perenual.com/storage/species_image/2901_euscaphis_japonica/medium/15319643905_b5c94b4e4b_b.jpg	["Full sun","part shade"]	Average
2902	lisianthus	Eustoma grandiflorum	"prairie gentian"	https://perenual.com/storage/species_image/2902_eustoma_grandiflorum/medium/9198152685_64144910a8_b.jpg	["full sun","part shade"]	Average
2905	Joe-pyeweed	Eutrochium fistulosum	\N	https://perenual.com/storage/species_image/2905_eutrochium_fistulosum/medium/51378831029_4978175742_b.jpg	["Full sun","part shade"]	Frequent
2912	Brazilian dwarf morning-glory	Evolvulus glomeratus	\N	https://perenual.com/storage/species_image/2912_evolvulus_glomeratus/medium/49956928457_92fc2ea50e_b.jpg	["full sun"]	Average
2920	American beech	Fagus grandifolia	\N	https://perenual.com/storage/species_image/2920_fagus_grandifolia/medium/36261305260_db404fa3ed_b.jpg	["Deep shade"," Filtered shade"," Full sun"," Part sun/part shade"]	Average
2921	purple beech	Fagus sylvatica (Atropurpurea Group)	"Golden Fastigiate Beech"	https://perenual.com/storage/species_image/2921_fagus_sylvatica_atropurpurea_group/medium/51880126917_5a2c0d8d22_b.jpg	["Full sun"]	Average
2929	Japanese knotweed	Fallopia japonica var. compacta	\N	https://perenual.com/storage/species_image/2929_fallopia_japonica_var_compacta/medium/51873956359_35c9b034e6_b.jpg	["Full sun","part shade"]	Average
2931	farfugium	Farfugium japonicum var. giganteum	\N	https://perenual.com/storage/species_image/2931_farfugium_japonicum_var_giganteum/medium/2560px-Farfugium_japonicum_kz1.jpg	["Part shade","full shade"]	Average
2933	hardy bamboo	Fargesia rufa	\N	https://perenual.com/storage/species_image/2933_fargesia_rufa/medium/Fargesia_nitida_MUN.jpg	["full sun"]	Average
2934	glossy-leaved paper plant	Fatsia japonica	\N	https://perenual.com/storage/species_image/2934_fatsia_japonica/medium/51764246961_8daeac4a3d_b.jpg	["Deep shade"," Filtered shade"," Part sun/part shade"]	Average
2935	blue daisy	Felicia amelloides	"blue daisy"	https://perenual.com/storage/species_image/2935_felicia_amelloides/medium/Felicia_amelloides_04.jpg	["Full sun"]	Average
2936	tufted fescue	Festuca amethystina 'Klose'	\N	https://perenual.com/storage/species_image/2936_festuca_amethystina_klose/medium/48112554851_3f4132cdee_b.jpg	["Full sun"]	Average
2943	fescue	Festuca arundinacea WATER SAVER	\N	https://perenual.com/storage/species_image/2943_festuca_arundinacea_water_saver/medium/grass-green-rush-nature.jpg	["full sun","part shade"]	Average
2951	hard fescue	Festuca longifolia	"fine fescue"	https://perenual.com/storage/species_image/2951_festuca_longifolia/medium/Festuca_polesica.jpg	["full sun","part shade"]	Minimum
2952	red fescue	Festuca rubra 'Pennlawn'	\N	https://perenual.com/storage/species_image/2952_festuca_rubra_pennlawn/medium/Festuca.rubra.2.jpg	["Part shade"]	Average
2953	fig buttercup	Ficaria verna	\N	https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png	["Full sun","part shade"]	Frequent
2960	common fig	Ficus carica 'Petite Negra'	"garden fig"	https://perenual.com/storage/species_image/2960_ficus_carica_petite_negra/medium/fig-mature-fig-tree-fruit.jpg	["full sun"]	Average
2961	Indian rubberplant	Ficus elastica	"India rubber plant"	https://perenual.com/storage/species_image/2961_ficus_elastica/medium/533092219_8da73ba0d2_b.jpg	["full sun","part sun/part shade"]	Average
2962	India rubber plant	Ficus elastica 'Burgundy'	\N	https://perenual.com/storage/species_image/2962_ficus_elastica_burgundy/medium/Ficus_elastica_Burgundy_0zz.jpg	["part shade","part sun/part shade"]	Average
2963	fiddle-leaf fig	Ficus lyrata	\N	https://perenual.com/storage/species_image/2963_ficus_lyrata/medium/48139747872_36fa010c48_b.jpg	["part sun/part shade"]	Average
2964	rock fig	Ficus petiolaris	\N	https://perenual.com/storage/species_image/2964_ficus_petiolaris/medium/48273773021_081332388d_b.jpg	["full sun","part shade"]	Average
2965	climbing fig	Ficus pumila	\N	https://perenual.com/storage/species_image/2965_ficus_pumila/medium/49109063727_f18da1075f_b.jpg	["part sun/part shade"]	Frequent
2966	sacred bo tree	Ficus religiosa	\N	https://perenual.com/storage/species_image/2966_ficus_religiosa/medium/4592316774_63b8b635ca_b.jpg	["Full sun"]	Average
2970	queen of the prairie	Filipendula rubra	\N	https://perenual.com/storage/species_image/2970_filipendula_rubra/medium/51294407118_8de128012a_b.jpg	["Full sun","part shade"]	Frequent
2976	Nerve Plant	Fittonia albivenis (Argyroneura Group)	\N	https://perenual.com/storage/species_image/2976_fittonia_albivenis_argyroneura_group/medium/31305214210_9ba80cb730_b.jpg	["part shade","part sun/part shade"]	Average
2977	yi yè qiu	Flueggea suffruticosa	\N	https://perenual.com/storage/species_image/2977_flueggea_suffruticosa/medium/2560px-Flueggea_suffruticosa_3.jpg	["Full sun"]	Average
2978	sweet fennel	Foeniculum vulgare	\N	https://perenual.com/storage/species_image/2978_foeniculum_vulgare/medium/52216230274_ff3a047be4_b.jpg	["Full sun"]	Average
2981	fokienia	Fokienia hodginsii	\N	https://perenual.com/storage/species_image/2981_fokienia_hodginsii/medium/Fokienia_hodginsii_kz1.jpg	["Full sun","part shade"]	Average
2997	Korean forsythia	Forsythia ovata	\N	https://perenual.com/storage/species_image/2997_forsythia_ovata/medium/forsythia-gold-lilac-flower-blossom.jpg	["Full sun","part shade"]	Average
2998	weeping forsythia	Forsythia suspensa	\N	https://perenual.com/storage/species_image/2998_forsythia_suspensa/medium/16369115533_7a45ec728c_b.jpg	["Full sun","part shade"]	Average
\.


--
-- TOC entry 3599 (class 0 OID 16503)
-- Dependencies: 215
-- Data for Name: uploaded_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.uploaded_images (user_id, plant_id, image_url) FROM stdin;
1	101	https://example.com/image1.jpg
2	102	https://example.com/image2.jpg
3	103	https://example.com/image3.jpg
1	9725273894	["https://res.cloudinary.com/desvlpdro/image/upload/v1695399164/plants/le0a5ji3t0sfgbuo5bw4.png"]
1	4608271647	["https://res.cloudinary.com/desvlpdro/image/upload/v1695405697/plants/cqjlchfocszcxh9eowei.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695405697/plants/citceqpzwcdo5kerqaik.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695405698/plants/rrfm8aep8gcec7epxcv2.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695405698/plants/wgdu1vcz40kn15tltkwx.png"]
1	6199759474	["https://res.cloudinary.com/desvlpdro/image/upload/v1695406209/plants/httc8ejmqikkecvsbatf.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695406209/plants/c7irqohhmjdibl4ztqjv.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695406209/plants/emwu9fytii47rmwpramd.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695406209/plants/cwidqc4ahwasxpvf2a4h.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695406210/plants/jjagjphkb60j7y2vu90r.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695406210/plants/rvg5slphvjhyylrsfbzv.png"]
1	3586886415	["https://res.cloudinary.com/desvlpdro/image/upload/v1695718491/plants/f4nkks9zrnpzoi90yv6q.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695718492/plants/htofy5dlw2ytwgjrr0us.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695718491/plants/zqx5a9dhzrrnzzygmuxq.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695718491/plants/pk04b8zwbjlypd59imo9.jpg"]
1	1972413908	[]
1	5025113477	["https://res.cloudinary.com/desvlpdro/image/upload/v1695469785/plants/qz3ndqytmokqn678zzpc.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695469823/plants/vhx4nbpv6je7xvwqvopz.jpg"]
1	9551032713	["https://res.cloudinary.com/desvlpdro/image/upload/v1695471049/plants/gw2i20f52i3ktizo7ym4.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695471049/plants/nwqm6ok9boxvghwyxz35.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695471050/plants/qrvaobzhbalf7kfkzobf.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695471050/plants/qfqxla7tu1lpxscrfuv6.png"]
1	5175773061	["https://res.cloudinary.com/desvlpdro/image/upload/v1695481823/plants/j4he32gaigaxhhmzvtsw.jpg"]
1	5880270490	["https://res.cloudinary.com/desvlpdro/image/upload/v1695481933/plants/qpcifzr9mxkghnfsdwam.jpg"]
1	9914868692	["https://res.cloudinary.com/desvlpdro/image/upload/v1695491689/plants/bxhok4terxcann9am1vx.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695491704/plants/ucl19udbwrya71gfqsyv.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695491704/plants/ygwxyjg0m36cll697dl2.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695491704/plants/gxvqwrinif8b8osfe2ce.png"]
1	6750698726	["https://res.cloudinary.com/desvlpdro/image/upload/v1695492821/plants/mhcdrw9eljkiq9aeumt5.jpg"]
1	6475286780	["https://res.cloudinary.com/desvlpdro/image/upload/v1695492886/plants/bba67o7xduatcokavppe.png"]
1	8344657442	["https://res.cloudinary.com/desvlpdro/image/upload/v1695492952/plants/nvyr1150xlcskwrpkoeg.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695492951/plants/exonjov95o5xxuuxcf0t.png"]
1	5625511057	["https://res.cloudinary.com/desvlpdro/image/upload/v1695493044/plants/ckyabbz3ycchtqa6wpwx.jpg"]
1	2440142175	["https://res.cloudinary.com/desvlpdro/image/upload/v1695654426/plants/mepslcp434z6own6lzjz.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695654489/plants/ccxcpywxy8hignovno1g.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695654489/plants/oqihbxc2qhntzwe6np6l.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695654489/plants/efd8aggk1pgeesxkk7nk.png"]
1	7955898022	["https://res.cloudinary.com/desvlpdro/image/upload/v1695659016/plants/yyfivjbhm3fg7qyjkioz.png"]
1	8822863740	[]
1	5896695451	[]
1	5912523043	[]
9184079157	6016909724	["https://res.cloudinary.com/desvlpdro/image/upload/v1695747214/plants/grwazmg67qqk45svzruh.jpg"]
9184079157	7740875160	["https://res.cloudinary.com/desvlpdro/image/upload/v1695748024/plants/drmcoibapalkq6wqoltw.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695748024/plants/jh0nga49ruthocdion7k.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695748025/plants/bil6djramnsfonzeftdu.png","https://res.cloudinary.com/desvlpdro/image/upload/v1695748025/plants/fcbpmmwpl4w38sjwfpw4.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695748025/plants/hr2bjol8rlqmgztliczu.jpg"]
9184079157	7824554639	[]
1	2554328780	[]
9184079157	9269106916	["https://res.cloudinary.com/desvlpdro/image/upload/v1695747404/plants/i4c8ds58mct75azi4xn0.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695747404/plants/gkip3asfcrurbdqzdt8d.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695747405/plants/mdqnweu18olxujyq0cmq.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695747404/plants/olv8fpov2qdfpihke06g.jpg"]
9184079157	9122052195	[]
1	4531487754	[]
1	8095745823	[]
1	8075817181	[]
9184079157	3147209133	[]
9184079157	5996826189	[]
9184079157	5264342666	[]
9184079157	5573789544	[]
9184079157	6788802021	[]
9184079157	1142015252	[]
9184079157	4052440094	[]
9184079157	2694132605	[]
9184079157	5923243848	["https://res.cloudinary.com/desvlpdro/image/upload/v1695748614/plants/nuix2a311jf0rgrsblpj.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695748615/plants/rw4ocy2tzxmaiywrm6rj.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695748615/plants/m4gus5pc82dtmfn1u7ip.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695748615/plants/qtzct6ybfwhooynhxedb.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695748615/plants/k5ry965cn8yqq9urqnu2.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695748615/plants/oywxhu6dsztuts1vkrqy.jpg"]
9184079157	6428113797	["https://res.cloudinary.com/desvlpdro/image/upload/v1695775015/plants/wpz1zamm5oo7eufke5xg.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695775015/plants/afion6g5ii6hbhwgvgpj.jpg","https://res.cloudinary.com/desvlpdro/image/upload/v1695775015/plants/td0gprlsj1hirub44qxz.jpg"]
9184079157	5448011646	[]
\.


--
-- TOC entry 3601 (class 0 OID 16544)
-- Dependencies: 217
-- Data for Name: user_plants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_plants (user_id, plant_id, id, plant_name, full_name, scientific_name, plant_description, plant_size, age, watering, sunlight, icon_id, image_url) FROM stdin;
111	1111	U123P456	Rose	Rosa canina	Rosa canina L.	The dog rose is a deciduous shrub.	Medium	2	Moderate	["full sun","part shade","filtered shade"]	rose_icon	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1000000000	1111	U123P456	Rose	Rosa canina	Rosa canina L.	The dog rose is a deciduous shrub.	Medium	2	Moderate	["full sun","part shade","filtered shade"]	rose_icon	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	1961930004	3	grzegorz	White Fir	Abies concolor	White Fir (Abies concolor) is an amazing evergreen tree species found in the western United States. It has a distinct white bark that fades to a yellowish hue on the lower branches and a graceful, conical shape. The beautiful Blue-green needles of White Fir are soft and tufted at the end and release a pleasant Christmas-like aroma when crushed. This sturdy species can grow up to 300 feet tall and over 140 years old, making it one of the longest living species in the world. It is highly adaptable, drought-tolerant, and very low maintenance with minimal pruning requirements. White Fir is an excellent choice for privacy screens, windbreaks, and living Christmas trees.	medium	2023-02	Average	["full sun","part shade","filtered shade"]	/monstera.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	4856065845	3	sad	White Fir	Abies concolor	White Fir (Abies concolor) is an amazing evergreen tree species found in the western United States. It has a distinct white bark that fades to a yellowish hue on the lower branches and a graceful, conical shape. The beautiful Blue-green needles of White Fir are soft and tufted at the end and release a pleasant Christmas-like aroma when crushed. This sturdy species can grow up to 300 feet tall and over 140 years old, making it one of the longest living species in the world. It is highly adaptable, drought-tolerant, and very low maintenance with minimal pruning requirements. White Fir is an excellent choice for privacy screens, windbreaks, and living Christmas trees.	medium large	2023-06	Average	["full sun","part shade","filtered shade"]	/plant 1.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	3964876867	2	sdsdf	Pyramidalis Silver Fir	Abies alba 'Pyramidalis'	Pyramidalis Silver Fir (Abies alba 'Pyramidalis') is an amazing coniferous tree species. Its narrow, elegant pyramidal shape makes it ideal for landscapes with limited space. This species features bright silver-green foliage year-round and distinctive yellowish brown cones that hold its unique shape for years. It also displays purple-tinged shoots in the spring and a showy red bark in the winter. Its slow growth and hardiness make it an ideal addition to any landscape. The Pyramidalis Silver Fir also requires minimal maintenance and can be an excellent companion for many other plants in the garden. From small yards to large gardens, this species will create a majestic and interesting landscape.	medium	2023-06	Average	["full sun","part shade","filtered shade"]	/monstera.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	7169152175	2	sdsdf	Pyramidalis Silver Fir	Abies alba 'Pyramidalis'	Pyramidalis Silver Fir (Abies alba 'Pyramidalis') is an amazing coniferous tree species. Its narrow, elegant pyramidal shape makes it ideal for landscapes with limited space. This species features bright silver-green foliage year-round and distinctive yellowish brown cones that hold its unique shape for years. It also displays purple-tinged shoots in the spring and a showy red bark in the winter. Its slow growth and hardiness make it an ideal addition to any landscape. The Pyramidalis Silver Fir also requires minimal maintenance and can be an excellent companion for many other plants in the garden. From small yards to large gardens, this species will create a majestic and interesting landscape.	medium	2023-06	Average	["full sun","part shade","filtered shade"]	/monstera.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	1972413908	3	Grzegorz	White Fir	Abies concolor	White Fir (Abies concolor) is an amazing evergreen tree species found in the western United States. It has a distinct white bark that fades to a yellowish hue on the lower branches and a graceful, conical shape. The beautiful Blue-green needles of White Fir are soft and tufted at the end and release a pleasant Christmas-like aroma when crushed. This sturdy species can grow up to 300 feet tall and over 140 years old, making it one of the longest living species in the world. It is highly adaptable, drought-tolerant, and very low maintenance with minimal pruning requirements. White Fir is an excellent choice for privacy screens, windbreaks, and living Christmas trees.	medium large	2023-06	Average	["full sun","part shade","filtered shade"]	/plant 9.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	4072365770	3	Grzegorz	White Fir	Abies concolor	White Fir (Abies concolor) is an amazing evergreen tree species found in the western United States. It has a distinct white bark that fades to a yellowish hue on the lower branches and a graceful, conical shape. The beautiful Blue-green needles of White Fir are soft and tufted at the end and release a pleasant Christmas-like aroma when crushed. This sturdy species can grow up to 300 feet tall and over 140 years old, making it one of the longest living species in the world. It is highly adaptable, drought-tolerant, and very low maintenance with minimal pruning requirements. White Fir is an excellent choice for privacy screens, windbreaks, and living Christmas trees.	medium large	2023-06	Average	["full sun","part shade","filtered shade"]	/plant 9.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	5368154336	199	asdf	Golden Catalpa	Catalpa bignonioides 'Aurea'	Golden Catalpa (Catalpa bignonioides 'Aurea') is a great plant species for those who want an eye-catching addition to their garden. Famous for its vibrant yellow foliage, this tree is sure to make a statement. In addition to its striking foliage, the Golden Catalpa produces white blooms which turn into Seedpods that gradually turn from green to brown and can be used to decorate outdoor spaces. Its low-maintenance nature and drought tolerance make it an ideal choice for many landscapes. The Golden Catalpa's incredible appearance and easy-care make it an amazing choice for gardeners looking for a stunningly beautiful and hardy plant.	small	2023-06	Average	["full sun","part shade","filtered shade"]	/plant 1.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	1555382447	3		White Fir	Abies concolor	White Fir (Abies concolor) is an amazing evergreen tree species found in the western United States. It has a distinct white bark that fades to a yellowish hue on the lower branches and a graceful, conical shape. The beautiful Blue-green needles of White Fir are soft and tufted at the end and release a pleasant Christmas-like aroma when crushed. This sturdy species can grow up to 300 feet tall and over 140 years old, making it one of the longest living species in the world. It is highly adaptable, drought-tolerant, and very low maintenance with minimal pruning requirements. White Fir is an excellent choice for privacy screens, windbreaks, and living Christmas trees.	small		Average	["full sun","part shade","filtered shade"]	/monstera.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	4608271647	5	fdv	Fraser Fir	Abies fraseri	The Fraser Fir (Abies fraseri) is an amazing tree species with many great qualities. It is a dense evergreen conifer native to the Appalachian mountains. Its pyramidal shape and glossy dark green needles, that curve upward, make it a beautiful and popular Christmas tree. Its needles are short, soft, flat and pleasant to the touch. It has been found to be highly resistant to pests, diseases, and environmental stress. Additionally, it has superior winter hardiness and a strong wood that produces very little sap. This incredible species is perfect for a variety of evergreen applications and is guaranteed to bring a unique and beautiful look to any landscape.	medium	2023-07	Frequent	["full sun","part shade","filtered shade"]	/plant 1.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	9551032713	5	Plantasia2	Fraser Fir	Abies fraseri	The Fraser Fir (Abies fraseri) is an amazing tree species with many great qualities. It is a dense evergreen conifer native to the Appalachian mountains. Its pyramidal shape and glossy dark green needles, that curve upward, make it a beautiful and popular Christmas tree. Its needles are short, soft, flat and pleasant to the touch. It has been found to be highly resistant to pests, diseases, and environmental stress. Additionally, it has superior winter hardiness and a strong wood that produces very little sap. This incredible species is perfect for a variety of evergreen applications and is guaranteed to bring a unique and beautiful look to any landscape.	medium	2023-01	Frequent	["full sun","part shade","filtered shade"]	/monstera.png	https://perenual.com/storage/species_image/5_abies_fraseri/medium/36843539702_e80fc436e0_b.jpg
1	5175773061	3	Lets see	White Fir	Abies concolor	White Fir (Abies concolor) is an amazing evergreen tree species found in the western United States. It has a distinct white bark that fades to a yellowish hue on the lower branches and a graceful, conical shape. The beautiful Blue-green needles of White Fir are soft and tufted at the end and release a pleasant Christmas-like aroma when crushed. This sturdy species can grow up to 300 feet tall and over 140 years old, making it one of the longest living species in the world. It is highly adaptable, drought-tolerant, and very low maintenance with minimal pruning requirements. White Fir is an excellent choice for privacy screens, windbreaks, and living Christmas trees.	small	2023-07	Average	["Full sun","part shade"]	/cactus.png	https://perenual.com/storage/species_image/3_abies_concolor/medium/52292935430_f4f3b22614_b.jpg
1	5880270490	4	GrzegorzWielki	Candicans White Fir	Abies concolor 'Candicans'	Candicans White Fir is one of the most amazing species of fir tree. Its vibrant, powdery-white needles make it a real show-stopper in the winter and spring. The light color is also resistant to bronzing or discoloration, so the brilliant hue is maintained for many years. It also has a unique branch structure with a strong central leader and shorter lateral branches creating an eye-catching silhouette. This species is hardy and tolerant to a variety of soil types, making it a great choice for difficult areas. Its fast growth rate creates an impressive display quickly, making it an excellent choice to add curb appeal to your landscape.	tiny	2022-01	Average	["full sun"]	/monstera.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	5025113477	5	My cutie	Fraser Fir	Abies fraseri	The Fraser Fir (Abies fraseri) is an amazing tree species with many great qualities. It is a dense evergreen conifer native to the Appalachian mountains. Its pyramidal shape and glossy dark green needles, that curve upward, make it a beautiful and popular Christmas tree. Its needles are short, soft, flat and pleasant to the touch. It has been found to be highly resistant to pests, diseases, and environmental stress. Additionally, it has superior winter hardiness and a strong wood that produces very little sap. This incredible species is perfect for a variety of evergreen applications and is guaranteed to bring a unique and beautiful look to any landscape.	small	2023-01	Frequent	["full sun","part shade","filtered shade"]	/plant 9.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	5072213418	10	dsdvv	Johin Japanese Maple	Acer 'Johin'	The Johin Japanese Maple (Acer 'Johin') is a one-of-a-kind variety with incredible foliage that's sure to turn heads. It stands out from the crowd with its bright yellow-green colored leaves, framed by a deep green margin. Mature trees usually have a beautiful, gnarled trunk, making it an ideal choice for bonsai enthusiasts. In the spring, its delicate white flowers add an extra layer of beauty, before the dramatic autumn hues of red, yellow and orange set in. It's an easy-to-care-for, slow-growing tree that becomes even more stunning with age. Perfect for home gardens, patio or courtyard spaces, it's no wonder the Johin Japanese Maple is so popular.	small	2023-06	Average	["full sun","part shade","filtered shade"]	/cactus.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	6460661957	5	Grzegorz	Fraser Fir	Abies fraseri	The Fraser Fir (Abies fraseri) is an amazing tree species with many great qualities. It is a dense evergreen conifer native to the Appalachian mountains. Its pyramidal shape and glossy dark green needles, that curve upward, make it a beautiful and popular Christmas tree. Its needles are short, soft, flat and pleasant to the touch. It has been found to be highly resistant to pests, diseases, and environmental stress. Additionally, it has superior winter hardiness and a strong wood that produces very little sap. This incredible species is perfect for a variety of evergreen applications and is guaranteed to bring a unique and beautiful look to any landscape.	tiny	2023-01	Frequent	["full sun","part shade","filtered shade"]	/plant 9.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	9404323884	1	sfd	European Silver Fir	Abies alba	European Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needles. It is pruned for use as an ornamental evergreen hedging and screening plant, and is also popular for use as a Christmas tree. Young trees grow quickly and have strong, flexible branches which makes them perfect for use as windbreaks. The European Silver Fir is an impressive species, making it ideal for gardens and public spaces.	medium large	2023-07	Frequent	["full sun","part shade","filtered shade"]	/cactus.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
1	6199759474	5	berta	Fraser Fir	Abies fraseri	The Fraser Fir (Abies fraseri) is an amazing tree species with many great qualities. It is a dense evergreen conifer native to the Appalachian mountains. Its pyramidal shape and glossy dark green needles, that curve upward, make it a beautiful and popular Christmas tree. Its needles are short, soft, flat and pleasant to the touch. It has been found to be highly resistant to pests, diseases, and environmental stress. Additionally, it has superior winter hardiness and a strong wood that produces very little sap. This incredible species is perfect for a variety of evergreen applications and is guaranteed to bring a unique and beautiful look to any landscape.	medium	2023-01	Frequent	["full sun","part shade","filtered shade"]	/monstera.png	https://perenual.com/storage/species_image/4_abies_concolor_candicans/medium/49283844888_332c9e46f2_b.jpg
9184079157	6016909724	722	Marta	Karoo aloe	Aloe longistyla	The Karoo aloe (Aloe longistyla) is a beautiful and interesting plant species native to South Africa. It has tall, spear-shaped leaves lined with white spines and a striking yellow or orange flowering stalk that appears in the summer. Unlike many other aloes, the Karoo aloe is a winter-growing plant that wakes up in the rain and goes dormant during the dry months of winter. This is a low-maintenance plant that prefers sandy soils and plenty of sun, making it ideal for outdoor gardens in warmer regions. Versatile, hardy, and beautiful, the Karoo aloe is an amazing addition to any garden.	medium	2021-01	Average	["full sun","part shade"]	/plant 8.png	https://perenual.com/storage/species_image/722_aloe_longistyla/medium/pexels-photo-6156450.jpg
9184079157	9269106916	1	Berthold	European Silver Fir	Abies alba	European Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needles. It is pruned for use as an ornamental evergreen hedging and screening plant, and is also popular for use as a Christmas tree. Young trees grow quickly and have strong, flexible branches which makes them perfect for use as windbreaks. The European Silver Fir is an impressive species, making it ideal for gardens and public spaces.	XXL	2015-01	Frequent	["full sun"]	/spruce.png	https://perenual.com/storage/species_image/1_abies_alba/medium/1536px-Abies_alba_SkalitC3A9.jpg
9184079157	9122052195	127	Flopsy	Tama Hime Japanese Maple	Acer palmatum 'Tama Hime'	Tama Hime Japanese Maple (Acer palmatum 'Tama Hime') is a stunning and eye-catching addition to any garden or landscape. Known for its vibrant foliage, this maple is prized for its intense deep warm orange and yellow colors in spring and summer turning to shades of brilliant red and orange in the fall. Compact in size yet wide in its beauty, this maple is easily manageable with a slow growth rate and low maintenance. Boasting an upright pyramidal shape and cascading branches, this slow-growing tree adds drama, style and color to any location and looks great year round. Tama Hime Japanese Maple is an excellent choice for those wanting to make a statement in their garden.	medium	2021-03	Frequent	["full sun","part shade"]	/flower (12).png	https://perenual.com/storage/species_image/127_acer_palmatum_tama_hime/medium/3467420590_a48a005ba1_b.jpg
9184079157	3147209133	223	Weronika	Weeping Nootka Cypress	Chamaecyparis nootkatensis 'Pendula'	The Weeping Nootka Cypress (Chamaecyparis nootkatensis 'Pendula') is an amazing plant species, perfect for adding a cascading focal point to any landscape. Its unusually full and cascading branches are bright green during the growing season and become evergreen during winter. This upright shrub or small tree has an irregular branching habit, giving it a truly unique and beautiful look. Plus, with its tolerance to a wide range of climates, soils, lighting, and moisture levels, it's an incredibly hardy species that needs minimal upkeep. Grow a Weeping Nootka Cypress for a stunning statement in any garden!	XXL	2018-02	Average	["full sun","part sun/part shade"]	/apple.png	https://perenual.com/storage/species_image/223_chamaecyparis_nootkatensis_pendula/medium/52620084612_4da3250360_b.jpg
9184079157	5996826189	217	Barbara	Forest Pansy Redbud	Cercis canadensis 'Forest Pansy'	The Forest Pansy Redbud is a beautiful species of tree with an abundance of amazing qualities that make it stand out. It boasts vibrant, purple-pink foliage in the spring which stands out against the green surroundings. In the summer, the leaves become glossy green, while the fall foliage is golden yellow. It has a stunning, rounded canopy that provides plenty of shade and excellent branches for climbing. The stunning display of pink and white flowers in the early spring makes it an attractive addition to any landscape. The Forest Pansy Redbud is also very low maintenance and tolerant to many conditions, making it perfect for any garden.	small	2023-03	Average	["full sun","part sun/part shade"]	/plant 10.png	https://perenual.com/storage/species_image/217_cercis_canadensis_forest_pansy/medium/Cercis_canadensis_Forest_Pansy_12zz.jpg
9184079157	5264342666	342	Cornelia	Little Gem Magnolia	Magnolia grandiflora 'Little Gem'	Little Gem Magnolia is one of the most popular garden plants. This slow-growing, evergreen tree has an upright pyramidal shape with dense, glossy foliage. Its easily maintained reaching up to 10-15 feet in height, and is perfect for tight spaces. The deep green, magnolia-like leaves have a rusty underside which adds to its charm. In fall and winter, pale yellow flowers grace its branches. Its tolerance for heat and humidity make it an ideal choice for any garden, and as an added bonus it's virtually pest and disease-free. Its unmistakable beauty makes it a great addition to any landscape.	medium large	2009-02	Average	["Full sun","part shade"]	/plant.png	https://perenual.com/storage/species_image/342_magnolia_grandiflora_little_gem/medium/2560px-thumbnail.jpg
9184079157	5573789544	325	Beata	Arnold Tuliptree	Liriodendron tulipifera 'Arnold'	The Arnold Tuliptree (Liriodendron tulipifera 'Arnold') is an exceptional plant species with a striking presence. This tree is loved for its lush, vivid green leaves that form a conical shape and for its fragrant, yellow and orange-tinged flowers that look like tulips. It's considered one of the most magnificent deciduous trees available with its quick growth rate and impressive height, sometimes maturing to be over 100 feet tall. This tree is also known for its common use as the state tree of Tennessee, as well as its ability to tolerate difficult soil conditions. An Arnold Tuliptree is an amazing choice for any yard, garden, or landscape.	medium	2018-03	Average	["Full sun"]	/flower (29).png	https://perenual.com/storage/species_image/325_liriodendron_tulipifera_arnold/medium/37501584912_34ff5d863e_b.jpg
9184079157	7740875160	988	Giorgio	breadfruit	Artocarpus altilis	Breadfruit (Artocarpus altilis) is an amazing edible fruit tree species. It is native to Pacific islands and Southeast Asia, but is now grown throughout the tropics. Breadfruit has many pieces of unique anatomy which makes it unique. It has a large, round, dimpled, light green fruit which can be eaten either cooked or raw. Its single large seed contains an edible oil that's been used in cooking for centuries. Additionally, breadfruit has an extensive network of root systems which help to prevent soil erosion and stabilise beach sands. This makes it an incredibly useful tree for coastal ecosystems. Furthermore, in many parts of the world, it has become an important food source due to its high levels of nutrition. This is why breadfruit is an amazing species and should be celebrated.	medium large	2022-06	Average	["full sun","part shade"]	/sakura.png	https://perenual.com/storage/species_image/988_artocarpus_altilis/medium/27300926886_1fe42029eb_b.jpg
9184079157	6788802021	186	Codeworks	River Birch	Betula nigra	River Birch (Betula nigra) is an amazing tree species and one of nature's wonders. It can endure most harsh weather conditions, surviving in temperate and subtropical areas. Not only is the River Birch a hardy species, but it is also a beautiful sight. With widespread branches of an ebony hue, it towers with elegance and grace. It produces two to three-inch catkins in the spring which bloom with tiny yellow flowers. As fall turns to winter, the leaves transform from their typical green to a brilliant bronze. River Birch is the perfect species for any garden or landscape, providing shade and long-term enjoyment.	medium large	2023-08	Average	["full sun","part shade"]	/trio.png	https://perenual.com/storage/species_image/186_betula_nigra/medium/38242143172_2670c4b8e2_b.jpg
9184079157	1142015252	177	Plantasia	Ballerina Serviceberry	Amelanchier x grandiflora 'Ballerina'	The Ballerina Serviceberry (Amelanchier x grandiflora 'Ballerina') is an amazing plant with plenty of reasons to admire it! It produces white, star-like flowers in the spring and purplish-black berries in the summer. The berries are edible and have a unique flavor. The foliage of this deciduous shrub features beautiful green leaves, which turn to a vibrant yellow and orange color in the fall for a stunning display. Ballerina Serviceberry is low-maintenance, easy to grow, and can tolerate a wide range of soils and climates. Its upright, well-rounded form grows up to 10 feet tall and wide and makes a great addition to your landscape. This is an ideal choice for adding four-season interest and beauty to your garden!	tiny	2022-07	Frequent	["full sun","part shade"]	/poplar.png	https://perenual.com/storage/species_image/177_amelanchier_x_grandiflora_ballerina/medium/Amelanchier_ovalis_fruits.jpg
9184079157	4052440094	253	Kiki	China Girl Chinese Dogwood	Cornus kousa 'China Girl'	China Girl Chinese Dogwood is an amazing plant species for its spectacular display. Its gorgeous green foliage and clusters of white flowers in late spring combine with its bright pink fruits in the autumn to create an eye-catching display. Not only is the plant aesthetically pleasing, but it is also highly tolerant of a variety of environmental conditions. This species is also highly resistant to disease and insects, making it an ideal choice for gardeners who need a hardy and reliable plant. The height and spread can also be easily controlled with careful pruning, making it easier to fit it into any desired space. All in all, China Girl Chinese Dogwood is a great choice for those looking for a beautiful display with low-maintenance care.	medium	2023-02	Frequent	["part shade","part sun/part shade"]	/plant.png	https://perenual.com/storage/species_image/253_cornus_kousa_china_girl/medium/3024px-Cornus_kousa_27China_Girl27_fruit.jpg
9184079157	2694132605	245	Klussi	Cherokee Brave Flowering Dogwood	Cornus florida 'Cherokee Brave'	The Cherokee Brave Flowering Dogwood (Cornus florida 'Cherokee Brave') is an amazing species of dogwood tree. It boasts a deep green, highly lustrous foliage, spectacularly showy flowers, and a unique red fall color. This tree makes an attractive landscape feature, especially in spring when it blooms bright white flowers with yellow centers. These blooms are succeeded by bright deep red fruits that persist throughout the summer. The Cherokee Brave Flowering Dogwood is noted for its exceptional vigor and disease resistance, making it a great choice for an ornamental tree. This species also thrives in average soil with regular watering, making it an excellent carefree choice for gardeners.	medium	2022-07	Average	["full sun","part sun/part shade"]	/plant 1.png	https://perenual.com/storage/species_image/245_cornus_florida_cherokee_brave/medium/2560px-Cornus_florida_var._rubra_Cherokee_Brave_4zz.jpg
9184079157	5923243848	1969	Aplha	rose glory bower	Clerodendrum bungei	Rose glory bower (Clerodendrum bungei) is an amazing evergreen, flowering shrub with glossy, bright green foliage that will brighten up any garden. The large, funnel-shaped flowers are a stunning deep pink with paler margins, while the stamens are a dramatic bright yellow. In late summer and early fall, long, rope-like, drooping panicles of deep pink flowers appear, creating a beautiful, eye-catching display. Rose glory bower thrives in full sun and prefers moist, loamy soil. This beauty will remain vigorous and flowering with simple maintenance and regular pruning.	medium	2021-07	Average	["Full sun","part shade"]	/plant 4.png	https://perenual.com/storage/species_image/1969_clerodendrum_bungei/medium/22802737237_81ca01045e_b.jpg
9184079157	6428113797	1607	Lassie	rose peashrub	Caragana rosea	The Rose Peashrub is a fast-growing, deciduous shrub that is stunningly beautiful! With its bright, variegated foliage and vibrant pink-rose blossoms, it's a wonderful accent for any garden. Its arching stems and branches make it perfect for espaliering and topiary and it will thrive almost anywhere, from full sun to shady conditions. It is also an incredibly hardy shrub, tolerating temperatures down to -50 F and is not picky about soil. Rose Peashrub is a great choice for those who want a low-maintenance shrub with a long life, and its fragrant Spring blossoms make it a wonderful addition to any landscape.	XXL	2021-02	Minimum	["Full sun"]	/flower (28).png	https://perenual.com/storage/species_image/1607_caragana_rosea/medium/9216111658_14dbc2a85c_b.jpg
9184079157	5448011646	7	dfkv	Alpine Fir	Abies lasiocarpa	The Alpine Fir, scientifically known as Abies lasiocarpa, is an amazing conifer native to western North America. Its stiff, dense needles bring vivid color year-round and its pyramidal growth habit adds texture and interest to any landscape. With its tolerance to a variety of soils and conditions, this evergreen is both versatile and visually striking. Its branches reach out and cast a unique evergreen form of showy clouds. Through years of growth, it develops a sturdy trunk and crooked branches that are quite striking. Alpine Fir also provides winter cover and shelter for wildlife. Its dense needles are an ideal refuge from cold and precipitation. Its strong branches and trunk also provide perching points for nesting birds. Alpine Fir is truly one of nature’s most diverse and visually stunning plants.	small	2023-06	Average	["full sun","part shade"]	/monstera.png	https://perenual.com/storage/species_image/7_abies_lasiocarpa/medium/51002756843_74fae3c2fa_b.jpg
\.


--
-- TOC entry 3598 (class 0 OID 16453)
-- Dependencies: 214
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, email, password, firstname, lastname, username) FROM stdin;
1	user1@example.com	password1	John	Doe	\N
2	user2@example.com	password2	Jane	Smith	\N
3	user3@example.com	password3	Alice	Johnson	\N
5	stupid@gmail.com	$2b$10$F1MT5xisamcj/yaJZbVNQ.xeUw4LVtT9f8x1aI91BAygu.sb04JXO	John	Sparrow	Testuser
6	stupidss@gmail.com	$2b$10$epTcQg5Mo/3Zax0Mghza7ucMu1SD69UXWuDsmWcQ1jAJqX43y5aoS	John	Sparrow	Testuser
5972615898	gantkiewicz976@gmail.com	$2b$10$r7vXKqLapI7zwCjVynD.Re1mOLRphi62MSFdQoyZLIf2jodD9M9VO	Grzegorz	Antkiewicz	\N
4270269215	gantkiewicz9765@gmail.com	$2b$10$0uU4HQjHf6GVaJW3RCLHZ.mZ5Z7cN03HU6oJ1VhTztnC8so4XCcwm	Grzegorz	Nin	Ni
7313838205	newuser@gmail.com	$2b$10$80yyF/m1Tlq32X7d9aCF7.xz6XU7zFUGUloFXorH5kKIVbUhlu74W	user	Name	user
9184079157	gantkiewicz97@gmail.com	$2b$10$ZZMgXoRUk38ukOTLx6cIJ./4UAPXmQjvi3MNLbv6hdg1klyuvR2vi	Grzegorz	Antkiewicz	Patsy
2489716821	newUser	$2b$10$nSYnHgcX.7UQGYAmGnmyueMAAZS/C3vzFEuPGUpZzBqMWe5oEcp3m	new	user	newuser
\.


--
-- TOC entry 3453 (class 2606 OID 16514)
-- Name: plants plants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plants
    ADD CONSTRAINT plants_pkey PRIMARY KEY (id);


--
-- TOC entry 3455 (class 2606 OID 16550)
-- Name: user_plants user_plants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_plants
    ADD CONSTRAINT user_plants_pkey PRIMARY KEY (user_id, plant_id);


--
-- TOC entry 3451 (class 2606 OID 16564)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


-- Completed on 2023-09-27 14:52:45 CEST

--
-- PostgreSQL database dump complete
--

-- Completed on 2023-09-27 14:52:45 CEST

--
-- PostgreSQL database cluster dump complete
--

