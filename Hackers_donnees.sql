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
    ('Limassol', 11),
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
    ('INV011', '2023-01-11 10:00:00', 7, 3),
    ('INV012', '2023-01-12 11:00:00', 21, 3),
    ('INV013', '2023-01-13 12:00:00', 35, 1),
    ('INV014', '2023-01-14 13:00:00', 14, 2),
    ('INV015', '2023-01-15 14:00:00', 3, 4),
    ('INV016', '2023-01-16 15:00:00', 28, 3),
    ('INV017', '2023-01-17 16:00:00', 19, 2),
    ('INV018', '2023-01-18 17:00:00', 42, 1),
    ('INV019', '2023-01-19 18:00:00', 11, 4),
    ('INV020', '2023-01-20 19:00:00', 6, 3),
    ('INV021', '2023-01-21 10:00:00', 24, 1),
    ('INV022', '2023-01-22 11:00:00', 8, 3),
    ('INV023', '2023-01-23 12:00:00', 31, 3),
    ('INV024', '2023-01-24 13:00:00', 9, 2),
    ('INV025', '2023-01-25 14:00:00', 16, 4),
    ('INV026', '2023-01-26 15:00:00', 22, 1),
    ('INV027', '2023-01-27 16:00:00', 36, 2),
    ('INV028', '2023-01-28 17:00:00', 13, 3),
    ('INV029', '2023-01-29 18:00:00', 4, 3),
    ('INV030', '2023-01-30 19:00:00', 38, 4),
    ('INV031', '2023-01-31 10:00:00', 20, 1),
    ('INV032', '2023-02-01 11:00:00', 27, 2),
    ('INV033', '2023-02-02 12:00:00', 1, 4),
    ('INV034', '2023-02-03 13:00:00', 34, 3),
    ('INV035', '2023-02-04 14:00:00', 18, 3),
    ('INV036', '2023-02-05 15:00:00', 41, 2),
    ('INV037', '2023-02-06 16:00:00', 10, 1),
    ('INV038', '2023-02-07 17:00:00', 30, 4),
    ('INV039', '2023-02-08 18:00:00', 12, 3),
    ('INV040', '2023-02-09 19:00:00', 25, 3),
    ('INV041', '2023-02-10 10:00:00', 29, 2),
    ('INV042', '2023-02-11 11:00:00', 2, 4),
    ('INV043', '2023-02-12 12:00:00', 32, 3),
    ('INV044', '2023-02-13 13:00:00', 17, 1),
    ('INV045', '2023-02-14 14:00:00', 39, 3),
    ('INV046', '2023-02-15 15:00:00', 5, 2),
    ('INV047', '2023-02-16 16:00:00', 26, 4),
    ('INV048', '2023-02-17 17:00:00', 15, 3),
    ('INV049', '2023-02-18 18:00:00', 40, 1),
    ('INV050', '2023-02-19 19:00:00', 23, 3);

INSERT INTO measure_unit (measure_unit_name, measure_unit_short_name) 
    VALUES
    ('Kilogram', 'kg'),
    ('Metric ton', 'mt'),
    ('Liter', 'l'),
    ('Piece', 'pcs');

    -- Inserons les donnees dans la table 'nomenclature_group'
INSERT INTO nomenclature_group (nomenclature_group_name)
VALUES
    ('Oils'),
    ('Meals'),
    ('Services');

    -- Inserons les donnees dans la table 'nomenclature'
INSERT INTO nomenclature (nomenclature_name, nomenclature_group_id, nomenclature_measure_unit)
VALUES
    ('Crude sunflower seeds oil', 1, 2),
    ('Crude rapeseed oil', 1, 2),
    ('Sunflower seed meal non-pellets', 2, 2),
    ('Sunflower seed meal pellets', 2, 2),
    ('Rapeseed meal', 2, 2),
    ('Sea Freight', 2, 3),
    ('Transshipment in port', 2, 3);    

-- Insertions les donnees dans la table 'consignments' 

