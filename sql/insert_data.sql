-- insert data staff table
INSERT INTO public.staff (staff_id, first_name, last_name, position, start_date, location) VALUES
(1, 'Sue', 'Tindale', 'CFO', '2001-03-08', 'HQ'),
(2, 'Ian', 'Tindale', 'CEO', '2001-08-03', 'HQ'),
(3, 'Marny', 'Hermione', 'Roaster', '2007-10-24', 'WH'),
(4, 'Chelsea', 'Claudia', 'Roaster', '2003-07-03', 'WH'),
(5, 'Alec', 'Isadora', 'Roaster', '2008-04-02', 'WH'),
(6, 'Xena', 'Rahim', 'Store Manager', '2016-07-24', '3'),
(7, 'Kelsey', 'Cameron', 'Coffee Wrangler', '2003-10-18', '3'),
(8, 'Hamilton', 'Emi', 'Coffee Wrangler', '2005-02-09', '3'),
(9, 'Caldwell', 'Veda', 'Coffee Wrangler', '2013-09-09', '3'),
(10, 'Irna', 'Winifred', 'Coffee Wrangler', '2016-12-10', '3');

-- insert data sales_outlet table
INSERT INTO public.sales_outlet (sales_outlet_id, sales_outlet_type, address, city, telephone, postal_code, manager) VALUES
(2, 'warehouse', '164-14 Jamaica Ave', 'Jamaica', '972-871-0402', '11432', NULL),
(3, 'retail', '32-20 Broadway', 'Long Island City', '777-718-3190', '11106', 6),
(4, 'retail', '604 Union Street', 'Brooklyn', '619-347-5193', '11215', 11),
(5, 'retail', '100 Church Street', 'New York', '343-212-5151', '10007', 16);

-- insert data sale_transaction table (COM TODAS AS COLUNAS)
INSERT INTO public.sale_transaction (transaction_id, transaction_date, transaction_time, sales_outlet_id, staff_id, customer_id, product_id, quantity, price) VALUES
(1, '2019-04-27', '09:53:55', 2, 7, 0, 38, 2, 3.75),
(2, '2019-04-27', '09:53:55', 2, 8, 0, 84, 1, 0.80),
(3, '2019-04-27', '08:00:34', 3, 9, 0, 51, 2, 3.00),
(4, '2019-04-27', '09:04:58', 3, 10, 0, 33, 1, 3.50),
(5, '2019-04-27', '08:48:32', 4, 4, 8232, 27, 1, 3.50),
(6, '2019-04-27', '09:21:40', 5, 5, 8223, 24, 1, 3.00);

-- insert data transaction_detail table

INSERT INTO public.transaction_detail (transaction_detail_id, transaction_id, product_id, quantity, price) VALUES
(1, 1, 1, 2, 7.50),
(2, 1, 1, 1, 3.75),
(3, 2, 2, 2, 3.00),
(4, 3, 3, 1, 3.50),
(5, 4, 4, 1, 5.50),
(6, 5, 5, 1, 3.00);

-- insert data customer table

INSERT INTO public.customer (customer_id, customer_name, customer_email, customer_since, customer_card_number, birthdate, gender) VALUES
(3001, 'Kelly Key', 'Venus@adipiscing.edu', '2017-01-04', '908-424-2890', '1950-05-29', 'M'),
(3002, 'Clark Schroeder', 'Nora@fames.gov', '2017-01-07', '032-732-6308', '1950-07-30', 'M'),
(3003, 'Elvis Cardenas', 'Brianna@tellus.edu', '2017-01-10', '459-375-9187', '1950-09-30', 'M'),
(3004, 'Rafael Estes', 'Ina@non.gov', '2017-01-13', '576-640-9226', '1950-12-01', 'M'),
(3005, 'Colin Lynn', 'Dale@Integer.com', '2017-01-15', '344-674-6569', '1951-02-01', 'M');


-- insert data product table
INSERT INTO public.product (product_id, product_category, product_type, product_name, description, price) VALUES
(1, 'Coffee beans', 'Organic Beans', 'Brazilian - Organic', 'It''s like Carnival in a cup. Clean and smooth.', 18.00),
(2, 'Coffee beans', 'House blend Beans', 'Our Old Time Diner Blend', 'Our packed blend of beans that is reminiscent of the cup of coffee you used to get at a diner.', 18.00),
(3, 'Coffee beans', 'Espresso Beans', 'Espresso Roast', 'Our house blend for a good espresso shot.', 14.75),
(4, 'Coffee beans', 'Espresso Beans', 'Primo Espresso Roast', 'Our premium single source of hand roasted beans.', 20.45),
(5, 'Coffee beans', 'Gourmet Beans', 'Columbian Medium Roast', 'A smooth cup of coffee any time of day.', 15.00),
(6, 'Coffee beans', 'Gourmet Beans', 'Ethiopia', 'From the home of coffee.', 21.00);