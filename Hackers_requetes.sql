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