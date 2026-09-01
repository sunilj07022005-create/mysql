use db1;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE,
    age INT CHECK (age >= 18),
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) DEFAULT 'India',
    registration_date DATE DEFAULT (CURRENT_DATE),
    customer_status VARCHAR(20) DEFAULT 'Active'
        CHECK (customer_status IN ('Active', 'Inactive', 'Blocked'))
);

INSERT INTO customers
(customer_id, first_name, last_name, email, phone, age, city, country, registration_date, customer_status)
VALUES
(1, 'Rahul', 'Sharma', 'rahul.sharma@gmail.com', '9876500001', 25, 'Pune', 'India', '2026-01-05', 'Active'),
(2, 'Priya', 'Patel', 'priya.patel@gmail.com', '9876500002', 28, 'Mumbai', 'India', '2026-01-07', 'Active'),
(3, 'Amit', 'Verma', 'amit.verma@gmail.com', '9876500003', 32, 'Delhi', 'India', '2026-01-10', 'Inactive'),
(4, 'Sneha', 'Joshi', 'sneha.joshi@gmail.com', '9876500004', 24, 'Bangalore', 'India', '2026-01-12', 'Active'),
(5, 'Rohan', 'Mehta', 'rohan.mehta@gmail.com', '9876500005', 35, 'Ahmedabad', 'India', '2026-01-15', 'Blocked'),
(6, 'Ananya', 'Singh', 'ananya.singh@gmail.com', '9876500006', 29, 'Delhi', 'India', '2026-01-18', 'Active'),
(7, 'Vikram', 'Kumar', 'vikram.kumar@gmail.com', '9876500007', 41, 'Chennai', 'India', '2026-01-20', 'Active'),
(8, 'Neha', 'Desai', 'neha.desai@gmail.com', '9876500008', 22, 'Pune', 'India', '2026-01-22', 'Inactive'),
(9, 'Arjun', 'Reddy', 'arjun.reddy@gmail.com', '9876500009', 38, 'Hyderabad', 'India', '2026-01-25', 'Active'),
(10, 'Kavya', 'Iyer', 'kavya.iyer@gmail.com', '9876500010', 27, 'Bangalore', 'India', '2026-01-28', 'Active'),

(11, 'Aditya', 'Gupta', 'aditya.gupta@gmail.com', '9876500011', 31, 'Mumbai', 'India', '2026-02-01', 'Active'),
(12, 'Pooja', 'Nair', 'pooja.nair@gmail.com', '9876500012', 26, 'Kochi', 'India', '2026-02-03', 'Inactive'),
(13, 'Karan', 'Malhotra', 'karan.malhotra@gmail.com', '9876500013', 45, 'Delhi', 'India', '2026-02-05', 'Active'),
(14, 'Meera', 'Shah', 'meera.shah@gmail.com', '9876500014', 33, 'Pune', 'India', '2026-02-07', 'Blocked'),
(15, 'Sahil', 'Khan', 'sahil.khan@gmail.com', '9876500015', 19, 'Hyderabad', 'India', '2026-02-10', 'Active'),
(16, 'Isha', 'Kapoor', 'isha.kapoor@gmail.com', NULL, 23, 'Mumbai', 'India', '2026-02-12', 'Active'),
(17, 'Nikhil', 'Rao', 'nikhil.rao@gmail.com', NULL, 37, 'Bangalore', 'India', '2026-02-15', 'Inactive'),
(18, 'Simran', 'Bose', 'simran.bose@gmail.com', '9876500018', 30, 'Kolkata', 'India', '2026-02-18', 'Active'),
(19, 'Varun', 'Chopra', 'varun.chopra@gmail.com', '9876500019', 42, 'Chandigarh', 'India', '2026-02-20', 'Blocked'),
(20, 'Ayesha', 'Ali', 'ayesha.ali@gmail.com', '9876500020', 21, 'Pune', 'India', '2026-02-22', 'Active'),

