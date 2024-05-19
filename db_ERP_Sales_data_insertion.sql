-- Utilisons notre base de donnees db_ERP_Sales qui deja existe
USE db_ERP_Sales;
-- Inserons les donnees dans la table 'country'
INSERT INTO `country` ( `country_name`, `country_code`) 
VALUES 
    ('Switzerland','CHE'),
    ('Ukraine', 'UKR'),
    ('Albania', 'ALB'),
    ('Austria', 'AUT'),
    ('Belgium', 'BEL'),
    ('Bosnia and Herzegovina', 'BIH'),
    ('Bulgaria', 'BGR'),
    ('Canada', 'CAN'),
    ('China', 'CHN'),
    ('Croatia', 'HRV'),
    ('Cyprus', 'CYP'),
    ('Czech Republic', 'CZE'),
    ('Egypt', 'EGY'),
    ('Estonia', 'EST'),
    ('France', 'FRA'),
    ('Georgia', 'GEO'),
    ('Germany', 'DEU'),
    ('Greece', 'GRC'),
    ('Hong Kong', 'HKG'),
    ('Hungary', 'HUN'),
    ('Italy', 'ITA'),
    ('Jordan', 'JOR'),
    ('Luxembourg', 'LUX'),
    ('Malaysia', 'MYS'),
    ('Malta', 'MLT'),
    ('Moldova', 'MDA'),
    ('Montenegro', 'MNE'),
    ('Morocco', 'MAR'),
    ('Netherlands', 'NLD'),
    ('North Macedonia', 'MKD'),
    ('Portugal', 'PRT'),
    ('Poland', 'POL'),
    ('Romania', 'ROU'),
    ('Serbia', 'SRB'),
    ('Slovakia', 'SVK'),
    ('Slovenia', 'SVN'),
    ('Spain', 'ESP'),
    ('Tunisia', 'TUN'),
    ('Turkey', 'TUR'),
    ('United Arab Emirates', 'ARE'),
    ('United Kingdom', 'GBR'),
    ('Unites States', 'USA'),
    ('Singapore', 'SGP');

-- Inserons les donnees dans la table 'customer'
INSERT INTO customer (customer_name, customer_address, customer_country)
VALUES
    ('Viterra Inc.', '2200-201 Portage Avenue, Winnipeg', 8), -- Canada
    ('Bunge Limited', '50 Main Street, White Plains', 41), -- United States
    ('Cargill, Incorporated', '15407 McGinty Road West, Wayzata', 41), -- United States
    ('ADM Milling Company', '12575 U.S. 60, Enid', 41), -- United States
    ('Louis Dreyfus Company B.V.', '25 Churchillplein, Rotterdam', 29), -- Netherlands
    ('Wilmar International Limited', '56 Neil Road, Singapore', 43), -- Singapore
    ('Sime Darby Plantation Berhad', 'Level 3A, Main Block, Wisma Sime Darby, Kuala Lumpur', 24), -- Malaysia
    ('Golden Agri-Resources Ltd.', '108 Pasir Panjang Road, Singapore', 43), -- Singapore
    ('IOI Corporation Berhad', 'IOI City Tower 2, Putrajaya', 24), -- Malaysia
    ('Archer Daniels Midland Company', '77 W. Wacker Drive, Chicago', 41), -- United States
    ('Bunge SA', 'R. Olimpíadas, 205 - 2º andar, São Paulo', 12), -- Brazil
    ('Olam International Limited', '9 Temasek Boulevard, Singapore', 43), -- Singapore
    ('AAK AB', 'Skriverivägen 9, Karlshamn', 35), -- Sweden
    ('Marico Limited', 'Grand Sarovar Premiere, Mumbai', 19), -- India
    ('KCP Limited', 'Ramakrishna Buildings, Chennai', 19), -- India
    ('Wilmar Europe Holdings B.V.', '25 Churchillplein, Rotterdam', 29), -- Netherlands
    ('Bunge Asia Pte. Ltd.', '1 Wallich Street, Singapore', 12), -- Brazil
    ('COFCO International Ltd.', '18-20/F, 28 Hennessy Road, Wanchai', 23), -- Hong Kong
    ('Agrofert Holding, a.s.', 'Karlovo náměstí 317/7, Prague', 12), -- Czech Republic
    ('Südzucker AG', 'Maximilianstraße 10, Mannheim', 17), -- Germany
    ('Molinos Río de la Plata S.A.', 'Av. Corrientes 5232, Buenos Aires', 4), -- Argentina
    ('Victor Semo''s Ltd.', 'Amagi-cho, Kobe', 25), -- Japan
    ('Allseeds Black Sea', 'Krasnoy Armii 100, Odessa', 2), -- Ukraine
    ('Cairo Oil and Soap Co.', '34 Adly Street, Cairo', 13), -- Egypt
    ('Cairo Poultry Company', 'Salah Salem, Cairo', 13), -- Egypt
    ('Alwaha for Trade and Marketing Co.', 'Sharq Al-Kuwait', 22), -- Jordan
    ('Alfa Corporation for Import and Export', 'El-Mahalla El-Kubra', 13), -- Egypt
    ('Maroc Emirats Arabes Unis Investissement', '6 Place de la Liberté, Casablanca', 28), -- Morocco
    ('Agro-Anadolu Tarım Ürünleri', 'Nurtepe Mahallesi, Istanbul', 39), -- Turkey
    ('Müjde Yağ Sanayi ve Ticaret A.Ş.', 'Çarşı Yolu Caddesi, Adana', 39), -- Turkey
    ('Tiryakiler Tarım Ürünleri Sanayi ve Ticaret A.Ş.', 'Tiryakiler Tarım, Mersin', 39), -- Turkey
    ('Özmir Oils', 'İzmir Gıda Toptancılar Sitesi, İzmir', 39), -- Turkey
    ('Seferoğlu Bakliyat', 'Uzundere Mahallesi, Gaziantep', 39), -- Turkey
    ('Kamil Koç Yem', 'Zeytinlik Mahallesi, Konya', 39), -- Turkey
    ('Pamuk Yem', 'Organize Sanayi Bölgesi, Manisa', 39), -- Turkey
    ('Hacı Hasan Yağ Sanayi', 'Büyük Sanayi Sitesi, Edirne', 39), -- Turkey
    ('Ege Yağ Sanayi', 'Sarıyer Mahallesi, Balıkesir', 39), -- Turkey
    ('Ferdi Tarım', 'Yeni Sanayi Sitesi, Kahramanmaraş', 39); -- Turkey