/* Faisons tableau temporaire 'indicative_price' pour stocker les parametres reeles 
des prix de differents nomenclatures
*/
DROP TABLE IF EXISTS indicative_price;
CREATE TABLE indicative_price (
    id_indicative_price INT AUTO_INCREMENT,
    id_nomenclature INT NOT NULL,
    min_price DECIMAL(9,2) NOT NULL,
    max_price DECIMAL(9,2) NOT NULL,
    start_price DECIMAL(9,2) NOT NULL,
    price_steps DECIMAL (9,2) NOT NULL, 
    PRIMARY KEY (id_indicative_price)
);
ALTER TABLE indicative_price
    ADD CONSTRAINT fk_indicative_price_nomenclature
    FOREIGN KEY (id_nomenclature)
    REFERENCES nomenclature (id_nomenclature);

INSERT INTO indicative_price (id_nomenclature, min_price, max_price, start_price, price_steps)
VALUES
    (1,600, 1100, 800, 40),
    (2,600, 1200, 850, 40),
    (3,100, 300, 180, 10),
    (4,105, 305, 185, 10),
    (5,100, 320, 200, 10),
    (6, 40, 120, 80, 2),
    (7, 10,  15, 12, 1);

/* Faison procedure 'add_random consignment' qui 
   ajoute une ligne dans 'consignment' avec  'consignment_quantity' 
   et 'consignment_price' aléatoires (entre min et max valeurs) pour 
   certains 'sale_invoice' et 'nomenclature'
*/
DELIMITER |
CREATE PROCEDURE add_random_consignment (
    IN sale_invoice INT, 
    IN nomenclature INT, 
    IN min_quantity DECIMAL(12,3),
    IN max_quantity DECIMAL(12,3), 
    IN min_price DECIMAL(9,2), 
    IN max_price DECIMAL(9,2)
)
BEGIN
    DECLARE quantity DECIMAL(12,3);
    DECLARE price DECIMAL(9,2);

    -- We generate random values within the given ranges
    SET quantity = min_quantity + (RAND() * (max_quantity - min_quantity));
    SET price = min_price + (RAND() * (max_price - min_price));

    -- INSERT statement using the generated values
    INSERT INTO consignment (
        consignment_sale_invoice, 
        consignment_nomenclature, 
        consignment_quantity, 
        consignment_price)
    VALUES (sale_invoice, nomenclature, quantity, price);
END |

DELIMITER ;

--Ecrivons une procedure supplementaire pour changer 'start_price' in table 'indicative_price' 
DELIMITER |
CREATE PROCEDURE change_prices () 
BEGIN
    UPDATE indicative_price
    SET start_price = LEAST(max_price, 
                                GREATEST(min_price, 
                                         start_price + (0.5 - RAND()) * 2 * price_steps));
END |

DELIMITER ;


/* Le tableau suivante a ete cree pour memoriser les valeurs de variables locales 
pour faire l'analyse de fonctionnement de la procedure 'generate_consignments'
*/

CREATE TABLE for_debugging(
    variable VARCHAR(50),
    v_value DECIMAL(12,3));

/* Maintenant nous faisons procedure 'generate_consignments' qui va generer et inserer dans
'consignment' des donnees aléatoires (mais qui correspondent plus ou moins a ce qui se passe dans realite)
*/