(21, 'Manish', 'Yadav', 'manish.yadav@gmail.com', '9876500021', 34, 'Jaipur', 'India', '2026-02-25', 'Active'),
(22, 'Riya', 'Mishra', 'riya.mishra@gmail.com', '9876500022', 27, 'Lucknow', 'India', '2026-03-01', 'Active'),
(23, 'Suresh', 'Pillai', 'suresh.pillai@gmail.com', '9876500023', 48, 'Kochi', 'India', '2026-03-03', 'Inactive'),
(24, 'Divya', 'Menon', 'divya.menon@gmail.com', '9876500024', 30, 'Chennai', 'India', '2026-03-05', 'Active'),
(25, 'Akash', 'Agarwal', 'akash.agarwal@gmail.com', '9876500025', 36, 'Delhi', 'India', '2026-03-08', 'Active'),
(26, 'Nisha', 'Bansal', 'nisha.bansal@gmail.com', '9876500026', 25, 'Jaipur', 'India', '2026-03-10', 'Blocked'),
(27, 'Ravi', 'Tiwari', 'ravi.tiwari@gmail.com', '9876500027', 39, 'Lucknow', 'India', '2026-03-12', 'Active'),
(28, 'Shreya', 'Kulkarni', 'shreya.kulkarni@gmail.com', '9876500028', 28, 'Pune', 'India', '2026-03-15', 'Active'),
(29, 'Mohit', 'Saxena', 'mohit.saxena@gmail.com', '9876500029', 44, 'Delhi', 'India', '2026-03-18', 'Inactive'),
(30, 'Tanvi', 'Gokhale', 'tanvi.gokhale@gmail.com', '9876500030', 23, 'Mumbai', 'India', '2026-03-20', 'Active'),

(31, 'Deepak', 'Chauhan', 'deepak.chauhan@gmail.com', '9876500031', 33, 'Chandigarh', 'India', '2026-03-22', 'Active'),
(32, 'Pallavi', 'Sethi', 'pallavi.sethi@gmail.com', '9876500032', 29, 'Kolkata', 'India', '2026-03-25', 'Inactive'),
(33, 'Nitin', 'Arora', 'nitin.arora@gmail.com', '9876500033', 40, 'Delhi', 'India', '2026-03-28', 'Active'),
(34, 'Swati', 'Pandey', 'swati.pandey@gmail.com', '9876500034', 26, 'Lucknow', 'India', '2026-04-01', 'Active'),
(35, 'Raj', 'Thakur', 'raj.thakur@gmail.com', '9876500035', 52, 'Shimla', 'India', '2026-04-03', 'Blocked'),
(36, 'Komal', 'Soni', 'komal.soni@gmail.com', '9876500036', 24, 'Jaipur', 'India', '2026-04-05', 'Active'),
(37, 'Harsh', 'Bhatt', 'harsh.bhatt@gmail.com', '9876500037', 31, 'Ahmedabad', 'India', '2026-04-08', 'Active'),
(38, 'Mansi', 'Patil', 'mansi.patil@gmail.com', NULL, 27, 'Pune', 'India', '2026-04-10', 'Inactive'),
(39, 'Abhishek', 'Das', 'abhishek.das@gmail.com', '9876500039', 38, 'Kolkata', 'India', '2026-04-12', 'Active'),
(40, 'Priti', 'Roy', 'priti.roy@gmail.com', '9876500040', 35, 'Kolkata', 'India', '2026-04-15', 'Active'),

