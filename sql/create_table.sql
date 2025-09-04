-- Primeiro, certifique-se de que não há transação pendente
ROLLBACK;

-- Execute cada comando separadamente sem a transação BEGIN/COMMIT
DROP TABLE IF EXISTS public.transaction_detail CASCADE;
DROP TABLE IF EXISTS public.sale_transaction CASCADE;
DROP TABLE IF EXISTS public.product CASCADE;
DROP TABLE IF EXISTS public.product_type CASCADE;

-- Create product_type table first
CREATE TABLE public.product_type
(
    product_type_id integer NOT NULL PRIMARY KEY,
    product_type_name character varying(45) NOT NULL,
    category character varying(45) NOT NULL
);

-- Create product table
CREATE TABLE public.product
(
    product_id integer NOT NULL PRIMARY KEY,
    product_category character varying(45),
    product_type_id integer,
    product_name character varying(45),
    description character varying(60),
    price numeric(8, 2),
    FOREIGN KEY (product_type_id) REFERENCES public.product_type(product_type_id)
);

-- Create sale_transaction table
CREATE TABLE public.sale_transaction
(
    transaction_id integer NOT NULL PRIMARY KEY,
    transaction_date date,
    transaction_time time with time zone,
    sale_outlet_id integer,
    staff_id integer,
    customer_id integer
);

-- Create transaction_detail table
CREATE TABLE public.transaction_detail
(
    transaction_detail_id integer NOT NULL PRIMARY KEY,
    transaction_id integer,
    product_id integer,
    quantity integer,
    price numeric(8, 2),
    FOREIGN KEY (transaction_id) REFERENCES public.sale_transaction(transaction_id),
    FOREIGN KEY (product_id) REFERENCES public.product(product_id)
);

-- Create staff table
CREATE TABLE public.staff
(
    staff_id integer NOT NULL PRIMARY KEY,
    first_name character varying(45),
    last_name character varying(45),
    position character varying(45),
    start_date date,
    location
);

-- Create staff table
CREATE TABLE public.sales_outlet 
(
    sales_outlet_id integer NOT NULL PRIMARY KEY,
    sales_outlet_type character varying(45),	 
    address	character varying(60),
    city character varying(45),
    telephone character varying(45),	 
    postal_code integer,
    manager character varying(45)
)

-- Create staff table
CREATE TABLE public.customer
(
    customer_id integer NOT NULL PRIMARY KEY,
    customer_name character varying(45),	 
    customer_email	character varying(60),
    customer_since date,
    customer_card_number character varying(45),	 
    birthdate date,
    gender character varying(45)
)
			