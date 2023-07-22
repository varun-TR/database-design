{\rtf1\ansi\ansicpg1252\cocoartf2706
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab560
\pard\pardeftab560\slleading20\pardirnatural\partightenfactor0

\f0\fs26 \cf0 \
CREATE TABLE CUSTOMER (\
  CUSTOMER_ID NUMBER(4) primary key,\
  FIRST_NAME VARCHAR2(50),\
  LAST_NAME VARCHAR2(50),\
  JOB VARCHAR2(50),\
  SALARY NUMBER(4),\
  ADDRESS VARCHAR2(50)\
);\
\
CREATE INDEX idx_customer ON CUSTOMER (FIRST_NAME, LAST_NAME, JOB, SALARY, ADDRESS);\
\
insert into customer (customer_id,FIRST_NAME, LAST_NAME, JOB, SALARY, ADDRESS) values(1,'varun','TR','machine learning engineer',2000,'hyderabad');\
\
select * from customer;\
\
CREATE TABLE order_table (\
  order_id NUMBER,\
  customer_id NUMBER,\
  status VARCHAR2(255),\
  ship_date DATE,\
  ship_address VARCHAR2(255)\
);\
\
ALTER TABLE order_table\
ADD CONSTRAINT fk_customer_id\
FOREIGN KEY (customer_id)\
REFERENCES customer (customer_id);\
\
INSERT INTO order_table (order_id, customer_id, status, ship_date, ship_address)\
VALUES\
  (1, 1, 'Shipped', TO_DATE('2023-07-22', 'YYYY-MM-DD'), '123 Main St');\
\
\
\
CREATE INDEX idx_primary_key ON order_table (order_id);\
\
CREATE INDEX idx_foreign_key ON order_table (customer_id);\
\
CREATE INDEX idx_key ON order_table (status, ship_date, ship_address);\
\
CREATE TABLE products (\
  prod_id NUMBER primary key,\
  prod_name VARCHAR2(255),\
  prod_category VARCHAR2(255)\
);\
\
INSERT INTO products (prod_id, prod_name, prod_category) VALUES (1, 'Product A', 'Category X');\
INSERT INTO products (prod_id, prod_name, prod_category) VALUES (2, 'Product B', 'Category Y');\
INSERT INTO products (prod_id, prod_name, prod_category) VALUES (3, 'Product C', 'Category Z');\
INSERT INTO products (prod_id, prod_name, prod_category) VALUES (4, 'Product D', 'Category X');\
INSERT INTO products (prod_id, prod_name, prod_category) VALUES (5, 'Product E', 'Category Y');\
\
Cop}