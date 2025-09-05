-- create staff locations view

CREATE OR REPLACE VIEW staff_locations_view AS
SELECT staff_id, first_name, last_name, location 
FROM public.staff;

-- create materialized product_info_m view

CREATE MATERIALIZED VIEW product_info_m_view AS
SELECT product_name, description, product_category
FROM public.product
WITH DATA;