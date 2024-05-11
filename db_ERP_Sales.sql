-- Suppression de la base de données si elle existe
DROP DATABASE IF EXISTS db_ERP_Sales ;

-- Création de la base de données
CREATE DATABASE db_ERP_Sales;
USE db_ERP_Sales;

-- Suppression et création de la table country 
DROP TABLE IF EXISTS country;
CREATE TABLE country (
id_country INT AUTO_INCREMENT, 
country_name VARCHAR(50) NOT NULL,
country_code CHAR(3) NOT NULL,
PRIMARY KEY(id_country)
); 

-- Suppression et création de la table customer
DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
id_customer INT AUTO_INCREMENT,
customer_name VARCHAR(50) NOT NULL,
customer_address VARCHAR(255),
customer_country INT NOT NULL ,
PRIMARY KEY (id_customer)
); 

ALTER TABLE customer
    ADD CONSTRAINT fk_customer_country
    FOREIGN KEY (customer_country)
    REFERENCES country (id_country);

-- Suppression et création de la table place
DROP TABLE IF EXISTS place;
CREATE TABLE place (
id_place INT AUTO_INCREMENT,
place_name VARCHAR(50) NOT NULL,
place_country INT NOT NULL ,
PRIMARY KEY (id_place)
); 

ALTER TABLE place
    ADD CONSTRAINT fk_place_country
    FOREIGN KEY (place_country)
    REFERENCES country (id_country);

-- Suppression et création de la table incoterms
DROP TABLE IF EXISTS incoterms;
CREATE TABLE incoterms (
id_incoterms INT AUTO_INCREMENT,
incoterms_name CHAR(3) NOT NULL,
incoterms_full_name CHAR(50) NOT NULL ,
PRIMARY KEY (id_incoterms)
); 

-- Suppression et création de la table sale_point
DROP TABLE IF EXISTS sale_point;
CREATE TABLE sale_point (
id_sale_point INT AUTO_INCREMENT,
sale_point_incoterms INT NOT NULL,
sale_point_place INT NOT NULL ,
PRIMARY KEY (id_sale_point)
); 

ALTER TABLE sale_point
    ADD CONSTRAINT fk_sale_point_incoterms
    FOREIGN KEY (sale_point_incoterms)
    REFERENCES incoterms (id_incoterms);

ALTER TABLE sale_point
    ADD CONSTRAINT fk_sale_point_place 
    FOREIGN KEY (sale_point_place) 
    REFERENCES place (id_place);    

-- Suppression et création de la table currency
DROP TABLE IF EXISTS currency;
CREATE TABLE currency (
id_currency INT AUTO_INCREMENT,
currency_name VARCHAR(50) NOT NULL,
currency_code CHAR(3) NOT NULL ,
PRIMARY KEY (id_currency)
); 

-- Suppression et création de la table exchange_rate
DROP TABLE IF EXISTS exchange_rate;
CREATE TABLE exchange_rate (
id_exchange_rate INT AUTO_INCREMENT,
exchange_rate_date TIMESTAMP NOT NULL,
exchange_rate_value DECIMAL(10,5) NOT NULL ,
PRIMARY KEY (id_exchange_rate)
); 

-- Suppression et création de la table bank
DROP TABLE IF EXISTS bank;
CREATE TABLE bank (
id_bank INT AUTO_INCREMENT,
bank_name VARCHAR(50) NOT NULL,
bank_address VARCHAR(250) ,
bank_country INT NOT NULL ,
PRIMARY KEY (id_bank)
); 

ALTER TABLE bank
    ADD CONSTRAINT fk_bank_country
    FOREIGN KEY (bank_country)
    REFERENCES country (id_country);

-- Suppression et création de la table bank_account
DROP TABLE IF EXISTS bank_account;
CREATE TABLE bank_account (
id_bank_account INT AUTO_INCREMENT,
bank_account_number VARCHAR(50) NOT NULL,
bank_account_bank INT NOT NULL,
bank_account_currency INT NOT NULL,
PRIMARY KEY (id_bank_account)
); 

ALTER TABLE bank_account
    ADD CONSTRAINT fk_bank_account_bank
    FOREIGN KEY (bank_account_bank)
    REFERENCES bank (id_bank);    

ALTER TABLE bank_account
    ADD CONSTRAINT fk_bank_account_currency
    FOREIGN KEY (bank_account_currency)
    REFERENCES currency (id_currency);    

-- Suppression et création de la table sale_contract
DROP TABLE IF EXISTS sale_contract;
CREATE TABLE sale_contract (
id_sale_contract INT AUTO_INCREMENT,
contract_number VARCHAR(30) NOT NULL,
contract_date TIMESTAMP NOT NULL,
contract_customer INT NOT NULL,
contract_sale_point INT NOT NULL ,
PRIMARY KEY (id_sale_contract)
); 

ALTER TABLE sale_contract
    ADD CONSTRAINT fk_sale_contract_customer
    FOREIGN KEY (contract_customer)
    REFERENCES customer (id_customer);