-- Inserons les donnees dans la table 'place'
INSERT INTO place (place_name, place_country)
VALUES
    ('Odesa', 2),
    ('Izmail', 2),
    ('Yuzhne', 2),
    ('Chornomorsk', 2),
    ('Constanta', 33),
    ('Varna', 7),
    ('Istanbul', 39),      
    ('Izmir', 39),      
    ('Mersin', 39),     
    ('Gemlik', 39),      
    ('Aliaga', 39),
    ('Bandirma', 39),
    ('Iskenderun', 39),
    ('Limassol', 9),
    ('Alexandria', 13),
    ('Port Said', 13),
    ('Tunis', 38),
    ('Monopoli', 21),
    ('Napoli', 21),
    ('Genova', 21),
    ('Marseille', 15),
    ('Valencia', 37),
    ('Malaga', 37),
    ('Seville', 37),
    ('Bilbao', 37),
    ('Lisbon', 31),
    ('Porto', 31),
    ('Casablanca', 28),
    ('Valetta', 25),
    ('Piraeus', 18);

-- Inserons les donnees dans la table 'incoterms'
INSERT INTO incoterms (incoterms_name, incoterms_full_name)
VALUES
    ('EXW', 'Ex Works'),
    ('FCA', 'Free Carrier'),
    ('FAS', 'Free Alongside Ship'),
    ('FOB', 'Free On Board'),
    ('CFR', 'Cost And Freight'),
    ('CIF', 'Cost Insurance and Freight'),
    ('CPT', 'Carriage Paid To'),
    ('CIP', 'Carriage and Insurance Paid to'),
    ('DAP', 'Delivered At Place'),
    ('DPU', 'Delivered at Place Unloaded'),
    ('DDP', 'Delivered Duty Paid');

