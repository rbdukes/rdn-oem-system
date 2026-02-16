INSERT INTO master_oem_registry (company_name, website, hq_country, hq_region, categories, oem_status, is_public, reliability_score) VALUES
('National Oilwell Varco', 'https://www.nov.com', 'USA', 'Americas', ARRAY['DRILLING', 'MUD_PUMPS']::equipment_vertical[], 'VERIFIED', TRUE, 99),
('Schlumberger', 'https://www.slb.com', 'USA', 'Americas', ARRAY['DRILLING']::equipment_vertical[], 'VERIFIED', TRUE, 99),
('Halliburton', 'https://www.halliburton.com', 'USA', 'Americas', ARRAY['DRILLING']::equipment_vertical[], 'VERIFIED', TRUE, 98),
('Caterpillar', 'https://www.caterpillar.com', 'USA', 'Americas', ARRAY['POWER_GEN']::equipment_vertical[], 'VERIFIED', TRUE, 99),
('Tenaris', 'https://www.tenaris.com', 'Luxembourg', 'EMEA', ARRAY['TUBULARS']::equipment_vertical[], 'VERIFIED', TRUE, 98);