(41, 'Yash', 'Joshi', 'yash.joshi@gmail.com', '9876500041', 22, 'Nagpur', 'India', '2026-04-18', 'Active'),
(42, 'Aarti', 'Deshmukh', 'aarti.deshmukh@gmail.com', '9876500042', 43, 'Nagpur', 'India', '2026-04-20', 'Blocked'),
(43, 'Sameer', 'Shetty', 'sameer.shetty@gmail.com', '9876500043', 37, 'Mangalore', 'India', '2026-04-22', 'Active'),
(44, 'Payal', 'Sinha', 'payal.sinha@gmail.com', '9876500044', 29, 'Patna', 'India', '2026-04-25', 'Inactive'),
(45, 'Gaurav', 'Bhatia', 'gaurav.bhatia@gmail.com', '9876500045', 46, 'Amritsar', 'India', '2026-04-28', 'Active'),
(46, 'Ritu', 'Kaur', 'ritu.kaur@gmail.com', '9876500046', 32, 'Amritsar', 'India', '2026-05-01', 'Active'),
(47, 'Kunal', 'Wagh', 'kunal.wagh@gmail.com', '9876500047', 28, 'Nashik', 'India', '2026-05-03', 'Inactive'),
(48, 'Poonam', 'Jain', 'poonam.jain@gmail.com', '9876500048', 36, 'Nashik', 'India', '2026-05-05', 'Active'),
(49, 'Vivek', 'Mishra', 'vivek.mishra@gmail.com', '9876500049', 50, 'Bhopal', 'India', '2026-05-08', 'Blocked'),
(50, 'Alisha', 'Fernandes', 'alisha.fernandes@gmail.com', '9876500050', 24, 'Goa', 'India', '2026-05-10', 'Active'),

(51, 'Tarun', 'Bajaj', 'tarun.bajaj@gmail.com', '9876500051', 39, 'Surat', 'India', '2026-05-12', 'Active'),
(52, 'Sonia', 'Dutta', 'sonia.dutta@gmail.com', '9876500052', 33, 'Kolkata', 'India', '2026-05-15', 'Inactive'),
(53, 'Pranav', 'Joshi', 'pranav.joshi@gmail.com', '9876500053', 27, 'Pune', 'India', '2026-05-18', 'Active'),
(54, 'Muskan', 'Gupta', 'muskan.gupta@gmail.com', '9876500054', 21, 'Delhi', 'India', '2026-05-20', 'Active'),
(55, 'Rakesh', 'Nair', 'rakesh.nair@gmail.com', '9876500055', 47, 'Kochi', 'India', '2026-05-22', 'Blocked'),
(56, 'Zoya', 'Khan', 'zoya.khan@gmail.com', NULL, 26, 'Mumbai', 'India', '2026-05-25', 'Active'),
(57, 'Anil', 'Pawar', 'anil.pawar@gmail.com', '9876500057', 54, 'Nashik', 'India', '2026-05-27', 'Inactive'),
(58, 'Sakshi', 'More', 'sakshi.more@gmail.com', '9876500058', 23, 'Pune', 'India', '2026-05-29', 'Active'),
(59, 'Omkar', 'Jadhav', 'omkar.jadhav@gmail.com', '9876500059', 30, 'Pune', 'India', '2026-05-30', 'Active');

select * from customers;


USE db1;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10,2) NOT NULL CHECK (unit_price > 0),
    order_date DATE NOT NULL,
    order_status VARCHAR(20) DEFAULT 'Pending'
        CHECK (order_status IN ('Pending', 'Shipped', 'Delivered', 'Cancelled')),

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders
(order_id, customer_id, product_name, category, quantity, unit_price, order_date, order_status)
VALUES
(101, 1, 'Laptop', 'Electronics', 1, 55000.00, '2026-02-01', 'Delivered'),
(102, 2, 'Smartphone', 'Electronics', 1, 30000.00, '2026-02-03', 'Shipped'),
(103, 3, 'Headphones', 'Electronics', 2, 2500.00, '2026-02-05', 'Delivered'),
(104, 1, 'Mouse', 'Accessories', 2, 800.00, '2026-02-07', 'Delivered'),
(105, 4, 'Keyboard', 'Accessories', 1, 1500.00, '2026-02-10', 'Pending'),

(106, 5, 'Monitor', 'Electronics', 1, 12000.00, '2026-02-12', 'Cancelled'),
(107, 6, 'Laptop Bag', 'Accessories', 1, 2200.00, '2026-02-15', 'Delivered'),
(108, 7, 'Tablet', 'Electronics', 1, 25000.00, '2026-02-18', 'Shipped'),
(109, 8, 'Smartwatch', 'Electronics', 1, 5000.00, '2026-02-20', 'Delivered'),
(110, 9, 'Power Bank', 'Accessories', 2, 1200.00, '2026-02-22', 'Delivered'),

