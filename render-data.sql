--
-- PostgreSQL database dump
--

\restrict dAM83VzvP4x1SlGZXyzutBc5aGaTbPltuawhZLzANCQiK5pPhdVUlFCTLvQTh33

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

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

--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._prisma_migrations VALUES ('ff48a1c8-1e36-415b-992d-6d9e19d7095b', '8496d09aa114f15fb154da8d5b6101a4692e21ebd1e4897170aac4cb6d48093d', '2026-06-28 15:15:53.926432+05:30', '20260628094553_phase9', NULL, NULL, '2026-06-28 15:15:53.288124+05:30', 1);
INSERT INTO public._prisma_migrations VALUES ('ee8be156-d3e1-400e-b34a-6ff53ac65c71', '48e5aebd59afc2689b8147cccd602bfac77437bf43d375098eaf2417cd345447', '2026-07-01 10:46:53.76216+05:30', '20260701051653_production_indexes', NULL, NULL, '2026-07-01 10:46:53.686085+05:30', 1);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'Admin', 'admin@grocery.com', NULL, '$2b$12$SUMSYUhtTEUfQ/2qHsrlvestoKKp5j.1/TGB4unUpQYgkCGmioz4a', 'admin', NULL, true, true, 0.000000000000000000000000000000, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImVtYWlsIjoiYWRtaW5AZ3JvY2VyeS5jb20iLCJyb2xlIjoiYWRtaW4iLCJpYXQiOjE3ODI4OTIwODUsImV4cCI6MTc4MzQ5Njg4NX0.E1FXyjq0Ph-KQS1M5zPgSqrCWHN_MX-bmb847Au0dSk', '2026-07-01 07:48:05.098', true, NULL, NULL, '2026-06-28 15:28:56.51', '2026-07-01 07:48:05.105');
INSERT INTO public.users VALUES (2, 'Admin2', 'admin2@grocery.com', NULL, '$2b$12$N6KSq2ZeKpfhOS80Ze3fvOR8X9T4HTSJE4t7Fa9DFqmgoDuOZdCrG', 'customer', NULL, false, true, 0.000000000000000000000000000000, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjIsImVtYWlsIjoiYWRtaW4yQGdyb2NlcnkuY29tIiwicm9sZSI6ImN1c3RvbWVyIiwiaWF0IjoxNzgyNjYxNzUzLCJleHAiOjE3ODMyNjY1NTN9.Jz_lx-RZlOvnx1UuuJ9YRrIZlRs1_LrDwPItK7JjAmA', '2026-06-28 15:49:13.78', true, NULL, NULL, '2026-06-28 15:30:09.72', '2026-06-28 15:49:13.783');


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.brands VALUES (1, 'brand_001', '24 Mantra', '24-mantra', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (2, 'brand_002', 'Aashirvaad', 'aashirvaad', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (3, 'brand_003', 'Act II', 'act-ii', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (4, 'brand_004', 'Amul', 'amul', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (5, 'brand_005', 'Ariel', 'ariel', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (6, 'brand_006', 'Balaji', 'balaji', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (7, 'brand_007', 'Bikaji', 'bikaji', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (8, 'brand_008', 'Bisleri', 'bisleri', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (9, 'brand_009', 'Britannia', 'britannia', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (10, 'brand_010', 'Brooke Bond', 'brooke-bond', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (11, 'brand_011', 'Bru', 'bru', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (12, 'brand_012', 'Cadbury', 'cadbury', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (13, 'brand_013', 'Catch', 'catch', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (14, 'brand_014', 'Clinic Plus', 'clinic-plus', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (15, 'brand_015', 'Coca-Cola', 'coca-cola', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (16, 'brand_016', 'Colgate', 'colgate', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (17, 'brand_017', 'Comfort', 'comfort', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (18, 'brand_018', 'Daawat', 'daawat', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (19, 'brand_019', 'Dabur', 'dabur', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (20, 'brand_020', 'Dettol', 'dettol', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (21, 'brand_021', 'Dhara', 'dhara', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (22, 'brand_022', 'Dove', 'dove', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (23, 'brand_023', 'Everest', 'everest', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (24, 'brand_024', 'Fortune', 'fortune', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (25, 'brand_025', 'Haldiram''s', 'haldiram-s', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (26, 'brand_026', 'Harpic', 'harpic', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (27, 'brand_027', 'Harvest Gold', 'harvest-gold', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (28, 'brand_028', 'Head & Shoulders', 'head-shoulders', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (29, 'brand_029', 'India Gate', 'india-gate', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (30, 'brand_030', 'Kellogg''s', 'kellogg-s', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (31, 'brand_031', 'Kissan', 'kissan', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (32, 'brand_032', 'Knorr', 'knorr', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (33, 'brand_033', 'Kohli Fresh', 'kohli-fresh', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (34, 'brand_034', 'Kurkure', 'kurkure', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (35, 'brand_035', 'Lay''s', 'lay-s', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (36, 'brand_036', 'Lizol', 'lizol', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (37, 'brand_037', 'MDH', 'mdh', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (38, 'brand_038', 'Madhur', 'madhur', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (39, 'brand_039', 'Maggi', 'maggi', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (40, 'brand_040', 'McCain', 'mccain', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (41, 'brand_041', 'Mother Dairy', 'mother-dairy', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (42, 'brand_042', 'Nescafe', 'nescafe', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (43, 'brand_043', 'Nestle', 'nestle', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (44, 'brand_044', 'Nivea', 'nivea', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (45, 'brand_045', 'Nutella', 'nutella', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (46, 'brand_046', 'Pampers', 'pampers', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (47, 'brand_047', 'Paper Boat', 'paper-boat', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (48, 'brand_048', 'Parle', 'parle', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (49, 'brand_049', 'Pears', 'pears', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (50, 'brand_050', 'Pepsi', 'pepsi', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (51, 'brand_051', 'Quaker', 'quaker', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (52, 'brand_052', 'Rajdhani', 'rajdhani', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (53, 'brand_053', 'Real', 'real', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (54, 'brand_054', 'Red Bull', 'red-bull', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (55, 'brand_055', 'Safal', 'safal', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (56, 'brand_056', 'Saffola', 'saffola', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (57, 'brand_057', 'Sprite', 'sprite', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (58, 'brand_058', 'Sunfeast', 'sunfeast', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (59, 'brand_059', 'Surf Excel', 'surf-excel', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (60, 'brand_060', 'Tata Salt', 'tata-salt', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (61, 'brand_061', 'Tata Sampann', 'tata-sampann', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (62, 'brand_062', 'Tata Tea', 'tata-tea', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (63, 'brand_063', 'Tide', 'tide', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (64, 'brand_064', 'Too Yumm', 'too-yumm', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (65, 'brand_065', 'Tropicana', 'tropicana', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (66, 'brand_066', 'Uncle Chipps', 'uncle-chipps', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (67, 'brand_067', 'Vim', 'vim', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.brands VALUES (68, 'brand_068', 'Weikfield', 'weikfield', NULL, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.categories VALUES (1, 'cat_001', 'Fruits & Vegetables', 'fruits-vegetables', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (2, 'cat_002', 'Dairy, Bread & Eggs', 'dairy-bread-eggs', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (3, 'cat_003', 'Atta, Rice & Dal', 'atta-rice-dal', NULL, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (4, 'cat_004', 'Oil & Ghee', 'oil-ghee', NULL, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (5, 'cat_005', 'Masala & Spices', 'masala-spices', NULL, 5, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (6, 'cat_006', 'Dry Fruits', 'dry-fruits', NULL, 6, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (7, 'cat_007', 'Snacks & Munchies', 'snacks-munchies', NULL, 7, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (8, 'cat_008', 'Biscuits & Chocolates', 'biscuits-chocolates', NULL, 8, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (9, 'cat_009', 'Tea & Coffee', 'tea-coffee', NULL, 9, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (10, 'cat_010', 'Cold Drinks & Juices', 'cold-drinks-juices', NULL, 10, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (11, 'cat_011', 'Instant Food', 'instant-food', NULL, 11, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (12, 'cat_012', 'Frozen Food', 'frozen-food', NULL, 12, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (13, 'cat_013', 'Breakfast', 'breakfast', NULL, 13, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (14, 'cat_014', 'Cleaning Essentials', 'cleaning-essentials', NULL, 14, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (15, 'cat_015', 'Laundry', 'laundry', NULL, 15, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (16, 'cat_016', 'Personal Care', 'personal-care', NULL, 16, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (17, 'cat_017', 'Baby Care', 'baby-care', NULL, 17, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (18, 'cat_018', 'Pet Care', 'pet-care', NULL, 18, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (19, 'cat_019', 'Kitchen Essentials', 'kitchen-essentials', NULL, 19, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.categories VALUES (20, 'cat_020', 'Pooja Essentials', 'pooja-essentials', NULL, 20, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');


--
-- Data for Name: subcategories; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.subcategories VALUES (1, 'sub_001', 1, 'Fresh Fruits', 'fresh-fruits', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (2, 'sub_002', 1, 'Fresh Vegetables', 'fresh-vegetables', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (3, 'sub_003', 1, 'Leafy Vegetables', 'leafy-vegetables', NULL, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (4, 'sub_004', 1, 'Herbs', 'herbs', NULL, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (5, 'sub_005', 2, 'Milk', 'milk', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (6, 'sub_006', 2, 'Curd', 'curd', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (7, 'sub_007', 2, 'Paneer', 'paneer', NULL, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (8, 'sub_008', 2, 'Bread', 'bread', NULL, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (9, 'sub_009', 2, 'Eggs', 'eggs', NULL, 5, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (10, 'sub_010', 2, 'Butter & Cheese', 'butter-cheese', NULL, 6, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (11, 'sub_011', 3, 'Atta', 'atta', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (12, 'sub_012', 3, 'Rice', 'rice', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (13, 'sub_013', 3, 'Dal & Pulses', 'dal-pulses', NULL, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (14, 'sub_014', 3, 'Sugar & Salt', 'sugar-salt', NULL, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (15, 'sub_015', 4, 'Edible Oil', 'edible-oil', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (16, 'sub_016', 4, 'Ghee', 'ghee', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (17, 'sub_017', 5, 'Whole Spices', 'whole-spices', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (18, 'sub_018', 5, 'Powdered Spices', 'powdered-spices', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (19, 'sub_019', 6, 'Almonds', 'almonds', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (20, 'sub_020', 6, 'Cashews', 'cashews', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (21, 'sub_021', 6, 'Raisins', 'raisins', NULL, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (22, 'sub_022', 7, 'Chips', 'chips', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (23, 'sub_023', 7, 'Namkeen', 'namkeen', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (24, 'sub_024', 7, 'Popcorn', 'popcorn', NULL, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (25, 'sub_025', 7, 'Makhana', 'makhana', NULL, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (26, 'sub_026', 8, 'Biscuits', 'biscuits', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (27, 'sub_027', 8, 'Cookies', 'cookies', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (28, 'sub_028', 8, 'Chocolate', 'chocolate', NULL, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (29, 'sub_029', 9, 'Tea', 'tea', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (30, 'sub_030', 9, 'Coffee', 'coffee', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (31, 'sub_031', 10, 'Soft Drinks', 'soft-drinks', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (32, 'sub_032', 10, 'Juices', 'juices', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (33, 'sub_033', 10, 'Energy Drinks', 'energy-drinks', NULL, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (34, 'sub_034', 10, 'Water', 'water', NULL, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (35, 'sub_035', 11, 'Noodles', 'noodles', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (36, 'sub_036', 11, 'Pasta', 'pasta', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (37, 'sub_037', 11, 'Soup', 'soup', NULL, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (38, 'sub_038', 12, 'Frozen Snacks', 'frozen-snacks', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (39, 'sub_039', 12, 'Frozen Vegetables', 'frozen-vegetables', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (40, 'sub_040', 13, 'Cereals', 'cereals', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (41, 'sub_041', 13, 'Oats', 'oats', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (42, 'sub_042', 13, 'Jam & Spreads', 'jam-spreads', NULL, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (43, 'sub_043', 14, 'Dishwash', 'dishwash', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (44, 'sub_044', 14, 'Floor Cleaners', 'floor-cleaners', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (45, 'sub_045', 14, 'Toilet Cleaners', 'toilet-cleaners', NULL, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (46, 'sub_046', 14, 'Disinfectants', 'disinfectants', NULL, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (47, 'sub_047', 15, 'Detergent Powder', 'detergent-powder', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (48, 'sub_048', 15, 'Fabric Care', 'fabric-care', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (49, 'sub_049', 16, 'Oral Care', 'oral-care', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (50, 'sub_050', 16, 'Bath & Body', 'bath-body', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (51, 'sub_051', 16, 'Hair Care', 'hair-care', NULL, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (52, 'sub_052', 16, 'Skin Care', 'skin-care', NULL, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (53, 'sub_053', 17, 'Diapers', 'diapers', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (54, 'sub_054', 17, 'Baby Food', 'baby-food', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (55, 'sub_055', 18, 'Dog Food', 'dog-food', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (56, 'sub_056', 18, 'Cat Food', 'cat-food', NULL, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (57, 'sub_057', 19, 'Foil & Wraps', 'foil-wraps', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.subcategories VALUES (58, 'sub_058', 20, 'Incense & Diyas', 'incense-diyas', NULL, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.products VALUES (1, 'prod_0001', 'KOHLI-0001-FRESHBANANAROBUS', NULL, 33, 1, 1, 'Fresh Banana Robusta', 'fresh-banana-robusta', 'Fresh Banana Robusta 1 dozen for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.7, 23, true, false, true, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (2, 'prod_0002', 'KOHLI-0002-APPLEROYALGALA', NULL, 33, 1, 1, 'Apple Royal Gala', 'apple-royal-gala', 'Apple Royal Gala 4 pcs for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.6, 158, true, true, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (3, 'prod_0003', 'KOHLI-0003-POMEGRANATE', NULL, 33, 1, 1, 'Pomegranate', 'pomegranate', 'Pomegranate 2 pcs for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.7, 262, false, false, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (4, 'prod_0004', 'KOHLI-0004-ORANGENAGPUR', NULL, 33, 1, 1, 'Orange Nagpur', 'orange-nagpur', 'Orange Nagpur 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.5, 316, false, false, false, true, true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (5, 'prod_0005', 'KOHLI-0005-PAPAYASEMIRIPE', NULL, 33, 1, 1, 'Papaya Semi Ripe', 'papaya-semi-ripe', 'Papaya Semi Ripe 1 pc for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.5, 276, false, false, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (6, 'prod_0006', 'KOHLI-0006-TOMATOHYBRID', NULL, 33, 1, 2, 'Tomato Hybrid', 'tomato-hybrid', 'Tomato Hybrid 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.7, 110, false, false, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (7, 'prod_0007', 'KOHLI-0007-ONIONRED', NULL, 33, 1, 2, 'Onion Red', 'onion-red', 'Onion Red 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.4, 94, false, false, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (8, 'prod_0008', 'KOHLI-0008-POTATOFRESH', NULL, 33, 1, 2, 'Potato Fresh', 'potato-fresh', 'Potato Fresh 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.5, 419, false, false, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (9, 'prod_0009', 'KOHLI-0009-CARROTORANGE', NULL, 33, 1, 2, 'Carrot Orange', 'carrot-orange', 'Carrot Orange 500 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.8, 77, false, false, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (10, 'prod_0010', 'KOHLI-0010-CUCUMBERGREEN', NULL, 33, 1, 2, 'Cucumber Green', 'cucumber-green', 'Cucumber Green 500 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.6, 287, false, false, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (11, 'prod_0011', 'KOHLI-0011-CAPSICUMGREEN', NULL, 33, 1, 2, 'Capsicum Green', 'capsicum-green', 'Capsicum Green 250 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.4, 172, false, false, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (12, 'prod_0012', 'KOHLI-0012-CAULIFLOWER', NULL, 33, 1, 2, 'Cauliflower', 'cauliflower', 'Cauliflower 1 pc for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.7, 309, false, false, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (13, 'prod_0013', 'KOHLI-0013-SPINACHPALAK', NULL, 33, 1, 3, 'Spinach Palak', 'spinach-palak', 'Spinach Palak 1 bunch for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.4, 346, false, false, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (14, 'prod_0014', 'KOHLI-0014-CORIANDERLEAVES', NULL, 33, 1, 4, 'Coriander Leaves', 'coriander-leaves', 'Coriander Leaves 100 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.2, 408, false, false, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (15, 'prod_0015', 'KOHLI-0015-GREENCHILLI', NULL, 33, 1, 4, 'Green Chilli', 'green-chilli', 'Green Chilli 100 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Store in a cool, ventilated place', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.3, 353, false, false, false, true, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (16, 'prod_0016', 'KOHLI-0016-AMULTAAZATONEDM', NULL, 4, 2, 5, 'Amul Taaza Toned Milk', 'amul-taaza-toned-milk', 'Amul Taaza Toned Milk 500 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep refrigerated', 'India', 'Amul India Pvt Ltd', true, 'YES', 5, 4.5, 194, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (17, 'prod_0017', 'KOHLI-0017-AMULGOLDFULLCRE', NULL, 4, 2, 5, 'Amul Gold Full Cream Milk', 'amul-gold-full-cream-milk', 'Amul Gold Full Cream Milk 500 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep refrigerated', 'India', 'Amul India Pvt Ltd', true, 'YES', 5, 4.7, 180, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (18, 'prod_0018', 'KOHLI-0018-MOTHERDAIRYCURD', NULL, 41, 2, 6, 'Mother Dairy Curd', 'mother-dairy-curd', 'Mother Dairy Curd 400 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep refrigerated', 'India', 'Mother Dairy India Pvt Ltd', true, 'YES', 5, 4.8, 78, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (19, 'prod_0019', 'KOHLI-0019-AMULFRESHPANEER', NULL, 4, 2, 7, 'Amul Fresh Paneer', 'amul-fresh-paneer', 'Amul Fresh Paneer 200 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep refrigerated', 'India', 'Amul India Pvt Ltd', true, 'YES', 5, 4.4, 59, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (20, 'prod_0020', 'KOHLI-0020-BRITANNIABROWNBR', NULL, 9, 2, 8, 'Britannia Brown Bread', 'britannia-brown-bread', 'Britannia Brown Bread 400 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep refrigerated', 'India', 'Britannia India Pvt Ltd', true, 'YES', 5, 4.3, 215, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (21, 'prod_0021', 'KOHLI-0021-HARVESTGOLDWHITE', NULL, 27, 2, 8, 'Harvest Gold White Bread', 'harvest-gold-white-bread', 'Harvest Gold White Bread 350 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep refrigerated', 'India', 'Harvest Gold India Pvt Ltd', true, 'YES', 5, 4.8, 238, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (22, 'prod_0022', 'KOHLI-0022-FARMFRESHEGGS', NULL, 33, 2, 9, 'Farm Fresh Eggs', 'farm-fresh-eggs', 'Farm Fresh Eggs 6 pcs for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep refrigerated', 'India', 'Kohli Store Fresh Sourcing', true, 'YES', 5, 4.7, 181, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (23, 'prod_0023', 'KOHLI-0023-AMULBUTTER', NULL, 4, 2, 10, 'Amul Butter', 'amul-butter', 'Amul Butter 100 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep refrigerated', 'India', 'Amul India Pvt Ltd', true, 'YES', 5, 4.2, 122, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (24, 'prod_0024', 'KOHLI-0024-AMULCHEESESLICES', NULL, 4, 2, 10, 'Amul Cheese Slices', 'amul-cheese-slices', 'Amul Cheese Slices 200 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep refrigerated', 'India', 'Amul India Pvt Ltd', true, 'YES', 5, 4.8, 257, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (25, 'prod_0025', 'KOHLI-0025-AASHIRVAADSHUDHC', NULL, 2, 3, 11, 'Aashirvaad Shudh Chakki Atta', 'aashirvaad-shudh-chakki-atta', 'Aashirvaad Shudh Chakki Atta 5 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Aashirvaad India Pvt Ltd', true, 'YES', 5, 4.4, 195, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (26, 'prod_0026', 'KOHLI-0026-FORTUNECHAKKIFRE', NULL, 24, 3, 11, 'Fortune Chakki Fresh Atta', 'fortune-chakki-fresh-atta', 'Fortune Chakki Fresh Atta 5 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Fortune India Pvt Ltd', true, 'YES', 5, 4.5, 169, false, false, false, false, true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (27, 'prod_0027', 'KOHLI-0027-INDIAGATEDUBARB', NULL, 29, 3, 12, 'India Gate Dubar Basmati Rice', 'india-gate-dubar-basmati-rice', 'India Gate Dubar Basmati Rice 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'India Gate India Pvt Ltd', true, 'YES', 5, 4.6, 124, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (28, 'prod_0028', 'KOHLI-0028-DAAWATROZANABASM', NULL, 18, 3, 12, 'Daawat Rozana Basmati Rice', 'daawat-rozana-basmati-rice', 'Daawat Rozana Basmati Rice 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Daawat India Pvt Ltd', true, 'YES', 5, 4.4, 435, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (29, 'prod_0029', 'KOHLI-0029-TATASAMPANNTOOR', NULL, 61, 3, 13, 'Tata Sampann Toor Dal', 'tata-sampann-toor-dal', 'Tata Sampann Toor Dal 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Tata Sampann India Pvt Ltd', true, 'YES', 5, 4.1, 441, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (30, 'prod_0030', 'KOHLI-0030-TATASAMPANNCHANA', NULL, 61, 3, 13, 'Tata Sampann Chana Dal', 'tata-sampann-chana-dal', 'Tata Sampann Chana Dal 500 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Tata Sampann India Pvt Ltd', true, 'YES', 5, 4.4, 318, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (31, 'prod_0031', 'KOHLI-0031-24MANTRAORGANIC', NULL, 1, 3, 13, '24 Mantra Organic Moong Dal', '24-mantra-organic-moong-dal', '24 Mantra Organic Moong Dal 500 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', '24 Mantra India Pvt Ltd', true, 'YES', 5, 4.2, 55, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (32, 'prod_0032', 'KOHLI-0032-RAJDHANIBESAN', NULL, 52, 3, 11, 'Rajdhani Besan', 'rajdhani-besan', 'Rajdhani Besan 500 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Rajdhani India Pvt Ltd', true, 'YES', 5, 4.3, 316, false, false, false, false, true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (33, 'prod_0033', 'KOHLI-0033-TATASALTIODIZED', NULL, 60, 3, 14, 'Tata Salt Iodized', 'tata-salt-iodized', 'Tata Salt Iodized 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Tata Salt India Pvt Ltd', true, 'YES', 5, 4.3, 228, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (34, 'prod_0034', 'KOHLI-0034-MADHURPURESUGAR', NULL, 38, 3, 14, 'Madhur Pure Sugar', 'madhur-pure-sugar', 'Madhur Pure Sugar 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Madhur India Pvt Ltd', true, 'YES', 5, 4.7, 179, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (35, 'prod_0035', 'KOHLI-0035-FORTUNESUNFLOWER', NULL, 24, 4, 15, 'Fortune Sunflower Oil', 'fortune-sunflower-oil', 'Fortune Sunflower Oil 1 L for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Fortune India Pvt Ltd', true, 'YES', 12, 4.6, 411, false, false, false, false, true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (36, 'prod_0036', 'KOHLI-0036-SAFFOLAGOLDOIL', NULL, 56, 4, 15, 'Saffola Gold Oil', 'saffola-gold-oil', 'Saffola Gold Oil 1 L for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Saffola India Pvt Ltd', true, 'YES', 12, 4.4, 73, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (37, 'prod_0037', 'KOHLI-0037-DHARAKACHIGHANI', NULL, 21, 4, 15, 'Dhara Kachi Ghani Mustard Oil', 'dhara-kachi-ghani-mustard-oil', 'Dhara Kachi Ghani Mustard Oil 1 L for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Dhara India Pvt Ltd', true, 'YES', 12, 4.5, 326, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (38, 'prod_0038', 'KOHLI-0038-AMULPUREGHEE', NULL, 4, 4, 16, 'Amul Pure Ghee', 'amul-pure-ghee', 'Amul Pure Ghee 500 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Amul India Pvt Ltd', true, 'YES', 12, 4.7, 373, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (39, 'prod_0039', 'KOHLI-0039-MOTHERDAIRYGHEE', NULL, 41, 4, 16, 'Mother Dairy Ghee', 'mother-dairy-ghee', 'Mother Dairy Ghee 1 L for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Mother Dairy India Pvt Ltd', true, 'YES', 12, 4.6, 449, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (40, 'prod_0040', 'KOHLI-0040-MDHDEGGIMIRCH', NULL, 37, 5, 18, 'MDH Deggi Mirch', 'mdh-deggi-mirch', 'MDH Deggi Mirch 100 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'MDH India Pvt Ltd', true, 'YES', 12, 4.4, 390, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (41, 'prod_0041', 'KOHLI-0041-EVERESTTURMERICP', NULL, 23, 5, 18, 'Everest Turmeric Powder', 'everest-turmeric-powder', 'Everest Turmeric Powder 100 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Everest India Pvt Ltd', true, 'YES', 12, 4.2, 366, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (42, 'prod_0042', 'KOHLI-0042-TATASAMPANNCORIA', NULL, 61, 5, 18, 'Tata Sampann Coriander Powder', 'tata-sampann-coriander-powder', 'Tata Sampann Coriander Powder 100 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Tata Sampann India Pvt Ltd', true, 'YES', 12, 4.4, 256, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (43, 'prod_0043', 'KOHLI-0043-CATCHCUMINSEEDS', NULL, 13, 5, 17, 'Catch Cumin Seeds', 'catch-cumin-seeds', 'Catch Cumin Seeds 100 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Catch India Pvt Ltd', true, 'YES', 12, 4.5, 431, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (44, 'prod_0044', 'KOHLI-0044-MDHGARAMMASALA', NULL, 37, 5, 18, 'MDH Garam Masala', 'mdh-garam-masala', 'MDH Garam Masala 100 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'MDH India Pvt Ltd', true, 'YES', 12, 4.5, 28, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (45, 'prod_0045', 'KOHLI-0045-LAYSCLASSICSALT', NULL, 35, 7, 22, 'Lay''s Classic Salted Chips', 'lay-s-classic-salted-chips', 'Lay''s Classic Salted Chips 52 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Lay''s India Pvt Ltd', true, 'YES', 12, 4.8, 32, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (46, 'prod_0046', 'KOHLI-0046-LAYSMAGICMASALA', NULL, 35, 7, 22, 'Lay''s Magic Masala Chips', 'lay-s-magic-masala-chips', 'Lay''s Magic Masala Chips 52 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Lay''s India Pvt Ltd', true, 'YES', 12, 4.3, 428, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (47, 'prod_0047', 'KOHLI-0047-KURKUREMASALAMUN', NULL, 34, 7, 23, 'Kurkure Masala Munch', 'kurkure-masala-munch', 'Kurkure Masala Munch 82 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Kurkure India Pvt Ltd', true, 'YES', 12, 4.7, 88, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (48, 'prod_0048', 'KOHLI-0048-HALDIRAMALOOBHUJ', NULL, 25, 7, 23, 'Haldiram Aloo Bhujia', 'haldiram-aloo-bhujia', 'Haldiram Aloo Bhujia 200 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Haldiram''s India Pvt Ltd', true, 'YES', 12, 4.2, 118, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (49, 'prod_0049', 'KOHLI-0049-BIKAJIBIKANERIBH', NULL, 7, 7, 23, 'Bikaji Bikaneri Bhujia', 'bikaji-bikaneri-bhujia', 'Bikaji Bikaneri Bhujia 200 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Bikaji India Pvt Ltd', true, 'YES', 12, 4.7, 374, false, false, false, false, true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (50, 'prod_0050', 'KOHLI-0050-ACTIIBUTTERPOPC', NULL, 3, 7, 24, 'Act II Butter Popcorn', 'act-ii-butter-popcorn', 'Act II Butter Popcorn 59 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Act II India Pvt Ltd', true, 'YES', 12, 4.4, 256, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (51, 'prod_0051', 'KOHLI-0051-TOOYUMMFOXNUTSP', NULL, 64, 7, 25, 'Too Yumm Foxnuts Pudina', 'too-yumm-foxnuts-pudina', 'Too Yumm Foxnuts Pudina 65 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Too Yumm India Pvt Ltd', true, 'YES', 12, 4.5, 307, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (52, 'prod_0052', 'KOHLI-0052-BALAJIWAFERSSIMP', NULL, 6, 7, 22, 'Balaji Wafers Simply Salted', 'balaji-wafers-simply-salted', 'Balaji Wafers Simply Salted 135 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Balaji India Pvt Ltd', true, 'YES', 12, 4.2, 351, false, false, false, false, true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (53, 'prod_0053', 'KOHLI-0053-UNCLECHIPPSSPICY', NULL, 66, 7, 22, 'Uncle Chipps Spicy Treat', 'uncle-chipps-spicy-treat', 'Uncle Chipps Spicy Treat 50 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Uncle Chipps India Pvt Ltd', true, 'YES', 12, 4.4, 335, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (54, 'prod_0054', 'KOHLI-0054-HALDIRAMMOONGDAL', NULL, 25, 7, 23, 'Haldiram Moong Dal', 'haldiram-moong-dal', 'Haldiram Moong Dal 200 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Haldiram''s India Pvt Ltd', true, 'YES', 12, 4.3, 255, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (55, 'prod_0055', 'KOHLI-0055-PARLEGORIGINALB', NULL, 48, 8, 26, 'Parle-G Original Biscuits', 'parle-g-original-biscuits', 'Parle-G Original Biscuits 250 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Parle India Pvt Ltd', true, 'YES', 12, 4.3, 57, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (56, 'prod_0056', 'KOHLI-0056-BRITANNIAGOODDAY', NULL, 9, 8, 27, 'Britannia Good Day Cashew', 'britannia-good-day-cashew', 'Britannia Good Day Cashew 200 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Britannia India Pvt Ltd', true, 'YES', 12, 4.6, 117, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (57, 'prod_0057', 'KOHLI-0057-SUNFEASTDARKFANT', NULL, 58, 8, 27, 'Sunfeast Dark Fantasy Choco Fills', 'sunfeast-dark-fantasy-choco-fills', 'Sunfeast Dark Fantasy Choco Fills 300 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Sunfeast India Pvt Ltd', true, 'YES', 12, 4.8, 63, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (58, 'prod_0058', 'KOHLI-0058-CADBURYDAIRYMILK', NULL, 12, 8, 28, 'Cadbury Dairy Milk', 'cadbury-dairy-milk', 'Cadbury Dairy Milk 36 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Cadbury India Pvt Ltd', true, 'YES', 12, 4.1, 390, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (59, 'prod_0059', 'KOHLI-0059-NESTLEKITKAT', NULL, 43, 8, 28, 'Nestle KitKat', 'nestle-kitkat', 'Nestle KitKat 37 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Nestle India Pvt Ltd', true, 'YES', 12, 4.2, 304, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (60, 'prod_0060', 'KOHLI-0060-TATATEAPREMIUM', NULL, 62, 9, 29, 'Tata Tea Premium', 'tata-tea-premium', 'Tata Tea Premium 250 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Tata Tea India Pvt Ltd', true, 'YES', 12, 4.2, 145, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (61, 'prod_0061', 'KOHLI-0061-REDLABELTEA', NULL, 10, 9, 29, 'Red Label Tea', 'red-label-tea', 'Red Label Tea 250 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Brooke Bond India Pvt Ltd', true, 'YES', 12, 4.4, 107, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (62, 'prod_0062', 'KOHLI-0062-NESCAFECLASSICCO', NULL, 42, 9, 30, 'Nescafe Classic Coffee', 'nescafe-classic-coffee', 'Nescafe Classic Coffee 50 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Nescafe India Pvt Ltd', true, 'YES', 12, 4.4, 329, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (63, 'prod_0063', 'KOHLI-0063-BRUINSTANTCOFFEE', NULL, 11, 9, 30, 'Bru Instant Coffee', 'bru-instant-coffee', 'Bru Instant Coffee 50 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Bru India Pvt Ltd', true, 'YES', 12, 4.4, 292, false, false, false, false, true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (64, 'prod_0064', 'KOHLI-0064-COCACOLASOFTDRI', NULL, 15, 10, 31, 'Coca-Cola Soft Drink', 'coca-cola-soft-drink', 'Coca-Cola Soft Drink 750 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Coca-Cola India Pvt Ltd', true, 'YES', 12, 4.2, 188, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (65, 'prod_0065', 'KOHLI-0065-PEPSISOFTDRINK', NULL, 50, 10, 31, 'Pepsi Soft Drink', 'pepsi-soft-drink', 'Pepsi Soft Drink 750 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Pepsi India Pvt Ltd', true, 'YES', 12, 4.3, 147, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (66, 'prod_0066', 'KOHLI-0066-SPRITELEMONDRINK', NULL, 57, 10, 31, 'Sprite Lemon Drink', 'sprite-lemon-drink', 'Sprite Lemon Drink 750 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Sprite India Pvt Ltd', true, 'YES', 12, 4.5, 128, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (67, 'prod_0067', 'KOHLI-0067-REALFRUITPOWERM', NULL, 53, 10, 32, 'Real Fruit Power Mixed Fruit', 'real-fruit-power-mixed-fruit', 'Real Fruit Power Mixed Fruit 1 L for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Real India Pvt Ltd', true, 'YES', 12, 4.6, 226, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (68, 'prod_0068', 'KOHLI-0068-TROPICANAORANGED', NULL, 65, 10, 32, 'Tropicana Orange Delight', 'tropicana-orange-delight', 'Tropicana Orange Delight 1 L for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Tropicana India Pvt Ltd', true, 'YES', 12, 4.8, 198, false, false, false, false, true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (69, 'prod_0069', 'KOHLI-0069-BISLERIMINERALWA', NULL, 8, 10, 34, 'Bisleri Mineral Water', 'bisleri-mineral-water', 'Bisleri Mineral Water 1 L for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Bisleri India Pvt Ltd', true, 'YES', 12, 4.5, 105, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (70, 'prod_0070', 'KOHLI-0070-REDBULLENERGYDR', NULL, 54, 10, 33, 'Red Bull Energy Drink', 'red-bull-energy-drink', 'Red Bull Energy Drink 250 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Red Bull India Pvt Ltd', true, 'YES', 12, 4.5, 52, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (71, 'prod_0071', 'KOHLI-0071-PAPERBOATAAMRAS', NULL, 47, 10, 32, 'Paper Boat Aamras', 'paper-boat-aamras', 'Paper Boat Aamras 200 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Paper Boat India Pvt Ltd', true, 'YES', 12, 4.1, 216, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (72, 'prod_0072', 'KOHLI-0072-MAGGI2MINUTENOO', NULL, 39, 11, 35, 'Maggi 2-Minute Noodles', 'maggi-2-minute-noodles', 'Maggi 2-Minute Noodles 70 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Maggi India Pvt Ltd', true, 'YES', 12, 4.2, 340, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (73, 'prod_0073', 'KOHLI-0073-SUNFEASTYIPPEENO', NULL, 58, 11, 35, 'Sunfeast Yippee Noodles', 'sunfeast-yippee-noodles', 'Sunfeast Yippee Noodles 70 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Sunfeast India Pvt Ltd', true, 'YES', 12, 4.5, 294, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (74, 'prod_0074', 'KOHLI-0074-WEIKFIELDPENNEPA', NULL, 68, 11, 36, 'Weikfield Penne Pasta', 'weikfield-penne-pasta', 'Weikfield Penne Pasta 400 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Weikfield India Pvt Ltd', true, 'YES', 12, 4.2, 96, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (75, 'prod_0075', 'KOHLI-0075-KNORRSWEETCORNS', NULL, 32, 11, 37, 'Knorr Sweet Corn Soup', 'knorr-sweet-corn-soup', 'Knorr Sweet Corn Soup 44 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Knorr India Pvt Ltd', true, 'YES', 12, 4.3, 416, false, false, false, false, true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (76, 'prod_0076', 'KOHLI-0076-MCCAINFRENCHFRIE', NULL, 40, 12, 38, 'McCain French Fries', 'mccain-french-fries', 'McCain French Fries 420 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep refrigerated', 'India', 'McCain India Pvt Ltd', true, 'YES', 12, 4.5, 38, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (77, 'prod_0077', 'KOHLI-0077-MCCAINALOOTIKKI', NULL, 40, 12, 38, 'McCain Aloo Tikki', 'mccain-aloo-tikki', 'McCain Aloo Tikki 400 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep refrigerated', 'India', 'McCain India Pvt Ltd', true, 'YES', 12, 4.3, 122, false, false, false, false, true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (78, 'prod_0078', 'KOHLI-0078-SAFALFROZENGREEN', NULL, 55, 12, 39, 'Safal Frozen Green Peas', 'safal-frozen-green-peas', 'Safal Frozen Green Peas 500 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep refrigerated', 'India', 'Safal India Pvt Ltd', true, 'YES', 12, 4.1, 130, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (79, 'prod_0079', 'KOHLI-0079-KELLOGGSCORNFLA', NULL, 30, 13, 40, 'Kellogg''s Corn Flakes', 'kellogg-s-corn-flakes', 'Kellogg''s Corn Flakes 475 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Kellogg''s India Pvt Ltd', true, 'YES', 12, 4.3, 135, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (80, 'prod_0080', 'KOHLI-0080-QUAKEROATS', NULL, 51, 13, 41, 'Quaker Oats', 'quaker-oats', 'Quaker Oats 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Quaker India Pvt Ltd', true, 'YES', 12, 4.6, 413, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (81, 'prod_0081', 'KOHLI-0081-KISSANMIXEDFRUIT', NULL, 31, 13, 42, 'Kissan Mixed Fruit Jam', 'kissan-mixed-fruit-jam', 'Kissan Mixed Fruit Jam 500 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Kissan India Pvt Ltd', true, 'YES', 12, 4.4, 334, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (82, 'prod_0082', 'KOHLI-0082-NUTELLAHAZELNUTS', NULL, 45, 13, 42, 'Nutella Hazelnut Spread', 'nutella-hazelnut-spread', 'Nutella Hazelnut Spread 350 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', 'As per product label', 'Keep in a cool, dry place', 'India', 'Nutella India Pvt Ltd', true, 'YES', 12, 4.4, 416, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (83, 'prod_0083', 'KOHLI-0083-SURFEXCELEASYWA', NULL, 59, 15, 47, 'Surf Excel Easy Wash', 'surf-excel-easy-wash', 'Surf Excel Easy Wash 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Surf Excel India Pvt Ltd', true, 'NO', 18, 4.3, 239, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (84, 'prod_0084', 'KOHLI-0084-ARIELMATICTOPLO', NULL, 5, 15, 47, 'Ariel Matic Top Load', 'ariel-matic-top-load', 'Ariel Matic Top Load 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Ariel India Pvt Ltd', true, 'NO', 18, 4.4, 201, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (85, 'prod_0085', 'KOHLI-0085-TIDEPLUSDOUBLEP', NULL, 63, 15, 47, 'Tide Plus Double Power', 'tide-plus-double-power', 'Tide Plus Double Power 1 kg for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Tide India Pvt Ltd', true, 'NO', 18, 4.7, 405, false, false, false, false, true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (86, 'prod_0086', 'KOHLI-0086-COMFORTFABRICCON', NULL, 17, 15, 48, 'Comfort Fabric Conditioner', 'comfort-fabric-conditioner', 'Comfort Fabric Conditioner 860 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Comfort India Pvt Ltd', true, 'NO', 18, 4.4, 96, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (87, 'prod_0087', 'KOHLI-0087-VIMDISHWASHBAR', NULL, 67, 14, 43, 'Vim Dishwash Bar', 'vim-dishwash-bar', 'Vim Dishwash Bar 300 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Vim India Pvt Ltd', true, 'NO', 18, 4.7, 163, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (88, 'prod_0088', 'KOHLI-0088-VIMDISHWASHLIQUI', NULL, 67, 14, 43, 'Vim Dishwash Liquid', 'vim-dishwash-liquid', 'Vim Dishwash Liquid 750 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Vim India Pvt Ltd', true, 'NO', 18, 4.2, 117, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (89, 'prod_0089', 'KOHLI-0089-LIZOLCITRUSFLOOR', NULL, 36, 14, 44, 'Lizol Citrus Floor Cleaner', 'lizol-citrus-floor-cleaner', 'Lizol Citrus Floor Cleaner 1 L for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Lizol India Pvt Ltd', true, 'NO', 18, 4.3, 224, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (90, 'prod_0090', 'KOHLI-0090-HARPICPOWERPLUS', NULL, 26, 14, 45, 'Harpic Power Plus Toilet Cleaner', 'harpic-power-plus-toilet-cleaner', 'Harpic Power Plus Toilet Cleaner 1 L for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Harpic India Pvt Ltd', true, 'NO', 18, 4.2, 262, true, false, true, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (91, 'prod_0091', 'KOHLI-0091-DETTOLANTISEPTIC', NULL, 20, 14, 46, 'Dettol Antiseptic Liquid', 'dettol-antiseptic-liquid', 'Dettol Antiseptic Liquid 550 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Dettol India Pvt Ltd', true, 'NO', 18, 4.6, 367, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (92, 'prod_0092', 'KOHLI-0092-COLGATESTRONGTEE', NULL, 16, 16, 49, 'Colgate Strong Teeth Toothpaste', 'colgate-strong-teeth-toothpaste', 'Colgate Strong Teeth Toothpaste 200 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Colgate India Pvt Ltd', true, 'NO', 18, 4.3, 22, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (93, 'prod_0093', 'KOHLI-0093-DOVECREAMBEAUTY', NULL, 22, 16, 50, 'Dove Cream Beauty Bathing Bar', 'dove-cream-beauty-bathing-bar', 'Dove Cream Beauty Bathing Bar 125 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Dove India Pvt Ltd', true, 'NO', 18, 4.5, 171, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (94, 'prod_0094', 'KOHLI-0094-PEARSPUREGENTLE', NULL, 49, 16, 50, 'Pears Pure & Gentle Soap', 'pears-pure-gentle-soap', 'Pears Pure & Gentle Soap 125 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Pears India Pvt Ltd', true, 'NO', 18, 4.3, 406, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (95, 'prod_0095', 'KOHLI-0095-CLINICPLUSSTRONG', NULL, 14, 16, 51, 'Clinic Plus Strong & Long Shampoo', 'clinic-plus-strong-long-shampoo', 'Clinic Plus Strong & Long Shampoo 340 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Clinic Plus India Pvt Ltd', true, 'NO', 18, 4.2, 200, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (96, 'prod_0096', 'KOHLI-0096-HEADSHOULDERSANT', NULL, 28, 16, 51, 'Head & Shoulders Anti Dandruff Shampoo', 'head-shoulders-anti-dandruff-shampoo', 'Head & Shoulders Anti Dandruff Shampoo 340 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Head & Shoulders India Pvt Ltd', true, 'NO', 18, 4.8, 439, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (97, 'prod_0097', 'KOHLI-0097-NIVEASOFTLIGHTM', NULL, 44, 16, 52, 'Nivea Soft Light Moisturiser', 'nivea-soft-light-moisturiser', 'Nivea Soft Light Moisturiser 200 ml for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Nivea India Pvt Ltd', true, 'NO', 18, 4.7, 92, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (98, 'prod_0098', 'KOHLI-0098-DABURREDTOOTHPAS', NULL, 19, 16, 49, 'Dabur Red Toothpaste', 'dabur-red-toothpaste', 'Dabur Red Toothpaste 200 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Dabur India Pvt Ltd', true, 'NO', 18, 4.2, 224, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (99, 'prod_0099', 'KOHLI-0099-PAMPERSACTIVEBAB', NULL, 46, 17, 53, 'Pampers Active Baby Diapers', 'pampers-active-baby-diapers', 'Pampers Active Baby Diapers Medium 20 pcs for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Pampers India Pvt Ltd', true, 'YES', 12, 4.8, 182, true, true, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.products VALUES (100, 'prod_0100', 'KOHLI-0100-CERELACWHEATCERE', NULL, 43, 17, 54, 'Cerelac Wheat Cereal', 'cerelac-wheat-cereal', 'Cerelac Wheat Cereal 300 g for everyday grocery needs. Quality checked and suitable for fast local delivery.', NULL, 'Keep in a cool, dry place', 'India', 'Nestle India Pvt Ltd', true, 'YES', 12, 4.7, 323, false, false, false, false, false, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');


--
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: coupons; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: offers; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.offers VALUES (1, 'offer_001', 'Launch Offer 10% Off', 'PERCENT', 10.000000000000000000000000000000, 299.000000000000000000000000000000, 'KOHLI10', true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.offers VALUES (2, 'offer_002', 'Free Delivery Above ₹499', 'DELIVERY_FREE', 0.000000000000000000000000000000, 499.000000000000000000000000000000, 'FREEDEL', true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.offers VALUES (3, 'offer_003', 'Save ₹50 Above ₹699', 'FLAT', 50.000000000000000000000000000000, 699.000000000000000000000000000000, 'SAVE50', true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.orders VALUES (1, 'KSMQZHLMAEP4X4', 1, NULL, 'pending', 'pending', 'cod', NULL, 4006.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 200.000000000000000000000000000000, 4206.000000000000000000000000000000, NULL, 0.000000000000000000000000000000, '{"city": "Ghaziabad", "name": "Admin", "line1": "Sahibabad", "phone": "9310053756", "state": "utaarpradesh", "country": "India", "pincode": "201005", "latitude": 28.68373932422693, "longitude": 77.3716925926339}', '', 30, NULL, NULL, NULL, '605149', '2026-06-29 17:23:49.207', '2026-06-29 17:23:49.207');
INSERT INTO public.orders VALUES (2, 'KSMR07CPULWEG3', 1, NULL, 'pending', 'pending', 'cod', NULL, 597.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 30.000000000000000000000000000000, 627.000000000000000000000000000000, NULL, 0.000000000000000000000000000000, '{"city": "Ghaziabad", "name": "Admin", "line1": "Sahibabad", "phone": "9310053756", "state": "djyjfyjyjjjj", "country": "India", "pincode": "44477774", "latitude": 28.68356881030643, "longitude": 77.37167025480022}', '', 30, NULL, NULL, NULL, '369168', '2026-06-30 05:24:43.916', '2026-06-30 05:24:43.916');


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.order_items VALUES (1, 1, 4, 4, 'Orange Nagpur', 'orange-nagpur-1-kg.webp', '1 kg', 109.000000000000000000000000000000, 13, 1417.000000000000000000000000000000);
INSERT INTO public.order_items VALUES (2, 1, 1, 1, 'Fresh Banana Robusta', 'fresh-banana-robusta-1-dozen.webp', '1 dozen', 54.000000000000000000000000000000, 1, 54.000000000000000000000000000000);
INSERT INTO public.order_items VALUES (3, 1, 16, 16, 'Amul Taaza Toned Milk', 'amul-taaza-toned-milk-500-ml.webp', '500 ml', 33.000000000000000000000000000000, 6, 198.000000000000000000000000000000);
INSERT INTO public.order_items VALUES (4, 1, 2, 2, 'Apple Royal Gala', 'apple-royal-gala-4-pcs.webp', '4 pcs', 199.000000000000000000000000000000, 2, 398.000000000000000000000000000000);
INSERT INTO public.order_items VALUES (5, 1, 3, 3, 'Pomegranate', 'pomegranate-2-pcs.webp', '2 pcs', 165.000000000000000000000000000000, 11, 1815.000000000000000000000000000000);
INSERT INTO public.order_items VALUES (6, 1, 5, 5, 'Papaya Semi Ripe', 'papaya-semi-ripe-1-pc.webp', '1 pc', 75.000000000000000000000000000000, 1, 75.000000000000000000000000000000);
INSERT INTO public.order_items VALUES (7, 1, 6, 6, 'Tomato Hybrid', 'tomato-hybrid-1-kg.webp', '1 kg', 49.000000000000000000000000000000, 1, 49.000000000000000000000000000000);
INSERT INTO public.order_items VALUES (8, 2, 2, 2, 'Apple Royal Gala', 'apple-royal-gala-4-pcs.webp', '4 pcs', 199.000000000000000000000000000000, 3, 597.000000000000000000000000000000);


--
-- Data for Name: product_variants; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.product_variants VALUES (7, 'var_0007', 7, 'KOHLI-0007-ONIONRED-A', '1 kg', 'kg', 55.000000000000000000000000000000, 48.000000000000000000000000000000, 13, 120, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (8, 'var_0008', 8, 'KOHLI-0008-POTATOFRESH-A', '1 kg', 'kg', 45.000000000000000000000000000000, 39.000000000000000000000000000000, 13, 120, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (9, 'var_0009', 9, 'KOHLI-0009-CARROTORANGE-A', '500 g', 'g', 50.000000000000000000000000000000, 44.000000000000000000000000000000, 12, 60, '500 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (10, 'var_0010', 10, 'KOHLI-0010-CUCUMBERGREEN-A', '500 g', 'g', 40.000000000000000000000000000000, 35.000000000000000000000000000000, 12, 60, '500 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (11, 'var_0011', 11, 'KOHLI-0011-CAPSICUMGREEN-A', '250 g', 'g', 40.000000000000000000000000000000, 35.000000000000000000000000000000, 12, 40, '250 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (12, 'var_0012', 12, 'KOHLI-0012-CAULIFLOWER-A', '1 pc', 'pc', 55.000000000000000000000000000000, 49.000000000000000000000000000000, 11, 30, '1 pc', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (13, 'var_0013', 13, 'KOHLI-0013-SPINACHPALAK-A', '1 bunch', 'bunch', 30.000000000000000000000000000000, 25.000000000000000000000000000000, 17, 70, '1 bunch', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (14, 'var_0014', 14, 'KOHLI-0014-CORIANDERLEAVES-A', '100 g', 'g', 20.000000000000000000000000000000, 15.000000000000000000000000000000, 25, 80, '100 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (15, 'var_0015', 15, 'KOHLI-0015-GREENCHILLI-A', '100 g', 'g', 20.000000000000000000000000000000, 16.000000000000000000000000000000, 20, 60, '100 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (17, 'var_0017', 17, 'KOHLI-0017-AMULGOLDFULLCRE-A', '500 ml', 'ml', 38.000000000000000000000000000000, 37.000000000000000000000000000000, 3, 180, '500 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (18, 'var_0018', 18, 'KOHLI-0018-MOTHERDAIRYCURD-A', '400 g', 'g', 45.000000000000000000000000000000, 43.000000000000000000000000000000, 4, 80, '400 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (19, 'var_0019', 19, 'KOHLI-0019-AMULFRESHPANEER-A', '200 g', 'g', 95.000000000000000000000000000000, 90.000000000000000000000000000000, 5, 45, '200 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (20, 'var_0020', 20, 'KOHLI-0020-BRITANNIABROWNBR-A', '400 g', 'g', 55.000000000000000000000000000000, 52.000000000000000000000000000000, 5, 50, '400 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (21, 'var_0021', 21, 'KOHLI-0021-HARVESTGOLDWHITE-A', '350 g', 'g', 45.000000000000000000000000000000, 42.000000000000000000000000000000, 7, 60, '350 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (22, 'var_0022', 22, 'KOHLI-0022-FARMFRESHEGGS-A', '6 pcs', 'pcs', 60.000000000000000000000000000000, 55.000000000000000000000000000000, 8, 80, '6 pcs', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (23, 'var_0023', 23, 'KOHLI-0023-AMULBUTTER-A', '100 g', 'g', 60.000000000000000000000000000000, 58.000000000000000000000000000000, 3, 50, '100 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (24, 'var_0024', 24, 'KOHLI-0024-AMULCHEESESLICES-A', '200 g', 'g', 140.000000000000000000000000000000, 132.000000000000000000000000000000, 6, 35, '200 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (25, 'var_0025', 25, 'KOHLI-0025-AASHIRVAADSHUDHC-A', '5 kg', 'kg', 270.000000000000000000000000000000, 249.000000000000000000000000000000, 8, 70, '5 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (26, 'var_0026', 26, 'KOHLI-0026-FORTUNECHAKKIFRE-A', '5 kg', 'kg', 255.000000000000000000000000000000, 238.000000000000000000000000000000, 7, 50, '5 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (27, 'var_0027', 27, 'KOHLI-0027-INDIAGATEDUBARB-A', '1 kg', 'kg', 210.000000000000000000000000000000, 189.000000000000000000000000000000, 10, 60, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (28, 'var_0028', 28, 'KOHLI-0028-DAAWATROZANABASM-A', '1 kg', 'kg', 180.000000000000000000000000000000, 165.000000000000000000000000000000, 8, 60, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (29, 'var_0029', 29, 'KOHLI-0029-TATASAMPANNTOOR-A', '1 kg', 'kg', 225.000000000000000000000000000000, 205.000000000000000000000000000000, 9, 50, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (30, 'var_0030', 30, 'KOHLI-0030-TATASAMPANNCHANA-A', '500 g', 'g', 95.000000000000000000000000000000, 88.000000000000000000000000000000, 7, 50, '500 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (31, 'var_0031', 31, 'KOHLI-0031-24MANTRAORGANIC-A', '500 g', 'g', 145.000000000000000000000000000000, 132.000000000000000000000000000000, 9, 35, '500 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (32, 'var_0032', 32, 'KOHLI-0032-RAJDHANIBESAN-A', '500 g', 'g', 80.000000000000000000000000000000, 72.000000000000000000000000000000, 10, 45, '500 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (33, 'var_0033', 33, 'KOHLI-0033-TATASALTIODIZED-A', '1 kg', 'kg', 28.000000000000000000000000000000, 27.000000000000000000000000000000, 4, 100, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (34, 'var_0034', 34, 'KOHLI-0034-MADHURPURESUGAR-A', '1 kg', 'kg', 55.000000000000000000000000000000, 52.000000000000000000000000000000, 5, 80, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (35, 'var_0035', 35, 'KOHLI-0035-FORTUNESUNFLOWER-A', '1 L', 'l', 170.000000000000000000000000000000, 154.000000000000000000000000000000, 9, 70, '1 L', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (36, 'var_0036', 36, 'KOHLI-0036-SAFFOLAGOLDOIL-A', '1 L', 'l', 210.000000000000000000000000000000, 195.000000000000000000000000000000, 7, 50, '1 L', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (37, 'var_0037', 37, 'KOHLI-0037-DHARAKACHIGHANI-A', '1 L', 'l', 185.000000000000000000000000000000, 169.000000000000000000000000000000, 9, 50, '1 L', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (38, 'var_0038', 38, 'KOHLI-0038-AMULPUREGHEE-A', '500 ml', 'ml', 330.000000000000000000000000000000, 309.000000000000000000000000000000, 6, 35, '500 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (39, 'var_0039', 39, 'KOHLI-0039-MOTHERDAIRYGHEE-A', '1 L', 'l', 660.000000000000000000000000000000, 625.000000000000000000000000000000, 5, 25, '1 L', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (40, 'var_0040', 40, 'KOHLI-0040-MDHDEGGIMIRCH-A', '100 g', 'g', 86.000000000000000000000000000000, 80.000000000000000000000000000000, 7, 60, '100 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (41, 'var_0041', 41, 'KOHLI-0041-EVERESTTURMERICP-A', '100 g', 'g', 42.000000000000000000000000000000, 39.000000000000000000000000000000, 7, 60, '100 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (42, 'var_0042', 42, 'KOHLI-0042-TATASAMPANNCORIA-A', '100 g', 'g', 42.000000000000000000000000000000, 38.000000000000000000000000000000, 10, 50, '100 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (43, 'var_0043', 43, 'KOHLI-0043-CATCHCUMINSEEDS-A', '100 g', 'g', 72.000000000000000000000000000000, 66.000000000000000000000000000000, 8, 50, '100 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (44, 'var_0044', 44, 'KOHLI-0044-MDHGARAMMASALA-A', '100 g', 'g', 95.000000000000000000000000000000, 88.000000000000000000000000000000, 7, 45, '100 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (45, 'var_0045', 45, 'KOHLI-0045-LAYSCLASSICSALT-A', '52 g', 'g', 20.000000000000000000000000000000, 20.000000000000000000000000000000, 0, 100, '52 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (46, 'var_0046', 46, 'KOHLI-0046-LAYSMAGICMASALA-A', '52 g', 'g', 20.000000000000000000000000000000, 20.000000000000000000000000000000, 0, 100, '52 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (47, 'var_0047', 47, 'KOHLI-0047-KURKUREMASALAMUN-A', '82 g', 'g', 20.000000000000000000000000000000, 20.000000000000000000000000000000, 0, 100, '82 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (48, 'var_0048', 48, 'KOHLI-0048-HALDIRAMALOOBHUJ-A', '200 g', 'g', 55.000000000000000000000000000000, 52.000000000000000000000000000000, 5, 80, '200 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (49, 'var_0049', 49, 'KOHLI-0049-BIKAJIBIKANERIBH-A', '200 g', 'g', 60.000000000000000000000000000000, 55.000000000000000000000000000000, 8, 70, '200 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (50, 'var_0050', 50, 'KOHLI-0050-ACTIIBUTTERPOPC-A', '59 g', 'g', 40.000000000000000000000000000000, 38.000000000000000000000000000000, 5, 50, '59 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (51, 'var_0051', 51, 'KOHLI-0051-TOOYUMMFOXNUTSP-A', '65 g', 'g', 99.000000000000000000000000000000, 89.000000000000000000000000000000, 10, 35, '65 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (52, 'var_0052', 52, 'KOHLI-0052-BALAJIWAFERSSIMP-A', '135 g', 'g', 50.000000000000000000000000000000, 48.000000000000000000000000000000, 4, 60, '135 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (53, 'var_0053', 53, 'KOHLI-0053-UNCLECHIPPSSPICY-A', '50 g', 'g', 20.000000000000000000000000000000, 20.000000000000000000000000000000, 0, 80, '50 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (54, 'var_0054', 54, 'KOHLI-0054-HALDIRAMMOONGDAL-A', '200 g', 'g', 55.000000000000000000000000000000, 52.000000000000000000000000000000, 5, 80, '200 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (55, 'var_0055', 55, 'KOHLI-0055-PARLEGORIGINALB-A', '250 g', 'g', 30.000000000000000000000000000000, 29.000000000000000000000000000000, 3, 100, '250 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (56, 'var_0056', 56, 'KOHLI-0056-BRITANNIAGOODDAY-A', '200 g', 'g', 45.000000000000000000000000000000, 43.000000000000000000000000000000, 4, 80, '200 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (57, 'var_0057', 57, 'KOHLI-0057-SUNFEASTDARKFANT-A', '300 g', 'g', 170.000000000000000000000000000000, 155.000000000000000000000000000000, 9, 45, '300 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (58, 'var_0058', 58, 'KOHLI-0058-CADBURYDAIRYMILK-A', '36 g', 'g', 40.000000000000000000000000000000, 40.000000000000000000000000000000, 0, 80, '36 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (1, 'var_0001', 1, 'KOHLI-0001-FRESHBANANAROBUS-A', '1 dozen', 'pcs', 60.000000000000000000000000000000, 54.000000000000000000000000000000, 10, 79, '1 dozen', true, true, '2026-06-27 18:30:00', '2026-06-29 17:23:49.32');
INSERT INTO public.product_variants VALUES (16, 'var_0016', 16, 'KOHLI-0016-AMULTAAZATONEDM-A', '500 ml', 'ml', 34.000000000000000000000000000000, 33.000000000000000000000000000000, 3, 194, '500 ml', true, true, '2026-06-27 18:30:00', '2026-06-29 17:23:49.323');
INSERT INTO public.product_variants VALUES (3, 'var_0003', 3, 'KOHLI-0003-POMEGRANATE-A', '2 pcs', 'pcs', 180.000000000000000000000000000000, 165.000000000000000000000000000000, 8, 24, '2 pcs', true, true, '2026-06-27 18:30:00', '2026-06-29 17:23:49.328');
INSERT INTO public.product_variants VALUES (5, 'var_0005', 5, 'KOHLI-0005-PAPAYASEMIRIPE-A', '1 pc', 'pc', 85.000000000000000000000000000000, 75.000000000000000000000000000000, 12, 29, '1 pc', true, true, '2026-06-27 18:30:00', '2026-06-29 17:23:49.331');
INSERT INTO public.product_variants VALUES (6, 'var_0006', 6, 'KOHLI-0006-TOMATOHYBRID-A', '1 kg', 'kg', 60.000000000000000000000000000000, 49.000000000000000000000000000000, 18, 99, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-29 17:23:49.337');
INSERT INTO public.product_variants VALUES (2, 'var_0002', 2, 'KOHLI-0002-APPLEROYALGALA-A', '4 pcs', 'pcs', 220.000000000000000000000000000000, 199.000000000000000000000000000000, 10, 40, '4 pcs', true, true, '2026-06-27 18:30:00', '2026-06-30 05:24:43.98');
INSERT INTO public.product_variants VALUES (59, 'var_0059', 59, 'KOHLI-0059-NESTLEKITKAT-A', '37 g', 'g', 30.000000000000000000000000000000, 30.000000000000000000000000000000, 0, 70, '37 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (60, 'var_0060', 60, 'KOHLI-0060-TATATEAPREMIUM-A', '250 g', 'g', 140.000000000000000000000000000000, 129.000000000000000000000000000000, 8, 60, '250 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (61, 'var_0061', 61, 'KOHLI-0061-REDLABELTEA-A', '250 g', 'g', 155.000000000000000000000000000000, 145.000000000000000000000000000000, 6, 50, '250 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (62, 'var_0062', 62, 'KOHLI-0062-NESCAFECLASSICCO-A', '50 g', 'g', 175.000000000000000000000000000000, 165.000000000000000000000000000000, 6, 40, '50 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (63, 'var_0063', 63, 'KOHLI-0063-BRUINSTANTCOFFEE-A', '50 g', 'g', 165.000000000000000000000000000000, 155.000000000000000000000000000000, 6, 35, '50 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (64, 'var_0064', 64, 'KOHLI-0064-COCACOLASOFTDRI-A', '750 ml', 'ml', 40.000000000000000000000000000000, 40.000000000000000000000000000000, 0, 90, '750 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (65, 'var_0065', 65, 'KOHLI-0065-PEPSISOFTDRINK-A', '750 ml', 'ml', 40.000000000000000000000000000000, 40.000000000000000000000000000000, 0, 90, '750 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (66, 'var_0066', 66, 'KOHLI-0066-SPRITELEMONDRINK-A', '750 ml', 'ml', 40.000000000000000000000000000000, 40.000000000000000000000000000000, 0, 90, '750 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (67, 'var_0067', 67, 'KOHLI-0067-REALFRUITPOWERM-A', '1 L', 'l', 125.000000000000000000000000000000, 115.000000000000000000000000000000, 8, 60, '1 L', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (68, 'var_0068', 68, 'KOHLI-0068-TROPICANAORANGED-A', '1 L', 'l', 130.000000000000000000000000000000, 119.000000000000000000000000000000, 8, 55, '1 L', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (69, 'var_0069', 69, 'KOHLI-0069-BISLERIMINERALWA-A', '1 L', 'l', 20.000000000000000000000000000000, 20.000000000000000000000000000000, 0, 100, '1 L', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (70, 'var_0070', 70, 'KOHLI-0070-REDBULLENERGYDR-A', '250 ml', 'ml', 125.000000000000000000000000000000, 119.000000000000000000000000000000, 5, 35, '250 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (71, 'var_0071', 71, 'KOHLI-0071-PAPERBOATAAMRAS-A', '200 ml', 'ml', 30.000000000000000000000000000000, 28.000000000000000000000000000000, 7, 60, '200 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (72, 'var_0072', 72, 'KOHLI-0072-MAGGI2MINUTENOO-A', '70 g', 'g', 15.000000000000000000000000000000, 15.000000000000000000000000000000, 0, 120, '70 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (73, 'var_0073', 73, 'KOHLI-0073-SUNFEASTYIPPEENO-A', '70 g', 'g', 15.000000000000000000000000000000, 15.000000000000000000000000000000, 0, 100, '70 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (74, 'var_0074', 74, 'KOHLI-0074-WEIKFIELDPENNEPA-A', '400 g', 'g', 125.000000000000000000000000000000, 115.000000000000000000000000000000, 8, 40, '400 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (75, 'var_0075', 75, 'KOHLI-0075-KNORRSWEETCORNS-A', '44 g', 'g', 65.000000000000000000000000000000, 60.000000000000000000000000000000, 8, 45, '44 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (76, 'var_0076', 76, 'KOHLI-0076-MCCAINFRENCHFRIE-A', '420 g', 'g', 190.000000000000000000000000000000, 175.000000000000000000000000000000, 8, 30, '420 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (77, 'var_0077', 77, 'KOHLI-0077-MCCAINALOOTIKKI-A', '400 g', 'g', 145.000000000000000000000000000000, 135.000000000000000000000000000000, 7, 30, '400 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (78, 'var_0078', 78, 'KOHLI-0078-SAFALFROZENGREEN-A', '500 g', 'g', 120.000000000000000000000000000000, 110.000000000000000000000000000000, 8, 40, '500 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (79, 'var_0079', 79, 'KOHLI-0079-KELLOGGSCORNFLA-A', '475 g', 'g', 235.000000000000000000000000000000, 215.000000000000000000000000000000, 9, 40, '475 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (80, 'var_0080', 80, 'KOHLI-0080-QUAKEROATS-A', '1 kg', 'kg', 210.000000000000000000000000000000, 195.000000000000000000000000000000, 7, 50, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (81, 'var_0081', 81, 'KOHLI-0081-KISSANMIXEDFRUIT-A', '500 g', 'g', 170.000000000000000000000000000000, 155.000000000000000000000000000000, 9, 35, '500 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (82, 'var_0082', 82, 'KOHLI-0082-NUTELLAHAZELNUTS-A', '350 g', 'g', 399.000000000000000000000000000000, 375.000000000000000000000000000000, 6, 25, '350 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (83, 'var_0083', 83, 'KOHLI-0083-SURFEXCELEASYWA-A', '1 kg', 'kg', 135.000000000000000000000000000000, 125.000000000000000000000000000000, 7, 70, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (84, 'var_0084', 84, 'KOHLI-0084-ARIELMATICTOPLO-A', '1 kg', 'kg', 245.000000000000000000000000000000, 229.000000000000000000000000000000, 7, 45, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (85, 'var_0085', 85, 'KOHLI-0085-TIDEPLUSDOUBLEP-A', '1 kg', 'kg', 150.000000000000000000000000000000, 139.000000000000000000000000000000, 7, 55, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (86, 'var_0086', 86, 'KOHLI-0086-COMFORTFABRICCON-A', '860 ml', 'ml', 235.000000000000000000000000000000, 215.000000000000000000000000000000, 9, 40, '860 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (87, 'var_0087', 87, 'KOHLI-0087-VIMDISHWASHBAR-A', '300 g', 'g', 30.000000000000000000000000000000, 29.000000000000000000000000000000, 3, 80, '300 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (88, 'var_0088', 88, 'KOHLI-0088-VIMDISHWASHLIQUI-A', '750 ml', 'ml', 170.000000000000000000000000000000, 155.000000000000000000000000000000, 9, 50, '750 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (89, 'var_0089', 89, 'KOHLI-0089-LIZOLCITRUSFLOOR-A', '1 L', 'l', 210.000000000000000000000000000000, 195.000000000000000000000000000000, 7, 45, '1 L', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (90, 'var_0090', 90, 'KOHLI-0090-HARPICPOWERPLUS-A', '1 L', 'l', 220.000000000000000000000000000000, 199.000000000000000000000000000000, 10, 45, '1 L', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (91, 'var_0091', 91, 'KOHLI-0091-DETTOLANTISEPTIC-A', '550 ml', 'ml', 210.000000000000000000000000000000, 195.000000000000000000000000000000, 7, 40, '550 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (92, 'var_0092', 92, 'KOHLI-0092-COLGATESTRONGTEE-A', '200 g', 'g', 115.000000000000000000000000000000, 105.000000000000000000000000000000, 9, 70, '200 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (93, 'var_0093', 93, 'KOHLI-0093-DOVECREAMBEAUTY-A', '125 g', 'g', 92.000000000000000000000000000000, 86.000000000000000000000000000000, 7, 60, '125 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (94, 'var_0094', 94, 'KOHLI-0094-PEARSPUREGENTLE-A', '125 g', 'g', 84.000000000000000000000000000000, 78.000000000000000000000000000000, 7, 55, '125 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (95, 'var_0095', 95, 'KOHLI-0095-CLINICPLUSSTRONG-A', '340 ml', 'ml', 210.000000000000000000000000000000, 195.000000000000000000000000000000, 7, 45, '340 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (96, 'var_0096', 96, 'KOHLI-0096-HEADSHOULDERSANT-A', '340 ml', 'ml', 335.000000000000000000000000000000, 315.000000000000000000000000000000, 6, 35, '340 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (97, 'var_0097', 97, 'KOHLI-0097-NIVEASOFTLIGHTM-A', '200 ml', 'ml', 399.000000000000000000000000000000, 365.000000000000000000000000000000, 9, 30, '200 ml', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (98, 'var_0098', 98, 'KOHLI-0098-DABURREDTOOTHPAS-A', '200 g', 'g', 120.000000000000000000000000000000, 110.000000000000000000000000000000, 8, 50, '200 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (99, 'var_0099', 99, 'KOHLI-0099-PAMPERSACTIVEBAB-A', 'Medium 20 pcs', 'pcs', 399.000000000000000000000000000000, 365.000000000000000000000000000000, 9, 25, 'Medium 20 pcs', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (100, 'var_0100', 100, 'KOHLI-0100-CERELACWHEATCERE-A', '300 g', 'g', 285.000000000000000000000000000000, 269.000000000000000000000000000000, 6, 25, '300 g', true, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_variants VALUES (4, 'var_0004', 4, 'KOHLI-0004-ORANGENAGPUR-A', '1 kg', 'kg', 120.000000000000000000000000000000, 109.000000000000000000000000000000, 9, 37, '1 kg', true, true, '2026-06-27 18:30:00', '2026-06-29 17:23:49.284');


--
-- Data for Name: product_images; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.product_images VALUES (9, 'img_0009', 9, 9, 'carrot-orange-500-g.webp', 'thumb_carrot-orange-500-g.webp', 'Carrot Orange 500 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (10, 'img_0010', 10, 10, 'cucumber-green-500-g.webp', 'thumb_cucumber-green-500-g.webp', 'Cucumber Green 500 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (11, 'img_0011', 11, 11, 'capsicum-green-250-g.webp', 'thumb_capsicum-green-250-g.webp', 'Capsicum Green 250 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (12, 'img_0012', 12, 12, 'cauliflower-1-pc.webp', 'thumb_cauliflower-1-pc.webp', 'Cauliflower 1 pc product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (13, 'img_0013', 13, 13, 'spinach-palak-1-bunch.webp', 'thumb_spinach-palak-1-bunch.webp', 'Spinach Palak 1 bunch product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (14, 'img_0014', 14, 14, 'coriander-leaves-100-g.webp', 'thumb_coriander-leaves-100-g.webp', 'Coriander Leaves 100 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (15, 'img_0015', 15, 15, 'green-chilli-100-g.webp', 'thumb_green-chilli-100-g.webp', 'Green Chilli 100 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (16, 'img_0016', 16, 16, 'amul-taaza-toned-milk-500-ml.webp', 'thumb_amul-taaza-toned-milk-500-ml.webp', 'Amul Taaza Toned Milk 500 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (17, 'img_0017', 17, 17, 'amul-gold-full-cream-milk-500-ml.webp', 'thumb_amul-gold-full-cream-milk-500-ml.webp', 'Amul Gold Full Cream Milk 500 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (18, 'img_0018', 18, 18, 'mother-dairy-curd-400-g.webp', 'thumb_mother-dairy-curd-400-g.webp', 'Mother Dairy Curd 400 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (19, 'img_0019', 19, 19, 'amul-fresh-paneer-200-g.webp', 'thumb_amul-fresh-paneer-200-g.webp', 'Amul Fresh Paneer 200 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (20, 'img_0020', 20, 20, 'britannia-brown-bread-400-g.webp', 'thumb_britannia-brown-bread-400-g.webp', 'Britannia Brown Bread 400 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (21, 'img_0021', 21, 21, 'harvest-gold-white-bread-350-g.webp', 'thumb_harvest-gold-white-bread-350-g.webp', 'Harvest Gold White Bread 350 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (22, 'img_0022', 22, 22, 'farm-fresh-eggs-6-pcs.webp', 'thumb_farm-fresh-eggs-6-pcs.webp', 'Farm Fresh Eggs 6 pcs product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (23, 'img_0023', 23, 23, 'amul-butter-100-g.webp', 'thumb_amul-butter-100-g.webp', 'Amul Butter 100 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (24, 'img_0024', 24, 24, 'amul-cheese-slices-200-g.webp', 'thumb_amul-cheese-slices-200-g.webp', 'Amul Cheese Slices 200 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (25, 'img_0025', 25, 25, 'aashirvaad-shudh-chakki-atta-5-kg.webp', 'thumb_aashirvaad-shudh-chakki-atta-5-kg.webp', 'Aashirvaad Shudh Chakki Atta 5 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (26, 'img_0026', 26, 26, 'fortune-chakki-fresh-atta-5-kg.webp', 'thumb_fortune-chakki-fresh-atta-5-kg.webp', 'Fortune Chakki Fresh Atta 5 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (27, 'img_0027', 27, 27, 'india-gate-dubar-basmati-rice-1-kg.webp', 'thumb_india-gate-dubar-basmati-rice-1-kg.webp', 'India Gate Dubar Basmati Rice 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (28, 'img_0028', 28, 28, 'daawat-rozana-basmati-rice-1-kg.webp', 'thumb_daawat-rozana-basmati-rice-1-kg.webp', 'Daawat Rozana Basmati Rice 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (29, 'img_0029', 29, 29, 'tata-sampann-toor-dal-1-kg.webp', 'thumb_tata-sampann-toor-dal-1-kg.webp', 'Tata Sampann Toor Dal 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (30, 'img_0030', 30, 30, 'tata-sampann-chana-dal-500-g.webp', 'thumb_tata-sampann-chana-dal-500-g.webp', 'Tata Sampann Chana Dal 500 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (31, 'img_0031', 31, 31, '24-mantra-organic-moong-dal-500-g.webp', 'thumb_24-mantra-organic-moong-dal-500-g.webp', '24 Mantra Organic Moong Dal 500 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (32, 'img_0032', 32, 32, 'rajdhani-besan-500-g.webp', 'thumb_rajdhani-besan-500-g.webp', 'Rajdhani Besan 500 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (33, 'img_0033', 33, 33, 'tata-salt-iodized-1-kg.webp', 'thumb_tata-salt-iodized-1-kg.webp', 'Tata Salt Iodized 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (34, 'img_0034', 34, 34, 'madhur-pure-sugar-1-kg.webp', 'thumb_madhur-pure-sugar-1-kg.webp', 'Madhur Pure Sugar 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (35, 'img_0035', 35, 35, 'fortune-sunflower-oil-1-l.webp', 'thumb_fortune-sunflower-oil-1-l.webp', 'Fortune Sunflower Oil 1 L product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (36, 'img_0036', 36, 36, 'saffola-gold-oil-1-l.webp', 'thumb_saffola-gold-oil-1-l.webp', 'Saffola Gold Oil 1 L product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (37, 'img_0037', 37, 37, 'dhara-kachi-ghani-mustard-oil-1-l.webp', 'thumb_dhara-kachi-ghani-mustard-oil-1-l.webp', 'Dhara Kachi Ghani Mustard Oil 1 L product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (38, 'img_0038', 38, 38, 'amul-pure-ghee-500-ml.webp', 'thumb_amul-pure-ghee-500-ml.webp', 'Amul Pure Ghee 500 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (39, 'img_0039', 39, 39, 'mother-dairy-ghee-1-l.webp', 'thumb_mother-dairy-ghee-1-l.webp', 'Mother Dairy Ghee 1 L product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (40, 'img_0040', 40, 40, 'mdh-deggi-mirch-100-g.webp', 'thumb_mdh-deggi-mirch-100-g.webp', 'MDH Deggi Mirch 100 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (41, 'img_0041', 41, 41, 'everest-turmeric-powder-100-g.webp', 'thumb_everest-turmeric-powder-100-g.webp', 'Everest Turmeric Powder 100 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (42, 'img_0042', 42, 42, 'tata-sampann-coriander-powder-100-g.webp', 'thumb_tata-sampann-coriander-powder-100-g.webp', 'Tata Sampann Coriander Powder 100 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (43, 'img_0043', 43, 43, 'catch-cumin-seeds-100-g.webp', 'thumb_catch-cumin-seeds-100-g.webp', 'Catch Cumin Seeds 100 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (44, 'img_0044', 44, 44, 'mdh-garam-masala-100-g.webp', 'thumb_mdh-garam-masala-100-g.webp', 'MDH Garam Masala 100 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (2, 'img_0002', 2, 2, 'apple-royal-gala-4-pcs.webp', 'apple-royal-gala-4-pcs.webp', 'Apple Royal Gala 4 pcs product image', 1, true, '2026-06-27 18:30:00', '2026-06-29 06:34:38.402');
INSERT INTO public.product_images VALUES (3, 'img_0003', 3, 3, 'pomegranate-2-pcs.webp', 'pomegranate-2-pcs.webp', 'Pomegranate 2 pcs product image', 1, true, '2026-06-27 18:30:00', '2026-06-29 06:34:38.404');
INSERT INTO public.product_images VALUES (4, 'img_0004', 4, 4, 'orange-nagpur-1-kg.webp', 'orange-nagpur-1-kg.webp', 'Orange Nagpur 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-29 06:34:38.406');
INSERT INTO public.product_images VALUES (5, 'img_0005', 5, 5, 'papaya-semi-ripe-1-pc.webp', 'papaya-semi-ripe-1-pc.webp', 'Papaya Semi Ripe 1 pc product image', 1, true, '2026-06-27 18:30:00', '2026-06-29 06:34:38.408');
INSERT INTO public.product_images VALUES (8, 'img_0008', 8, 8, 'potato-fresh-1-kg.webp', 'potato-fresh-1-kg.webp', 'Potato Fresh 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-29 06:34:38.411');
INSERT INTO public.product_images VALUES (7, 'img_0007', 7, 7, 'onion-red-1-kg.webp', 'onion-red-1-kg.webp', 'Onion Red 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-29 06:34:38.415');
INSERT INTO public.product_images VALUES (6, 'img_0006', 6, 6, 'tomato-hybrid-1-kg.webp', 'tomato-hybrid-1-kg.webp', 'Tomato Hybrid 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-29 06:34:38.417');
INSERT INTO public.product_images VALUES (45, 'img_0045', 45, 45, 'lay-s-classic-salted-chips-52-g.webp', 'thumb_lay-s-classic-salted-chips-52-g.webp', 'Lay''s Classic Salted Chips 52 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (46, 'img_0046', 46, 46, 'lay-s-magic-masala-chips-52-g.webp', 'thumb_lay-s-magic-masala-chips-52-g.webp', 'Lay''s Magic Masala Chips 52 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (47, 'img_0047', 47, 47, 'kurkure-masala-munch-82-g.webp', 'thumb_kurkure-masala-munch-82-g.webp', 'Kurkure Masala Munch 82 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (48, 'img_0048', 48, 48, 'haldiram-aloo-bhujia-200-g.webp', 'thumb_haldiram-aloo-bhujia-200-g.webp', 'Haldiram Aloo Bhujia 200 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (49, 'img_0049', 49, 49, 'bikaji-bikaneri-bhujia-200-g.webp', 'thumb_bikaji-bikaneri-bhujia-200-g.webp', 'Bikaji Bikaneri Bhujia 200 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (50, 'img_0050', 50, 50, 'act-ii-butter-popcorn-59-g.webp', 'thumb_act-ii-butter-popcorn-59-g.webp', 'Act II Butter Popcorn 59 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (51, 'img_0051', 51, 51, 'too-yumm-foxnuts-pudina-65-g.webp', 'thumb_too-yumm-foxnuts-pudina-65-g.webp', 'Too Yumm Foxnuts Pudina 65 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (52, 'img_0052', 52, 52, 'balaji-wafers-simply-salted-135-g.webp', 'thumb_balaji-wafers-simply-salted-135-g.webp', 'Balaji Wafers Simply Salted 135 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (53, 'img_0053', 53, 53, 'uncle-chipps-spicy-treat-50-g.webp', 'thumb_uncle-chipps-spicy-treat-50-g.webp', 'Uncle Chipps Spicy Treat 50 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (54, 'img_0054', 54, 54, 'haldiram-moong-dal-200-g.webp', 'thumb_haldiram-moong-dal-200-g.webp', 'Haldiram Moong Dal 200 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (55, 'img_0055', 55, 55, 'parle-g-original-biscuits-250-g.webp', 'thumb_parle-g-original-biscuits-250-g.webp', 'Parle-G Original Biscuits 250 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (56, 'img_0056', 56, 56, 'britannia-good-day-cashew-200-g.webp', 'thumb_britannia-good-day-cashew-200-g.webp', 'Britannia Good Day Cashew 200 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (57, 'img_0057', 57, 57, 'sunfeast-dark-fantasy-choco-fills-300-g.webp', 'thumb_sunfeast-dark-fantasy-choco-fills-300-g.webp', 'Sunfeast Dark Fantasy Choco Fills 300 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (58, 'img_0058', 58, 58, 'cadbury-dairy-milk-36-g.webp', 'thumb_cadbury-dairy-milk-36-g.webp', 'Cadbury Dairy Milk 36 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (59, 'img_0059', 59, 59, 'nestle-kitkat-37-g.webp', 'thumb_nestle-kitkat-37-g.webp', 'Nestle KitKat 37 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (60, 'img_0060', 60, 60, 'tata-tea-premium-250-g.webp', 'thumb_tata-tea-premium-250-g.webp', 'Tata Tea Premium 250 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (61, 'img_0061', 61, 61, 'red-label-tea-250-g.webp', 'thumb_red-label-tea-250-g.webp', 'Red Label Tea 250 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (62, 'img_0062', 62, 62, 'nescafe-classic-coffee-50-g.webp', 'thumb_nescafe-classic-coffee-50-g.webp', 'Nescafe Classic Coffee 50 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (63, 'img_0063', 63, 63, 'bru-instant-coffee-50-g.webp', 'thumb_bru-instant-coffee-50-g.webp', 'Bru Instant Coffee 50 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (64, 'img_0064', 64, 64, 'coca-cola-soft-drink-750-ml.webp', 'thumb_coca-cola-soft-drink-750-ml.webp', 'Coca-Cola Soft Drink 750 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (65, 'img_0065', 65, 65, 'pepsi-soft-drink-750-ml.webp', 'thumb_pepsi-soft-drink-750-ml.webp', 'Pepsi Soft Drink 750 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (66, 'img_0066', 66, 66, 'sprite-lemon-drink-750-ml.webp', 'thumb_sprite-lemon-drink-750-ml.webp', 'Sprite Lemon Drink 750 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (67, 'img_0067', 67, 67, 'real-fruit-power-mixed-fruit-1-l.webp', 'thumb_real-fruit-power-mixed-fruit-1-l.webp', 'Real Fruit Power Mixed Fruit 1 L product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (68, 'img_0068', 68, 68, 'tropicana-orange-delight-1-l.webp', 'thumb_tropicana-orange-delight-1-l.webp', 'Tropicana Orange Delight 1 L product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (69, 'img_0069', 69, 69, 'bisleri-mineral-water-1-l.webp', 'thumb_bisleri-mineral-water-1-l.webp', 'Bisleri Mineral Water 1 L product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (70, 'img_0070', 70, 70, 'red-bull-energy-drink-250-ml.webp', 'thumb_red-bull-energy-drink-250-ml.webp', 'Red Bull Energy Drink 250 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (71, 'img_0071', 71, 71, 'paper-boat-aamras-200-ml.webp', 'thumb_paper-boat-aamras-200-ml.webp', 'Paper Boat Aamras 200 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (72, 'img_0072', 72, 72, 'maggi-2-minute-noodles-70-g.webp', 'thumb_maggi-2-minute-noodles-70-g.webp', 'Maggi 2-Minute Noodles 70 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (73, 'img_0073', 73, 73, 'sunfeast-yippee-noodles-70-g.webp', 'thumb_sunfeast-yippee-noodles-70-g.webp', 'Sunfeast Yippee Noodles 70 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (74, 'img_0074', 74, 74, 'weikfield-penne-pasta-400-g.webp', 'thumb_weikfield-penne-pasta-400-g.webp', 'Weikfield Penne Pasta 400 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (75, 'img_0075', 75, 75, 'knorr-sweet-corn-soup-44-g.webp', 'thumb_knorr-sweet-corn-soup-44-g.webp', 'Knorr Sweet Corn Soup 44 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (76, 'img_0076', 76, 76, 'mccain-french-fries-420-g.webp', 'thumb_mccain-french-fries-420-g.webp', 'McCain French Fries 420 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (77, 'img_0077', 77, 77, 'mccain-aloo-tikki-400-g.webp', 'thumb_mccain-aloo-tikki-400-g.webp', 'McCain Aloo Tikki 400 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (78, 'img_0078', 78, 78, 'safal-frozen-green-peas-500-g.webp', 'thumb_safal-frozen-green-peas-500-g.webp', 'Safal Frozen Green Peas 500 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (79, 'img_0079', 79, 79, 'kellogg-s-corn-flakes-475-g.webp', 'thumb_kellogg-s-corn-flakes-475-g.webp', 'Kellogg''s Corn Flakes 475 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (80, 'img_0080', 80, 80, 'quaker-oats-1-kg.webp', 'thumb_quaker-oats-1-kg.webp', 'Quaker Oats 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (81, 'img_0081', 81, 81, 'kissan-mixed-fruit-jam-500-g.webp', 'thumb_kissan-mixed-fruit-jam-500-g.webp', 'Kissan Mixed Fruit Jam 500 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (82, 'img_0082', 82, 82, 'nutella-hazelnut-spread-350-g.webp', 'thumb_nutella-hazelnut-spread-350-g.webp', 'Nutella Hazelnut Spread 350 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (83, 'img_0083', 83, 83, 'surf-excel-easy-wash-1-kg.webp', 'thumb_surf-excel-easy-wash-1-kg.webp', 'Surf Excel Easy Wash 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (84, 'img_0084', 84, 84, 'ariel-matic-top-load-1-kg.webp', 'thumb_ariel-matic-top-load-1-kg.webp', 'Ariel Matic Top Load 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (85, 'img_0085', 85, 85, 'tide-plus-double-power-1-kg.webp', 'thumb_tide-plus-double-power-1-kg.webp', 'Tide Plus Double Power 1 kg product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (86, 'img_0086', 86, 86, 'comfort-fabric-conditioner-860-ml.webp', 'thumb_comfort-fabric-conditioner-860-ml.webp', 'Comfort Fabric Conditioner 860 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (87, 'img_0087', 87, 87, 'vim-dishwash-bar-300-g.webp', 'thumb_vim-dishwash-bar-300-g.webp', 'Vim Dishwash Bar 300 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (88, 'img_0088', 88, 88, 'vim-dishwash-liquid-750-ml.webp', 'thumb_vim-dishwash-liquid-750-ml.webp', 'Vim Dishwash Liquid 750 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (89, 'img_0089', 89, 89, 'lizol-citrus-floor-cleaner-1-l.webp', 'thumb_lizol-citrus-floor-cleaner-1-l.webp', 'Lizol Citrus Floor Cleaner 1 L product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (90, 'img_0090', 90, 90, 'harpic-power-plus-toilet-cleaner-1-l.webp', 'thumb_harpic-power-plus-toilet-cleaner-1-l.webp', 'Harpic Power Plus Toilet Cleaner 1 L product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (91, 'img_0091', 91, 91, 'dettol-antiseptic-liquid-550-ml.webp', 'thumb_dettol-antiseptic-liquid-550-ml.webp', 'Dettol Antiseptic Liquid 550 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (92, 'img_0092', 92, 92, 'colgate-strong-teeth-toothpaste-200-g.webp', 'thumb_colgate-strong-teeth-toothpaste-200-g.webp', 'Colgate Strong Teeth Toothpaste 200 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (93, 'img_0093', 93, 93, 'dove-cream-beauty-bathing-bar-125-g.webp', 'thumb_dove-cream-beauty-bathing-bar-125-g.webp', 'Dove Cream Beauty Bathing Bar 125 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (94, 'img_0094', 94, 94, 'pears-pure-gentle-soap-125-g.webp', 'thumb_pears-pure-gentle-soap-125-g.webp', 'Pears Pure & Gentle Soap 125 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (95, 'img_0095', 95, 95, 'clinic-plus-strong-long-shampoo-340-ml.webp', 'thumb_clinic-plus-strong-long-shampoo-340-ml.webp', 'Clinic Plus Strong & Long Shampoo 340 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (96, 'img_0096', 96, 96, 'head-shoulders-anti-dandruff-shampoo-340-ml.webp', 'thumb_head-shoulders-anti-dandruff-shampoo-340-ml.webp', 'Head & Shoulders Anti Dandruff Shampoo 340 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (97, 'img_0097', 97, 97, 'nivea-soft-light-moisturiser-200-ml.webp', 'thumb_nivea-soft-light-moisturiser-200-ml.webp', 'Nivea Soft Light Moisturiser 200 ml product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (98, 'img_0098', 98, 98, 'dabur-red-toothpaste-200-g.webp', 'thumb_dabur-red-toothpaste-200-g.webp', 'Dabur Red Toothpaste 200 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (99, 'img_0099', 99, 99, 'pampers-active-baby-diapers-medium-20-pcs.webp', 'thumb_pampers-active-baby-diapers-medium-20-pcs.webp', 'Pampers Active Baby Diapers Medium 20 pcs product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (100, 'img_0100', 100, 100, 'cerelac-wheat-cereal-300-g.webp', 'thumb_cerelac-wheat-cereal-300-g.webp', 'Cerelac Wheat Cereal 300 g product image', 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.product_images VALUES (1, 'img_0001', 1, 1, 'fresh-banana-robusta-1-dozen.webp', 'fresh-banana-robusta-1-dozen.webp', 'Fresh Banana Robusta 1 dozen product image', 1, true, '2026-06-27 18:30:00', '2026-06-29 06:34:38.375');


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: top_picks; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.top_picks VALUES (1, 'tp_0001', 'Top Picks', 'top-picks', 2, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (2, 'tp_0002', 'Top Picks', 'top-picks', 19, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (3, 'tp_0003', 'Top Picks', 'top-picks', 24, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (4, 'tp_0004', 'Top Picks', 'top-picks', 27, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (5, 'tp_0005', 'Top Picks', 'top-picks', 36, 5, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (6, 'tp_0006', 'Top Picks', 'top-picks', 39, 6, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (7, 'tp_0007', 'Top Picks', 'top-picks', 43, 7, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (8, 'tp_0008', 'Top Picks', 'top-picks', 48, 8, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (9, 'tp_0009', 'Top Picks', 'top-picks', 51, 9, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (10, 'tp_0010', 'Top Picks', 'top-picks', 54, 10, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (11, 'tp_0011', 'Top Picks', 'top-picks', 57, 11, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (12, 'tp_0012', 'Top Picks', 'top-picks', 61, 12, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (13, 'tp_0013', 'Top Picks', 'top-picks', 66, 13, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (14, 'tp_0014', 'Top Picks', 'top-picks', 67, 14, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (15, 'tp_0015', 'Top Picks', 'top-picks', 70, 15, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (16, 'tp_0016', 'Top Picks', 'top-picks', 74, 16, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (17, 'tp_0017', 'Top Picks', 'top-picks', 76, 17, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (18, 'tp_0018', 'Top Picks', 'top-picks', 79, 18, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (19, 'tp_0019', 'Top Picks', 'top-picks', 82, 19, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (20, 'tp_0020', 'Top Picks', 'top-picks', 84, 20, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (21, 'tp_0021', 'Top Picks', 'top-picks', 86, 21, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (22, 'tp_0022', 'Top Picks', 'top-picks', 88, 22, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (23, 'tp_0023', 'Top Picks', 'top-picks', 91, 23, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (24, 'tp_0024', 'Top Picks', 'top-picks', 93, 24, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (25, 'tp_0025', 'Top Picks', 'top-picks', 94, 25, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (26, 'tp_0026', 'Top Picks', 'top-picks', 96, 26, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (27, 'tp_0027', 'Top Picks', 'top-picks', 97, 27, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (28, 'tp_0028', 'Top Picks', 'top-picks', 99, 28, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (29, 'tp_0029', 'Best Sellers', 'best-sellers', 1, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (30, 'tp_0030', 'Best Sellers', 'best-sellers', 16, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (31, 'tp_0031', 'Best Sellers', 'best-sellers', 23, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (32, 'tp_0032', 'Best Sellers', 'best-sellers', 25, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (33, 'tp_0033', 'Best Sellers', 'best-sellers', 38, 5, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (34, 'tp_0034', 'Best Sellers', 'best-sellers', 44, 6, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (35, 'tp_0035', 'Best Sellers', 'best-sellers', 45, 7, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (36, 'tp_0036', 'Best Sellers', 'best-sellers', 46, 8, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (37, 'tp_0037', 'Best Sellers', 'best-sellers', 47, 9, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (38, 'tp_0038', 'Best Sellers', 'best-sellers', 53, 10, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (39, 'tp_0039', 'Best Sellers', 'best-sellers', 55, 11, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (40, 'tp_0040', 'Best Sellers', 'best-sellers', 56, 12, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (41, 'tp_0041', 'Best Sellers', 'best-sellers', 58, 13, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (42, 'tp_0042', 'Best Sellers', 'best-sellers', 59, 14, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (43, 'tp_0043', 'Best Sellers', 'best-sellers', 62, 15, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (44, 'tp_0044', 'Best Sellers', 'best-sellers', 64, 16, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (45, 'tp_0045', 'Best Sellers', 'best-sellers', 65, 17, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (46, 'tp_0046', 'Best Sellers', 'best-sellers', 72, 18, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (47, 'tp_0047', 'Best Sellers', 'best-sellers', 73, 19, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (48, 'tp_0048', 'Best Sellers', 'best-sellers', 81, 20, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (49, 'tp_0049', 'Best Sellers', 'best-sellers', 89, 21, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (50, 'tp_0050', 'Best Sellers', 'best-sellers', 90, 22, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (51, 'tp_0051', 'Daily Essentials', 'daily-essentials', 1, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (52, 'tp_0052', 'Daily Essentials', 'daily-essentials', 6, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (53, 'tp_0053', 'Daily Essentials', 'daily-essentials', 7, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (54, 'tp_0054', 'Daily Essentials', 'daily-essentials', 8, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (55, 'tp_0055', 'Daily Essentials', 'daily-essentials', 16, 5, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (56, 'tp_0056', 'Daily Essentials', 'daily-essentials', 17, 6, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (57, 'tp_0057', 'Daily Essentials', 'daily-essentials', 18, 7, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (58, 'tp_0058', 'Daily Essentials', 'daily-essentials', 20, 8, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (59, 'tp_0059', 'Daily Essentials', 'daily-essentials', 21, 9, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (60, 'tp_0060', 'Daily Essentials', 'daily-essentials', 22, 10, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (61, 'tp_0061', 'Daily Essentials', 'daily-essentials', 25, 11, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (62, 'tp_0062', 'Daily Essentials', 'daily-essentials', 28, 12, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (63, 'tp_0063', 'Daily Essentials', 'daily-essentials', 29, 13, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (64, 'tp_0064', 'Daily Essentials', 'daily-essentials', 30, 14, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (65, 'tp_0065', 'Daily Essentials', 'daily-essentials', 33, 15, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (66, 'tp_0066', 'Daily Essentials', 'daily-essentials', 34, 16, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (67, 'tp_0067', 'Daily Essentials', 'daily-essentials', 35, 17, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (68, 'tp_0068', 'Daily Essentials', 'daily-essentials', 37, 18, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (69, 'tp_0069', 'Daily Essentials', 'daily-essentials', 40, 19, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (70, 'tp_0070', 'Daily Essentials', 'daily-essentials', 41, 20, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (71, 'tp_0071', 'Daily Essentials', 'daily-essentials', 42, 21, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (72, 'tp_0072', 'Daily Essentials', 'daily-essentials', 55, 22, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (73, 'tp_0073', 'Daily Essentials', 'daily-essentials', 60, 23, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (74, 'tp_0074', 'Daily Essentials', 'daily-essentials', 69, 24, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (75, 'tp_0075', 'Daily Essentials', 'daily-essentials', 72, 25, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (76, 'tp_0076', 'Daily Essentials', 'daily-essentials', 78, 26, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (77, 'tp_0077', 'Daily Essentials', 'daily-essentials', 80, 27, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (78, 'tp_0078', 'Daily Essentials', 'daily-essentials', 83, 28, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (79, 'tp_0079', 'Daily Essentials', 'daily-essentials', 87, 29, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (80, 'tp_0080', 'Daily Essentials', 'daily-essentials', 92, 30, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (81, 'tp_0081', 'Daily Essentials', 'daily-essentials', 95, 31, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (82, 'tp_0082', 'Daily Essentials', 'daily-essentials', 98, 32, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (83, 'tp_0083', 'Daily Essentials', 'daily-essentials', 100, 33, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (84, 'tp_0084', 'Fresh Fruits', 'fresh-fruits', 1, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (85, 'tp_0085', 'Fresh Fruits', 'fresh-fruits', 2, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (86, 'tp_0086', 'Fresh Fruits', 'fresh-fruits', 3, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (87, 'tp_0087', 'Fresh Fruits', 'fresh-fruits', 4, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (88, 'tp_0088', 'Fresh Fruits', 'fresh-fruits', 5, 5, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (89, 'tp_0089', 'Fresh Vegetables', 'fresh-vegetables', 6, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (90, 'tp_0090', 'Fresh Vegetables', 'fresh-vegetables', 7, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (91, 'tp_0091', 'Fresh Vegetables', 'fresh-vegetables', 8, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (92, 'tp_0092', 'Fresh Vegetables', 'fresh-vegetables', 9, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (93, 'tp_0093', 'Fresh Vegetables', 'fresh-vegetables', 10, 5, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (94, 'tp_0094', 'Fresh Vegetables', 'fresh-vegetables', 11, 6, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (95, 'tp_0095', 'Fresh Vegetables', 'fresh-vegetables', 12, 7, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (96, 'tp_0096', 'Fresh Vegetables', 'fresh-vegetables', 13, 8, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (97, 'tp_0097', 'Fresh Vegetables', 'fresh-vegetables', 14, 9, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (98, 'tp_0098', 'Fresh Vegetables', 'fresh-vegetables', 15, 10, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (99, 'tp_0099', 'Milk & Bread', 'milk-bread', 16, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (100, 'tp_0100', 'Milk & Bread', 'milk-bread', 17, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (101, 'tp_0101', 'Milk & Bread', 'milk-bread', 20, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (102, 'tp_0102', 'Milk & Bread', 'milk-bread', 21, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (103, 'tp_0103', 'Breakfast', 'breakfast', 79, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (104, 'tp_0104', 'Breakfast', 'breakfast', 80, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (105, 'tp_0105', 'Breakfast', 'breakfast', 81, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (106, 'tp_0106', 'Breakfast', 'breakfast', 82, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (107, 'tp_0107', 'Under ₹99', 'under-99', 1, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (108, 'tp_0108', 'Under ₹99', 'under-99', 5, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (109, 'tp_0109', 'Under ₹99', 'under-99', 6, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (110, 'tp_0110', 'Under ₹99', 'under-99', 7, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (111, 'tp_0111', 'Under ₹99', 'under-99', 8, 5, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (112, 'tp_0112', 'Under ₹99', 'under-99', 9, 6, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (113, 'tp_0113', 'Under ₹99', 'under-99', 10, 7, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (114, 'tp_0114', 'Under ₹99', 'under-99', 11, 8, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (115, 'tp_0115', 'Under ₹99', 'under-99', 12, 9, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (116, 'tp_0116', 'Under ₹99', 'under-99', 13, 10, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (117, 'tp_0117', 'Under ₹99', 'under-99', 14, 11, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (118, 'tp_0118', 'Under ₹99', 'under-99', 15, 12, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (119, 'tp_0119', 'Under ₹99', 'under-99', 16, 13, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (120, 'tp_0120', 'Under ₹99', 'under-99', 17, 14, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (121, 'tp_0121', 'Under ₹99', 'under-99', 18, 15, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (122, 'tp_0122', 'Under ₹99', 'under-99', 19, 16, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (123, 'tp_0123', 'Under ₹99', 'under-99', 20, 17, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (124, 'tp_0124', 'Under ₹99', 'under-99', 21, 18, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (125, 'tp_0125', 'Under ₹99', 'under-99', 22, 19, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (126, 'tp_0126', 'Under ₹99', 'under-99', 23, 20, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (127, 'tp_0127', 'Under ₹99', 'under-99', 30, 21, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (128, 'tp_0128', 'Under ₹99', 'under-99', 32, 22, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (129, 'tp_0129', 'Under ₹99', 'under-99', 33, 23, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (130, 'tp_0130', 'Under ₹99', 'under-99', 34, 24, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (131, 'tp_0131', 'Under ₹99', 'under-99', 40, 25, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (132, 'tp_0132', 'Under ₹99', 'under-99', 41, 26, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (133, 'tp_0133', 'Under ₹99', 'under-99', 42, 27, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (134, 'tp_0134', 'Under ₹99', 'under-99', 43, 28, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (135, 'tp_0135', 'Under ₹99', 'under-99', 44, 29, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (136, 'tp_0136', 'Under ₹99', 'under-99', 45, 30, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (137, 'tp_0137', 'Under ₹99', 'under-99', 46, 31, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (138, 'tp_0138', 'Under ₹99', 'under-99', 47, 32, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (139, 'tp_0139', 'Under ₹99', 'under-99', 48, 33, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (140, 'tp_0140', 'Under ₹99', 'under-99', 49, 34, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (141, 'tp_0141', 'Under ₹99', 'under-99', 50, 35, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (142, 'tp_0142', 'Under ₹99', 'under-99', 51, 36, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (143, 'tp_0143', 'Under ₹99', 'under-99', 52, 37, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (144, 'tp_0144', 'Under ₹99', 'under-99', 53, 38, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (145, 'tp_0145', 'Under ₹99', 'under-99', 54, 39, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (146, 'tp_0146', 'Under ₹99', 'under-99', 55, 40, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (147, 'tp_0147', 'Under ₹99', 'under-99', 56, 41, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (148, 'tp_0148', 'Under ₹99', 'under-99', 58, 42, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (149, 'tp_0149', 'Under ₹99', 'under-99', 59, 43, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (150, 'tp_0150', 'Under ₹99', 'under-99', 64, 44, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (151, 'tp_0151', 'Under ₹99', 'under-99', 65, 45, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (152, 'tp_0152', 'Under ₹99', 'under-99', 66, 46, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (153, 'tp_0153', 'Under ₹99', 'under-99', 69, 47, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (154, 'tp_0154', 'Under ₹99', 'under-99', 71, 48, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (155, 'tp_0155', 'Under ₹99', 'under-99', 72, 49, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (156, 'tp_0156', 'Under ₹99', 'under-99', 73, 50, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (157, 'tp_0157', 'Under ₹99', 'under-99', 75, 51, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (158, 'tp_0158', 'Under ₹99', 'under-99', 87, 52, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (159, 'tp_0159', 'Under ₹99', 'under-99', 93, 53, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (160, 'tp_0160', 'Under ₹99', 'under-99', 94, 54, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (161, 'tp_0161', 'New Arrivals', 'new-arrivals', 31, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (162, 'tp_0162', 'New Arrivals', 'new-arrivals', 50, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (163, 'tp_0163', 'New Arrivals', 'new-arrivals', 71, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (164, 'tp_0164', 'Mega Offers', 'mega-offers', 4, 1, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (165, 'tp_0165', 'Mega Offers', 'mega-offers', 26, 2, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (166, 'tp_0166', 'Mega Offers', 'mega-offers', 32, 3, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (167, 'tp_0167', 'Mega Offers', 'mega-offers', 35, 4, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (168, 'tp_0168', 'Mega Offers', 'mega-offers', 49, 5, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (169, 'tp_0169', 'Mega Offers', 'mega-offers', 52, 6, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (170, 'tp_0170', 'Mega Offers', 'mega-offers', 63, 7, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (171, 'tp_0171', 'Mega Offers', 'mega-offers', 68, 8, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (172, 'tp_0172', 'Mega Offers', 'mega-offers', 75, 9, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (173, 'tp_0173', 'Mega Offers', 'mega-offers', 77, 10, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');
INSERT INTO public.top_picks VALUES (174, 'tp_0174', 'Mega Offers', 'mega-offers', 85, 11, true, '2026-06-27 18:30:00', '2026-06-27 18:30:00');


--
-- Data for Name: wallet_transactions; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: wishlist_items; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.addresses_id_seq', 1, false);


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.brands_id_seq', 68, true);


--
-- Name: cart_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cart_items_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categories_id_seq', 20, true);


--
-- Name: coupons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.coupons_id_seq', 1, false);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);


--
-- Name: offers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.offers_id_seq', 3, true);


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_items_id_seq', 8, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.orders_id_seq', 2, true);


--
-- Name: product_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.product_images_id_seq', 100, true);


--
-- Name: product_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.product_variants_id_seq', 100, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_id_seq', 100, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.reviews_id_seq', 1, false);


--
-- Name: subcategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.subcategories_id_seq', 58, true);


--
-- Name: top_picks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.top_picks_id_seq', 174, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: wallet_transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wallet_transactions_id_seq', 1, false);


--
-- Name: wishlist_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wishlist_items_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict dAM83VzvP4x1SlGZXyzutBc5aGaTbPltuawhZLzANCQiK5pPhdVUlFCTLvQTh33

