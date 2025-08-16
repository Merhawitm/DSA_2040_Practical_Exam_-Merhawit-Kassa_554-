-- =======================
-- Reset existing tables
-- =======================
DROP TABLE IF EXISTS fact_sales;
DROP TABLE IF EXISTS dim_customer;
DROP TABLE IF EXISTS dim_product;
DROP TABLE IF EXISTS dim_time;
DROP TABLE IF EXISTS dim_store;

-- =======================
-- Dimension table: Customers
-- =======================
CREATE TABLE dim_customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    gender ENUM('Male','Female','Other'),
    age_group VARCHAR(20),
    location VARCHAR(100)
);

-- =======================
-- Dimension table: Products
-- =======================
CREATE TABLE dim_product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    brand VARCHAR(50)
);

-- =======================
-- Dimension table: Time
-- =======================
CREATE TABLE dim_time (
    time_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    quarter VARCHAR(10) NOT NULL,
    year INT NOT NULL
);

-- =======================
-- Dimension table: Store
-- =======================
CREATE TABLE dim_store (
    store_id INT AUTO_INCREMENT PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    region VARCHAR(50),
    manager_name VARCHAR(100)
);

-- =======================
-- Fact table: Sales
-- =======================
CREATE TABLE fact_sales (
    sales_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    time_id INT NOT NULL,
    store_id INT NOT NULL,
    quantity_sold INT NOT NULL,
    sales_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (time_id) REFERENCES dim_time(time_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id)
);
