-- on fait view 'buyers_by product_view' 
DROP VIEW IF EXISTS buyers_by_product_view;
CREATE VIEW buyers_by_product_view AS
SELECT 
       cust.customer_name AS buyer,
       country.country_name AS buyer_country,
       nomenclature.nomenclature_name AS product,
       CAST(SUM(cons.consignment_price * cons.consignment_quantity) * get_exchange_rate(si.invoice_currency, si.invoice_date) AS DECIMAL(15,2)) AS sales_amount_CHF,
       CAST(SUM(cons.consignment_quantity) AS DECIMAL(12,3)) AS sales_volume,
       mu.measure_unit_short_name AS units 
       
FROM sale_invoice si
INNER JOIN consignment cons ON cons.consignment_sale_invoice = si.id_sale_invoice
LEFT JOIN incoming_payment ip ON ip.incoming_payment_sale_invoice = si.id_sale_invoice
INNER JOIN sale_contract sc ON si.invoice_contract = sc.id_sale_contract
INNER JOIN customer cust ON cust.id_customer = sc.contract_customer
INNER JOIN currency cur ON si.invoice_currency = cur.id_currency
INNER JOIN country ON country.id_country = cust.customer_country
INNER JOIN sale_point sp ON sp.id_sale_point = sc.contract_sale_point
INNER JOIN incoterms ON incoterms.id_incoterms = sp.sale_point_incoterms
INNER JOIN place ON place.id_place = sp.sale_point_place
INNER JOIN nomenclature ON nomenclature.id_nomenclature = cons.consignment_nomenclature
INNER JOIN measure_unit mu ON mu.id_measure_unit = nomenclature.nomenclature_measure_unit
GROUP BY cust.customer_name, country.country_name, nomenclature.nomenclature_name, mu.measure_unit_short_name, si.id_sale_invoice;

SELECT * FROM buyers_by_product_view;

-- on fait view 'sales_statistics_view' 
DROP VIEW IF EXISTS sales_statistics_view;
CREATE VIEW sales_statistics_view AS
SELECT 
       si.invoice_date AS sale_date,
       cons.id_consignment AS consignment_id,
       nomenclature.nomenclature_name AS product,
       cons.consignment_quantity AS quantity_sold,
       mu.measure_unit_short_name AS units,
       cons.consignment_price AS sale_price,
       cur.currency_code AS currency,
       CAST(cons.consignment_price * get_exchange_rate(si.invoice_currency, si.invoice_date) AS DECIMAL(9,2)) AS sales_price_CHF,
       CAST(cons.consignment_price * cons.consignment_quantity AS DECIMAL(15,2)) AS sales_amount,
       CAST(cons.consignment_price * cons.consignment_quantity * get_exchange_rate(si.invoice_currency, si.invoice_date) AS DECIMAL(15,2)) AS sales_amount_CHF,
       incoterms.incoterms_name AS sale_terms,
       place.place_name AS sale_point,
       sp_country.country_name AS sale_point_country,
       cust.customer_name AS buyer,
       buyers_country.country_name AS buyer_country
       
       
FROM sale_invoice si
INNER JOIN consignment cons ON cons.consignment_sale_invoice = si.id_sale_invoice
INNER JOIN sale_contract sc ON si.invoice_contract = sc.id_sale_contract
INNER JOIN customer cust ON cust.id_customer = sc.contract_customer
INNER JOIN currency cur ON si.invoice_currency = cur.id_currency
INNER JOIN country buyers_country ON buyers_country.id_country = cust.customer_country
INNER JOIN sale_point sp ON sp.id_sale_point = sc.contract_sale_point
INNER JOIN incoterms ON incoterms.id_incoterms = sp.sale_point_incoterms
INNER JOIN place ON place.id_place = sp.sale_point_place
INNER JOIN nomenclature ON nomenclature.id_nomenclature = cons.consignment_nomenclature
INNER JOIN measure_unit mu ON mu.id_measure_unit = nomenclature.nomenclature_measure_unit
INNER JOIN country sp_country ON sp_country.id_country = place.place_country
ORDER BY si.invoice_date, nomenclature.id_nomenclature;

SELECT * FROM sales_statistics_view
WHERE sale_date BETWEEN '2023-01-01' AND '2023-01-31';