DELIMITER |
CREATE PROCEDURE generate_consignments (
    IN min_quantity DECIMAL(12,3),
    IN max_quantity DECIMAL(12,3),
    IN max_number_of_consignments INT
)
BEGIN
    -- id_sale_invoice for which we are adding consignments
    DECLARE current_invoice INT DEFAULT 1; 
    -- Number of existing invoices and used nomenclatures
    DECLARE number_of_invoices INT; 
    DECLARE number_of_nomenclatures INT DEFAULT 5;
    -- We randomly choose nomenclature for 1st sale_invoice (between first 5 goods)
    DECLARE current_nomenclature INT DEFAULT CEILING(RAND() * number_of_nomenclatures);
    -- Declaring other necessary variables
    DECLARE alltime_min_price DECIMAL(9,2); 
    DECLARE alltime_max_price DECIMAL(9,2); 
    DECLARE price_step DECIMAL(9,2);    
    DECLARE current_min_price DECIMAL(9,2);
    DECLARE current_max_price DECIMAL(9,2);
    DECLARE current_number_of_consignments INT DEFAULT CEILING(RAND() * max_number_of_consignments);
    DECLARE consignment_count INT; 
    
    INSERT INTO for_debugging VALUES ('current_invoice', current_invoice);
    INSERT INTO for_debugging VALUES ('number_of_nomenclatures', number_of_nomenclatures);
    INSERT INTO for_debugging VALUES ('current_nomenclature', current_nomenclature);
    INSERT INTO for_debugging VALUES ('current_number_of_consignments', current_number_of_consignments);
    -- putting initial values to declared variables
    SELECT COUNT(id_sale_invoice) 
    INTO number_of_invoices
    FROM sale_invoice
    WHERE 1;
    INSERT INTO for_debugging VALUES ('number_of_invoices', number_of_invoices);
    SELECT min_price 
    INTO alltime_min_price
    FROM indicative_price 
    WHERE id_nomenclature = current_nomenclature;
    INSERT INTO for_debugging VALUES ('alltime_min_price', alltime_min_price);
    SELECT max_price 
    INTO alltime_max_price
    FROM indicative_price
    WHERE id_nomenclature = current_nomenclature; 
    INSERT INTO for_debugging VALUES ('alltime_max_price', alltime_max_price);
    SELECT price_steps 
    INTO price_step
    FROM indicative_price
    WHERE id_nomenclature = current_nomenclature;  
    INSERT INTO for_debugging VALUES ('price_step', price_step);
    SELECT start_price 
    INTO current_min_price
    FROM indicative_price  
    WHERE id_nomenclature = current_nomenclature; 
    INSERT INTO for_debugging VALUES ('current_min_price', current_min_price);
    SET current_max_price = LEAST(alltime_max_price, current_min_price + price_step);
    INSERT INTO for_debugging VALUES ('current_max_price', current_max_price);
    -- We generate consignments for all existing invoices
    WHILE (current_invoice <= number_of_invoices) DO 
        SET consignment_count = 1;
        WHILE (consignment_count <= current_number_of_consignments) DO
            INSERT INTO for_debugging VALUES ('consignment_count', consignment_count);
            CALL add_random_consignment(
                current_invoice, 
                current_nomenclature, 
                min_quantity,
                max_quantity,
                current_min_price,
                current_max_price);
            SET consignment_count = consignment_count + 1;
        END WHILE;
        -- We change the data for the next invoice
        SET current_invoice = current_invoice + 1;
        SET current_nomenclature  = CEILING(RAND() * number_of_nomenclatures);
        SET current_number_of_consignments = CEILING(RAND() * max_number_of_consignments);
        CALL change_prices();
        
        SELECT min_price
        INTO alltime_min_price
        FROM indicative_price
        WHERE id_nomenclature = current_nomenclature; 
        
        SELECT max_price 
        INTO alltime_max_price
        FROM indicative_price 
        WHERE id_nomenclature = current_nomenclature; 

        SELECT price_steps 
        INTO price_step
        FROM indicative_price 
        WHERE id_nomenclature = current_nomenclature;  

        SELECT start_price 
        INTO current_min_price
        FROM indicative_price 
        WHERE id_nomenclature = current_nomenclature; 
        
        SET current_max_price = LEAST(alltime_max_price, current_min_price + price_step); 

        INSERT INTO for_debugging VALUES ('current_invoice', current_invoice);
        INSERT INTO for_debugging VALUES ('current_nomenclature', current_nomenclature);
        INSERT INTO for_debugging VALUES ('current_number_of_consignments', current_number_of_consignments);
        INSERT INTO for_debugging VALUES ('alltime_min_price', alltime_min_price);
        INSERT INTO for_debugging VALUES ('alltime_max_price', alltime_max_price);
        INSERT INTO for_debugging VALUES ('price_step', price_step);
        INSERT INTO for_debugging VALUES ('current_min_price', current_min_price);
        INSERT INTO for_debugging VALUES ('current_max_price', current_max_price);

    END WHILE;

END |

DELIMITER ;

-- Demarration de generation des donnees de 'consignment'

CALL generate_consignments (1000,7000,3);


-- Insertions les donnees dans la table 'shipment' 