ALTER TABLE sale_contract
    ADD CONSTRAINT fk_sale_contract_sale_point 
    FOREIGN KEY (contract_sale_point) 
    REFERENCES sale_point (id_sale_point);   

-- Suppression et création de la table sale_invoice
DROP TABLE IF EXISTS sale_invoice;
CREATE TABLE sale_invoice (
id_sale_invoice INT AUTO_INCREMENT,
invoice_number VARCHAR(30) NOT NULL,
invoice_date TIMESTAMP NOT NULL,
invoice_contract INT NOT NULL,
invoice_currency INT NOT NULL ,
PRIMARY KEY (id_sale_invoice)
); 

ALTER TABLE sale_invoice
    ADD CONSTRAINT fk_sale_invoice_contract
    FOREIGN KEY (invoice_contract)
    REFERENCES sale_invoice (id_sale_invoice);

ALTER TABLE sale_invoice
    ADD CONSTRAINT fk_sale_invoice_currency 
    FOREIGN KEY (invoice_currency) 
    REFERENCES currency (id_currency);   

-- Suppression et création de la table nomenclature_group
DROP TABLE IF EXISTS nomenclature_group;
CREATE TABLE nomenclature_group (
id_nomenclature_group INT AUTO_INCREMENT,
nomenclature_group_name VARCHAR(30),
PRIMARY KEY (id_nomenclature_group)
); 

-- Suppression et création de la table measure_unit
DROP TABLE IF EXISTS measure_unit;
CREATE TABLE measure_unit (
id_measure_unit INT AUTO_INCREMENT,
measure_unit_name VARCHAR(50),
measure_unit_short_name VARCHAR(4),
PRIMARY KEY (id_measure_unit)
); 

-- Suppression et création de la table nomenclature
DROP TABLE IF EXISTS nomenclature;
CREATE TABLE nomenclature (
id_nomenclature INT AUTO_INCREMENT,
nomenclature_name VARCHAR(100),
nomenclature_group_id INT NOT NULL,
nomenclature_measure_unit INT NOT NULL,
PRIMARY KEY (id_nomenclature)
); 

ALTER TABLE nomenclature
    ADD CONSTRAINT fk_nomenclature_nomenclature_group
    FOREIGN KEY (nomenclature_group_id)
    REFERENCES nomenclature_group (id_nomenclature_group);

ALTER TABLE nomenclature
    ADD CONSTRAINT fk_nomenclature_measure_unit 
    FOREIGN KEY (nomenclature_measure_unit) 
    REFERENCES measure_unit (id_measure_unit); 

-- Suppression et création de la table consignment
DROP TABLE IF EXISTS consignment;
CREATE TABLE consignment (
id_consignment INT AUTO_INCREMENT,
consignment_sale_invoice INT NOT NULL,
consignment_nomenclature INT NOT NULL,
consignment_quantity DECIMAL(12,3) NOT NULL,
consignment_price DECIMAL(9,2) NOT NULL,
PRIMARY KEY (id_consignment)
); 

ALTER TABLE consignment
    ADD CONSTRAINT fk_consignment_sale_invoice
    FOREIGN KEY (consignment_sale_invoice)
    REFERENCES sale_invoice (id_sale_invoice);

ALTER TABLE consignment
    ADD CONSTRAINT fk_consignment_nomenclature 
    FOREIGN KEY (consignment_nomenclature) 
    REFERENCES nomenclature (id_nomenclature); 

-- Suppression et création de la table incoming_payment
DROP TABLE IF EXISTS incoming_payment;
CREATE TABLE incoming_payment (
id_incoming_payment INT AUTO_INCREMENT,
incoming_payment_date TIMESTAMP,
incoming_payment_sale_invoice INT NOT NULL,
incoming_payment_bank_account INT NOT NULL,
incoming_payment_amount DECIMAL(15,2) NOT NULL,
PRIMARY KEY (id_incoming_payment)
); 

ALTER TABLE incoming_payment
    ADD CONSTRAINT fk_incoming_payment_sale_invoice
    FOREIGN KEY (incoming_payment_sale_invoice)
    REFERENCES sale_invoice (id_sale_invoice);

ALTER TABLE incoming_payment
    ADD CONSTRAINT fk_incoming_payment_bank_account 
    FOREIGN KEY (incoming_payment_bank_account) 
    REFERENCES bank_account (id_bank_account); 

-- Suppression et création de la table shipment
DROP TABLE IF EXISTS shipment;
CREATE TABLE shipment (
    id_shipment INT NOT NULL,
    shipment_date TIMESTAMP NOT NULL,
    id_consignment INT not NULL,
    PRIMARY KEY (id_shipment)
);

ALTER TABLE shipment
    ADD CONSTRAINT fk_shipment_consignment
    FOREIGN KEY (id_consignment)
    REFERENCES consignment (id_consignment);