(111, 10, 'Keyboard', 'Accessories', 2, 1500.00, '2026-02-25', 'Delivered'),
(112, 11, 'Laptop', 'Electronics', 1, 60000.00, '2026-03-01', 'Shipped'),
(113, 12, 'Mouse', 'Accessories', 1, 900.00, '2026-03-03', 'Cancelled'),
(114, 13, 'Monitor', 'Electronics', 2, 15000.00, '2026-03-05', 'Delivered'),
(115, 14, 'Smartphone', 'Electronics', 1, 28000.00, '2026-03-07', 'Pending'),

(116, 15, 'Headphones', 'Electronics', 1, 3500.00, '2026-03-10', 'Delivered'),
(117, 16, 'Tablet', 'Electronics', 1, 22000.00, '2026-03-12', 'Shipped'),
(118, 18, 'Laptop Bag', 'Accessories', 2, 2000.00, '2026-03-15', 'Delivered'),
(119, 19, 'Monitor', 'Electronics', 1, 14000.00, '2026-03-18', 'Cancelled'),
(120, 20, 'Smartwatch', 'Electronics', 1, 4500.00, '2026-03-20', 'Delivered'),

(121, 21, 'Laptop', 'Electronics', 1, 58000.00, '2026-03-22', 'Delivered'),
(122, 22, 'Mouse', 'Accessories', 3, 750.00, '2026-03-25', 'Pending'),
(123, 23, 'Keyboard', 'Accessories', 1, 1800.00, '2026-03-27', 'Shipped'),
(124, 24, 'Smartphone', 'Electronics', 1, 32000.00, '2026-03-29', 'Delivered'),
(125, 25, 'Tablet', 'Electronics', 2, 20000.00, '2026-04-01', 'Delivered'),

(126, 26, 'Power Bank', 'Accessories', 1, 1500.00, '2026-04-03', 'Cancelled'),
(127, 27, 'Headphones', 'Electronics', 2, 3000.00, '2026-04-05', 'Delivered'),
(128, 28, 'Laptop Bag', 'Accessories', 1, 2500.00, '2026-04-08', 'Shipped'),
(129, 29, 'Monitor', 'Electronics', 1, 13000.00, '2026-04-10', 'Delivered'),
(130, 30, 'Smartwatch', 'Electronics', 2, 4800.00, '2026-04-12', 'Pending'),

(131, 31, 'Laptop', 'Electronics', 1, 62000.00, '2026-04-15', 'Delivered'),
(132, 32, 'Mouse', 'Accessories', 2, 850.00, '2026-04-18', 'Delivered'),
(133, 33, 'Keyboard', 'Accessories', 1, 1700.00, '2026-04-20', 'Shipped'),
(134, 34, 'Smartphone', 'Electronics', 1, 29000.00, '2026-04-22', 'Delivered'),
(135, 35, 'Monitor', 'Electronics', 1, 16000.00, '2026-04-25', 'Cancelled'),

(136, 36, 'Tablet', 'Electronics', 1, 24000.00, '2026-04-28', 'Delivered'),
(137, 37, 'Headphones', 'Electronics', 1, 3200.00, '2026-05-01', 'Shipped'),
(138, 38, 'Power Bank', 'Accessories', 2, 1100.00, '2026-05-03', 'Delivered'),
(139, 39, 'Laptop Bag', 'Accessories', 1, 2300.00, '2026-05-05', 'Pending'),
(140, 40, 'Smartwatch', 'Electronics', 1, 5200.00, '2026-05-07', 'Delivered'),

(141, 41, 'Laptop', 'Electronics', 1, 57000.00, '2026-05-10', 'Delivered'),
(142, 42, 'Smartphone', 'Electronics', 1, 31000.00, '2026-05-12', 'Cancelled'),
(143, 43, 'Monitor', 'Electronics', 2, 12500.00, '2026-05-15', 'Shipped'),
(144, 44, 'Keyboard', 'Accessories', 1, 1600.00, '2026-05-18', 'Delivered'),
(145, 45, 'Tablet', 'Electronics', 1, 21000.00, '2026-05-20', 'Delivered'),