DELIMITER |
CREATE PROCEDURE generate_shipments (IN days_before INT, IN days_after INT)
BEGIN
    DECLARE current_consignment INT DEFAULT 1; 
    DECLARE consignments_total_number INT;
    DECLARE generated_date TIMESTAMP;
    
    SELECT COUNT(id_consignment) 
    INTO consignments_total_number
    FROM consignment;

    WHILE current_consignment <= consignments_total_number DO
        /* the date for shipment is generated basing on correspondent sale_invoice date
        by adding a random number of days within the range (- days_before, days_after)
        */
        SELECT DATE_ADD(
                    sale_invoice.invoice_date, 
                    INTERVAL (FLOOR(1 + RAND() * (days_before+days_after))-days_before) DAY
                    )
        INTO generated_date
        FROM consignment
        INNER JOIN sale_invoice
                ON consignment.consignment_sale_invoice = sale_invoice.id_sale_invoice
        WHERE id_consignment = current_consignment;

        INSERT INTO shipment (id_consignment, shipment_date)
        VALUES (current_consignment, generated_date);
        SET current_consignment = current_consignment + 1;
    END WHILE;
END |
DELIMITER ;

CALL generate_shipments(10,20);

--- on fait la fonction supplementaire qui retourne le cours de certain monnaie pour certain jour
DELIMITER $$

CREATE FUNCTION get_exchange_rate(currency_id INT, target_timestamp TIMESTAMP)
RETURNS DECIMAL(10,5)
DETERMINISTIC
BEGIN
    DECLARE exchange_rate DECIMAL(10,5);
    
    SELECT er.exchange_rate_value
    INTO exchange_rate
    FROM exchange_rate er
    JOIN currency c ON er.exchange_rate_currency = c.id_currency
    WHERE c.id_currency = currency_id
      AND er.exchange_rate_date <= target_timestamp
    ORDER BY er.exchange_rate_date DESC
    LIMIT 1;

    RETURN exchange_rate;
END $$

DELIMITER ;


-- on fait view 'sale_invoice_full_aggregated_view' 
DROP VIEW IF EXISTS sale_invoice_full_aggregated_view;
CREATE VIEW sale_invoice_full_aggregated_view AS
SELECT si.id_sale_invoice AS invoice_id, 
       si.invoice_number AS invoice_number, 
       si.invoice_date AS invoice_date, 
       sc.contract_number AS contract_number,
       sc.contract_date AS contract_date,
       cust.customer_name AS buyer,
       country.country_name AS buyer_country,
       cur.currency_code AS invoice_currency,
       CONCAT(incoterms.incoterms_name, ' ', place.place_name) AS sale_terms,
       CAST(SUM(cons.consignment_price * cons.consignment_quantity) AS DECIMAL(15,2)) AS invoice_amount,
       CAST(SUM(cons.consignment_price * cons.consignment_quantity) * get_exchange_rate(si.invoice_currency, si.invoice_date) AS DECIMAL(15,2)) AS invoice_amount_CHF,
       CAST(SUM(ip.incoming_payment_amount) / COUNT(ip.incoming_payment_amount) AS DECIMAL(15,2)) AS paid_amount
FROM sale_invoice si
INNER JOIN consignment cons ON cons.consignment_sale_invoice = si.id_sale_invoice
LEFT JOIN incoming_payment ip ON ip.incoming_payment_sale_invoice = si.id_sale_invoice
LEFT JOIN sale_contract sc ON si.invoice_contract = sc.id_sale_contract
LEFT JOIN customer cust ON cust.id_customer = sc.contract_customer
INNER JOIN currency cur ON si.invoice_currency = cur.id_currency
INNER JOIN country ON country.id_country = cust.customer_country
INNER JOIN sale_point sp ON sp.id_sale_point = sc.contract_sale_point
INNER JOIN incoterms ON incoterms.id_incoterms = sp.sale_point_incoterms
INNER JOIN place ON place.id_place = sp.sale_point_place
GROUP BY si.id_sale_invoice;

/* -- inserons les donnees dans la table 'incoming_payments'


Le tableau suivante a ete cree pour memoriser les valeurs de variables locales 
pour faire l'analyse de fonctionnement de la procedure 'generate_payments'
*/

CREATE TABLE for_debugging_2(
    variable VARCHAR(50),
    v_value DECIMAL(15,2)
);