-- Inserons les donnees dans la table 'sale_point'
INSERT INTO sale_point (sale_point_incoterms, sale_point_place)
VALUES
    (4, 1),    
    (4, 2),
    (4, 3),
    (4, 4), 
    (6, 5),
    (6, 6),
    (6, 7),
    (6, 8),
    (6, 9),
    (6,10),
    (6,11),
    (6,12),
    (6,13),
    (6,14),
    (6,15),
    (6,16),
    (6,17),
    (6,18),
    (6,19),
    (6,20),
    (6,21),
    (6,22),
    (6,23),
    (6,24),
    (6,25),
    (6,26),
    (6,27),
    (6,28),
    (6,29),
    (6,30);

 -- Inserons les donnees dans la table 'currency'
INSERT INTO currency (currency_name, currency_code)
VALUES
    ('Swiss Franc', 'CHF'),
    ('Euro', 'EUR'),
    ('US Dollar', 'USD'),
    ('British Pound', 'GBP'),
    ('Japanese Yen', 'JPY');

-- Inserons les donnees dans la table 'sale_contract'
INSERT INTO sale_contract (contract_number, contract_date, contract_customer, contract_sale_point)
VALUES
    ('Contract1', '2023-07-15', 1, 6),
    ('Contract2', '2023-03-22', 2, 28),
    ('Contract3', '2023-11-10', 3, 19),
    ('Contract4', '2023-05-09', 4, 26),
    ('Contract5', '2023-09-28', 5, 4),
    ('Contract6', '2023-04-17', 6, 15),
    ('Contract7', '2023-12-05', 7, 10),
    ('Contract8', '2023-08-30', 8, 25),
    ('Contract9', '2023-02-14', 9, 29),
    ('Contract10', '2023-06-20', 10, 7),
    ('Contract11', '2023-10-03', 11, 20),
    ('Contract12', '2023-03-29', 12, 12),
    ('Contract13', '2023-07-18', 13, 3),
    ('Contract14', '2023-01-27', 14, 1),
    ('Contract15', '2023-09-01', 15, 11),
    ('Contract16', '2023-12-10', 16, 30),
    ('Contract17', '2023-08-05', 17, 27),
    ('Contract18', '2023-05-22', 18, 8),
    ('Contract19', '2023-11-18', 19, 9),
    ('Contract20', '2023-04-14', 20, 13),
    ('Contract21', '2023-06-09', 21, 17),
    ('Contract22', '2023-02-07', 22, 2),
    ('Contract23', '2023-10-19', 23, 22),
    ('Contract24', '2023-08-11', 24, 23),
    ('Contract25', '2023-07-02', 25, 5),
    ('Contract26', '2023-03-31', 26, 16),
    ('Contract27', '2023-09-16', 27, 24),
    ('Contract28', '2023-01-05', 28, 18),
    ('Contract29', '2023-04-25', 29, 14),
    ('Contract30', '2023-10-14', 30, 21),
    ('Contract31', '2023-12-29', 31, 30),
    ('Contract32', '2023-11-03', 32, 8),
    ('Contract33', '2023-03-08', 33, 26),
    ('Contract34', '2023-09-07', 34, 29),
    ('Contract35', '2023-06-26', 35, 23),
    ('Contract36', '2023-05-12', 36, 13),
    ('Contract37', '2023-12-01', 37, 11),
    ('Contract38', '2023-08-19', 38, 22),
    ('Contract39', '2023-01-30', 39, 1),
    ('Contract40', '2023-07-22', 40, 3),
    ('Contract41', '2023-11-09', 41, 14),
    ('Contract42', '2023-02-15', 42, 7);

-- Inserons les donnees dans la table 'bank'
INSERT INTO bank (bank_name, bank_address, bank_country)
VALUES
    ('Swiss Bank Corporation', 'Bahnhofstrasse 45, Zurich', (SELECT id_country FROM country WHERE country_code = 'CHE')), -- Switzerland
    ('National Bank of Ukraine', 'Institutska St, 9, Kyiv', (SELECT id_country FROM country WHERE country_code = 'UKR')), -- Ukraine
    ('Bank of Albania', 'Sheshi Skënderbej 1, Tirana', (SELECT id_country FROM country WHERE country_code = 'ALB')), -- Albania
    ('Deutsche Bank AG', 'Taunusanlage 12, Frankfurt', (SELECT id_country FROM country WHERE country_code = 'DEU')), -- Germany
    ('Barclays Bank', '1 Churchill Place, London', (SELECT id_country FROM country WHERE country_code = 'GBR')), -- United Kingdom
    ('Bank of America', '100 N Tryon St, Charlotte', (SELECT id_country FROM country WHERE country_code = 'USA')), -- United States
    ('Bank of China', '1 Fuxingmen Nei Dajie, Beijing', (SELECT id_country FROM country WHERE country_code = 'CHN')), -- China
    ('Toronto Dominion Bank', 'Toronto-Dominion Centre, Toronto', (SELECT id_country FROM country WHERE country_code = 'CAN')), -- Canada
    ('BNP Paribas', '16 Blvd des Italiens, Paris', (SELECT id_country FROM country WHERE country_code = 'FRA')); -- France