(146, 46, 'Headphones', 'Electronics', 2, 2800.00, '2026-05-22', 'Pending'),
(147, 47, 'Mouse', 'Accessories', 1, 950.00, '2026-05-25', 'Delivered'),
(148, 48, 'Laptop', 'Electronics', 1, 59000.00, '2026-05-27', 'Shipped'),
(149, 49, 'Power Bank', 'Accessories', 3, 1000.00, '2026-05-29', 'Cancelled'),
(150, 50, 'Smartwatch', 'Electronics', 1, 4900.00, '2026-05-30', 'Delivered'),

(151, 1, 'Keyboard', 'Accessories', 1, 1600.00, '2026-06-01', 'Delivered'),
(152, 6, 'Mouse', 'Accessories', 2, 850.00, '2026-06-03', 'Shipped'),
(153, 10, 'Headphones', 'Electronics', 1, 3000.00, '2026-06-05', 'Delivered'),
(154, 13, 'Laptop Bag', 'Accessories', 1, 2400.00, '2026-06-07', 'Pending'),
(155, 18, 'Smartphone', 'Electronics', 1, 27000.00, '2026-06-10', 'Delivered'),

(156, 21, 'Monitor', 'Electronics', 1, 14500.00, '2026-06-12', 'Shipped'),
(157, 25, 'Keyboard', 'Accessories', 2, 1550.00, '2026-06-15', 'Delivered'),
(158, 28, 'Power Bank', 'Accessories', 1, 1300.00, '2026-06-18', 'Delivered'),
(159, 31, 'Smartphone', 'Electronics', 1, 33000.00, '2026-06-20', 'Pending'),
(160, 40, 'Laptop', 'Electronics', 1, 61000.00, '2026-06-22', 'Delivered');

-- perform the innerjoin operation
select c.customer_id, c.first_name,c.last_name ,o.order_id, o.product_name
	from customers as c 
    inner join orders as o 
    on o.customer_id = c.customer_id;


-- Write a query to display the customer ID, customer name, order ID, and product name for all customers who have placed an order.
select c.customer_id, c.first_name,c.last_name, o.order_id, o.product_name ,o.order_status from customers as c inner join orders  as o on c.customer_id = o.customer_id where order_status='delivered' ; 

-- Write a query to display all customers along with their orders, including customers who have never placed an order.
select c.customer_id, c.first_name, c.last_name,o.order_id ,o.order_status,o.product_name from customers as c left join orders as o on c.customer_id = o.customer_id;

-- Write a query to find customers who have never placed an order.
select c.customer_id,c.first_name , c.last_name, o.order_id,o.product_name ,o.order_status from customers as c left join orders as o on c.customer_id = o.customer_id where order_status <>'delivered' ; 

-- Write a query to display the customer name, product name, quantity, and order status for all delivered orders.
select c.first_name, c.last_name,o.product_name ,o.quantity from customers as c left join orders as o on o.customer_id = c.customer_id where  order_status = "delivered";

-- Display the customer's first name, last name, order ID, and product name for every order
select c.first_name, c.last_name, o.order_id, o.product_name from customers as c inner join orders as o on c.customer_id = o.customer_id; 

-- Display every customer and their orders. Customers without any orders should also appear.
select c.first_name , c.last_name, o.product_name from customers as c left join orders as o on c.customer_id = o.customer_id;

-- Find the customers who purchased Electronics products. Display their name, city, product name, and category
select c.first_name, c.last_name, o.category, o.product_name from customers as c inner join orders as o on c.customer_id = o.customer_id where category = "Electronics";

-- Display the customer name, product name, quantity, unit price, and calculate the total amount for each order.
select c.first_name, c.last_name, o.product_name, o.quantity, o.unit_price, o.quantity * o.unit_price as total_product_price_bycombining_all from customers as c inner join orders as o on c.customer_id = o.customer_id;

-- Find the total amount spent by each customer.
select c.first_name, c.last_name, sum(o.unit_price * o.quantity)  as total_amount 
	from customers as c 
    inner join orders as o 
    on c.customer_id = o.customer_id 
    group by c.first_name ,c.last_name, c.customer_id; 
    