DELIMITER |
CREATE PROCEDURE generate_payments (IN days_before INT, IN days_after INT, IN max_num_of_pmnts_per_invoice INT)
BEGIN
    DECLARE current_invoice INT DEFAULT 1; 
    DECLARE invoices_total_number INT;
    DECLARE generated_date TIMESTAMP;
    DECLARE current_currency INT;
    DECLARE generated_bank_account INT; 
    DECLARE number_of_payments INT;
    DECLARE current_payment INT DEFAULT 1;
    DECLARE max_generated_amount DECIMAL(15,2);
    DECLARE random_seed DECIMAL (16,15);
    DECLARE generated_amount DECIMAL(15,2);
    
    SELECT COUNT(id_sale_invoice) 
    INTO invoices_total_number
    FROM sale_invoice;

    INSERT INTO for_debugging_2 VALUES ('invoices_total_number', invoices_total_number);


    WHILE current_invoice <= invoices_total_number DO
        -- get the currency of current invoice
        SELECT invoice_currency
        INTO current_currency
        FROM sale_invoice
        WHERE id_sale_invoice = current_invoice;
        /* generated_bank_account is chosen randomly from bank accounts with the same currency as current_invoice
        */
        SELECT ba.id_bank_account 
        INTO generated_bank_account
        FROM bank_account ba
        WHERE ba.bank_account_currency = current_currency
        ORDER BY RAND()
        LIMIT 1;
        /* we randomly chose how many payments we'll insert for this invoice */
        SET number_of_payments = CEILING(RAND() * max_num_of_pmnts_per_invoice);
        
        INSERT INTO for_debugging_2 VALUES ('number_of_payments', number_of_payments);

        /* we determine what amount is unpaid now*/
        SELECT COALESCE (invoice_amount - paid_amount, invoice_amount)
        INTO max_generated_amount
        FROM sale_invoice_full_aggregated_view
        WHERE invoice_id = current_invoice;

        INSERT INTO for_debugging_2 VALUES ('current_invoice', current_invoice);
        INSERT INTO for_debugging_2 VALUES ('max_generated_amount_1', max_generated_amount);

        WHILE (current_payment <= number_of_payments) AND (max_generated_amount > 0) DO
            /* the date for payment is generated basing on correspondent sale_invoice date
            by adding a random number of days within the range (- days_before, days_after)
            */
            SELECT DATE_ADD(
                        sale_invoice.invoice_date, 
                        INTERVAL (FLOOR(1 + RAND() * (days_before+days_after))-days_before) DAY
                        )
            INTO generated_date
            FROM sale_invoice
            WHERE sale_invoice.id_sale_invoice = current_invoice;        
            /* we increase to 0.8 the probability of full payment of the unpaid amount*/
            SET random_seed = RAND();
            INSERT INTO for_debugging_2 VALUES ('random_seed', random_seed);

            SELECT 
                CASE
                    WHEN random_seed > 0.2 THEN max_generated_amount
                    ELSE random_seed * 5 * max_generated_amount
                END
            INTO generated_amount;
            INSERT INTO for_debugging_2 VALUES ('generated_amount', generated_amount);

            /* we insert payment if its amount is greater than 0 */
            IF generated_amount > 0 THEN
                INSERT INTO incoming_payment (incoming_payment_date, incoming_payment_sale_invoice, incoming_payment_amount, incoming_payment_bank_account)
                VALUES (generated_date, current_invoice, generated_amount, generated_bank_account);
                /* we determine what amount is unpaid now after insertion*/
                SELECT invoice_amount - paid_amount
                INTO max_generated_amount
                FROM sale_invoice_full_aggregated_view
                WHERE invoice_id = current_invoice;

                INSERT INTO for_debugging_2 VALUES ('max_generated_amount_after', max_generated_amount);
                
            END IF;

            SET current_payment = current_payment + 1;
            
            INSERT INTO for_debugging_2 VALUES ('current_payment', current_payment);

        END WHILE;

        SET current_payment = 1;
        SET current_invoice = current_invoice + 1;
        
    END WHILE;
END |
DELIMITER ;

CALL generate_payments(10,20,3);

SELECT * FROM sale_invoice_full_aggregated_view;