-- Inserons les donnees dans la table 'bank_account' 
INSERT INTO bank_account (bank_account_number, bank_account_bank, bank_account_currency)
VALUES
    ('CH1234567890', (SELECT id_bank FROM bank WHERE bank_name = 'Swiss Bank Corporation'), (SELECT id_currency FROM currency WHERE currency_code = 'CHF')), -- Swiss Bank with CHF
    ('CH0987654321', (SELECT id_bank FROM bank WHERE bank_name = 'Swiss Bank Corporation'), (SELECT id_currency FROM currency WHERE currency_code = 'EUR')), -- Swiss Bank with EUR
    ('DE1234567890', (SELECT id_bank FROM bank WHERE bank_name = 'Deutsche Bank AG'), (SELECT id_currency FROM currency WHERE currency_code = 'EUR')), -- Deutsche Bank with EUR
    ('DE0987654321', (SELECT id_bank FROM bank WHERE bank_name = 'Deutsche Bank AG'), (SELECT id_currency FROM currency WHERE currency_code = 'USD')), -- Deutsche Bank with USD
    ('GB1234567890', (SELECT id_bank FROM bank WHERE bank_name = 'Barclays Bank'), (SELECT id_currency FROM currency WHERE currency_code = 'GBP')), -- Barclays Bank with GBP
    ('GB0987654321', (SELECT id_bank FROM bank WHERE bank_name = 'Barclays Bank'), (SELECT id_currency FROM currency WHERE currency_code = 'EUR')), -- Barclays Bank with EUR
    ('US1234567890', (SELECT id_bank FROM bank WHERE bank_name = 'Bank of America'), (SELECT id_currency FROM currency WHERE currency_code = 'USD')), -- Bank of America with USD
    ('US0987654321', (SELECT id_bank FROM bank WHERE bank_name = 'Bank of America'), (SELECT id_currency FROM currency WHERE currency_code = 'EUR')), -- Bank of America with EUR
    ('CN0987654321', (SELECT id_bank FROM bank WHERE bank_name = 'Bank of China'), (SELECT id_currency FROM currency WHERE currency_code = 'USD')), -- Bank of China with USD
    ('CA1234567890', (SELECT id_bank FROM bank WHERE bank_name = 'Toronto Dominion Bank'), (SELECT id_currency FROM currency WHERE currency_code = 'EUR')), -- Toronto Dominion Bank with EUR
    ('CA0987654321', (SELECT id_bank FROM bank WHERE bank_name = 'Toronto Dominion Bank'), (SELECT id_currency FROM currency WHERE currency_code = 'USD')); -- Toronto Dominion Bank with USD

/* Inserons les donnees dans la table 'exchange_rate' 
monthly average according Swiss National Bank data https://data.snb.ch/en/topics/ziredev/cube/devkum
*/
INSERT INTO exchange_rate (exchange_rate_date, exchange_rate_value, exchange_rate_currency)
VALUES
    ('2023-01-01', 1.00000, 1), 
    ('2023-01-01', 0.99615, 2), 
    ('2023-01-01', 0.92411, 3), 
    ('2023-01-01', 1.12960, 4), 
    ('2023-02-01', 0.99045, 2), 
    ('2023-02-01', 0.92427, 3), 
    ('2023-02-01', 1.11787, 4), 
    ('2023-03-01', 0.99051, 2), 
    ('2023-03-01', 0.92552, 3), 
    ('2023-03-01', 1.12331, 4), 
    ('2023-04-01', 0.98479, 2), 
    ('2023-04-01', 0.89768, 3), 
    ('2023-04-01', 1.11735, 4), 
    ('2023-05-01', 0.97533, 2), 
    ('2023-05-01', 0.89699, 3), 
    ('2023-05-01', 1.11990, 4), 
    ('2023-06-01', 0.97602, 2), 
    ('2023-06-01', 0.90083, 3), 
    ('2023-06-01', 1.13719, 4), 
    ('2023-07-01', 0.96610, 2), 
    ('2023-07-01', 0.87398, 3), 
    ('2023-07-01', 1.12533, 4), 
    ('2023-08-01', 0.95835, 2), 
    ('2023-08-01', 0.87859, 3), 
    ('2023-08-01', 1.11603, 4), 
    ('2023-09-01', 0.95969, 2), 
    ('2023-09-01', 0.89823, 3), 
    ('2023-09-01', 1.11365, 4), 
    ('2023-10-01', 0.95518, 2), 
    ('2023-10-01', 0.90385, 3), 
    ('2023-10-01', 1.10018, 4), 
    ('2023-11-01', 0.96324, 2), 
    ('2023-11-01', 0.89180, 3), 
    ('2023-11-01', 1.10675, 4), 
    ('2023-12-01', 0.94415, 2), 
    ('2023-12-01', 0.86603, 3), 
    ('2023-12-01', 1.09558, 4), 
    ('2024-01-01', 0.93645, 2), 
    ('2024-01-01', 0.85893, 3), 
    ('2024-01-01', 1.09110, 4);