-- Find customers whose total spending is greater than ₹50,000
select c.first_name , c.last_name , sum(unit_price * quantity) as total_price 
	from customers as c 
    inner join orders as o
    on c.customer_id = o.customer_id 
    group by c.customer_id, c.first_name, c.last_name  
    having sum(unit_price * quantity)>50000;
    
-- Find the number of orders placed by each customer, including customers with zero orders.

select c.first_name, c.last_name, count(o.order_status)  as number_of_order_placed
	from customers as c 
    right join orders as o 
    on c.customer_id = o.customer_id
    group by c.first_name, c.last_name, c.customer_id;
    
-- Find customers who purchased both Electronics and Accessories.
select c.first_name, c.last_name
from customers as c 
inner join orders as o 
on c.customer_id = o.customer_id 
group by c.first_name, c.last_name , c.customer_id 
-- having category ='electronics' or 'accessories'
having count(distinct o.category)=2
;

-- Display the customer's first name, last name, product name, and price for orders where the price is greater than ₹20,000.
select c.first_name ,c.last_name, o.product_name, o.unit_price
	 from customers as c 
     inner join orders as o  
     on c.customer_id = o.customer_id 
     where unit_price>20000;

-- Find customers from Pune who have placed an order.
select c.first_name, c.last_name, o.product_name, o.order_status, c.city
	 from customers as c inner join orders as o
     where o.order_status = 'delivered' and c.city = 'pune';

-- Find customers who are Active and have purchased an Electronics product.
select c.customer_id, c.customer_status , o.product_name 
	from customers as c 
    inner join orders as o 
    on c.customer_id = o.customer_id 
    where c.customer_status = 'active' and o.category = 'electronics';

-- Display customers who purchased an Electronics product with a price greater than ₹25,000.
select c.first_name, c.last_name, o.category 
	from customers as c 
    inner join orders as o 
    on  c.customer_id = o.customer_id 
    where o.category ='electronics' and o.unit_price > 25000;

-- Find the number of orders placed by each customer.
select c.first_name, c.last_name, count(o.order_id) as order_count
	from customers as c 
	inner join orders as o
	on o.customer_id = c.customer_id 
    group by c.first_name,c.last_name, c.customer_id,c.customer_id;

-- Find customers who have placed more than 1 order.
select c.first_name, c.last_name, count(o.order_id) as order_placed
	from customers as c 
    inner join orders as o 
    on  c.customer_id = o.customer_id
    -- where o.order_status = 'delivered'
    group by c.customer_id, c.first_name, c.last_name 
    having count(order_id) >1;

-- Find customers who have placed more than 2 orders.

-- Find the number of orders placed by customers from each city.

-- Find the number of different categories purchased by each customer.

-- Find customers who purchased both Electronics and Accessories.

-- Find customers who purchased at least 2 different products.

-- Find the number of different customers who purchased each product.

-- Find customers whose Electronics spending is greater than ₹30,000.

-- Find customers who have placed more than 2 Delivered orders.

-- Find customers whose total spending is greater than ₹50,000.

-- Find customers who have purchased more than 2 different products.

-- Level 5 — AND / OR + JOIN 🔥
-- Find customers who are Active AND have placed an order.

-- Find customers who live in Pune OR Mumbai and have placed an order.

-- Find customers who purchased Electronics AND spent more than ₹30,000 on Electronics.

-- Find customers who purchased Electronics OR Accessories, but only include Delivered orders.

-- Mixed Challenges
-- Find customers who have placed more than 1 order AND whose total spending is greater than ₹50,000.

-- Find customers who purchased both Electronics and Accessories AND have placed more than 2 orders.

-- Find customers who purchased only Electronics and never purchased Accessories.

-- Find the city having the highest number of orders.

-- Find the customer who has the highest total spending.

-- Find customers who have at least 2 different categories AND total spending greater than ₹30,000.

-- Find each customer's:
-- first name
-- last name
-- number of orders
-- total quantity purchased
-- total spending

-- Find customers who have more than 1 order, purchased at least 2 different categories, and have total spending greater than ₹50,000.