INSERT INTO sale_invoice (invoice_number, invoice_date, invoice_contract, invoice_currency) 
    VALUES
    ('INV011', '2024-01-11 10:00:00', 7, 3),
    ('INV012', '2024-01-12 11:00:00', 21, 5),
    ('INV013', '2024-01-13 12:00:00', 35, 1),
    ('INV014', '2024-01-14 13:00:00', 14, 2),
    ('INV015', '2024-01-15 14:00:00', 3, 4),
    ('INV016', '2024-01-16 15:00:00', 28, 3),
    ('INV017', '2024-01-17 16:00:00', 19, 2),
    ('INV018', '2024-01-18 17:00:00', 42, 1),
    ('INV019', '2024-01-19 18:00:00', 11, 4),
    ('INV020', '2024-01-20 19:00:00', 6, 5),
    ('INV021', '2024-01-21 10:00:00', 24, 1),
    ('INV022', '2024-01-22 11:00:00', 8, 5),
    ('INV023', '2024-01-23 12:00:00', 31, 3),
    ('INV024', '2024-01-24 13:00:00', 9, 2),
    ('INV025', '2024-01-25 14:00:00', 16, 4),
    ('INV026', '2024-01-26 15:00:00', 22, 1),
    ('INV027', '2024-01-27 16:00:00', 36, 2),
    ('INV028', '2024-01-28 17:00:00', 13, 5),
    ('INV029', '2024-01-29 18:00:00', 4, 3),
    ('INV030', '2024-01-30 19:00:00', 38, 4),
    ('INV031', '2024-01-31 10:00:00', 20, 1),
    ('INV032', '2024-02-01 11:00:00', 27, 2),
    ('INV033', '2024-02-02 12:00:00', 1, 4),
    ('INV034', '2024-02-03 13:00:00', 34, 3),
    ('INV035', '2024-02-04 14:00:00', 18, 5),
    ('INV036', '2024-02-05 15:00:00', 41, 2),
    ('INV037', '2024-02-06 16:00:00', 10, 1),
    ('INV038', '2024-02-07 17:00:00', 30, 4),
    ('INV039', '2024-02-08 18:00:00', 12, 3),
    ('INV040', '2024-02-09 19:00:00', 25, 5),
    ('INV041', '2024-02-10 10:00:00', 29, 2),
    ('INV042', '2024-02-11 11:00:00', 2, 4),
    ('INV043', '2024-02-12 12:00:00', 32, 3),
    ('INV044', '2024-02-13 13:00:00', 17, 1),
    ('INV045', '2024-02-14 14:00:00', 39, 5),
    ('INV046', '2024-02-15 15:00:00', 5, 2),
    ('INV047', '2024-02-16 16:00:00', 26, 4),
    ('INV048', '2024-02-17 17:00:00', 15, 3),
    ('INV049', '2024-02-18 18:00:00', 40, 1),
    ('INV050', '2024-02-19 19:00:00', 23, 5);

INSERT INTO measure_unit (measure_unit_name, measure_unit_short_name) 
    VALUES
    ('Kilogram', 'kg'),
    ('Metric ton', 'mt'),
    ('Liter', 'l'),
    ('Piece', 'pcs');
