CREATE DATABASE coffee_shop;
USE coffee_shop;

-- Table for products (coffee, snacks, etc.)

CREATE TABLE product(
ProductID INT PRIMARY KEY, 
ProductName VARCHAR(100), 
Category VARCHAR(50), 
Price DECIMAL(5, 2)
);

-- Table for customers

CREATE TABLE Customers(
CustomerID INT PRIMARY KEY, 
CustomerName VARCHAR(100), 
ContactInfo VARCHAR(100) 
);

-- Table for sales 
CREATE TABLE Sales ( 
SaleID INT PRIMARY KEY, 
CustomerID INT, 
ProductID INT, 
Quantity INT, 
SaleDate DATE, 
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID), 
FOREIGN KEY (ProductID) REFERENCES Product(ProductID) 
);

INSERT INTO Product (ProductID, ProductName, Category, Price) VALUES 
(1, 'Espresso', 'Beverage', 150.00),
(2, 'Cappuccino', 'Beverage', 200.00),
(3, 'Latte', 'Beverage', 180.00),
(4, 'Muffin', 'Snack', 80.00),
(5, 'Croissant', 'Snack', 100.00),
(6, 'Americano', 'Beverage', 160.00),
(7, 'Mocha', 'Beverage', 220.00),
(8, 'Bagel', 'Snack', 90.00),
(9, 'Brownie', 'Snack', 120.00),
(10, 'Tea', 'Beverage', 100.00),
(11, 'Hot Chocolate', 'Beverage', 130.00),
(12, 'Iced Coffee', 'Beverage', 180.00),
(13, 'Cold Brew', 'Beverage', 200.00),
(14, 'Smoothie', 'Beverage', 250.00),
(15, 'Sandwich', 'Snack', 150.00),
(16, 'Cake', 'Snack', 200.00),
(17, 'Danish', 'Snack', 110.00),
(18, 'Scone', 'Snack', 95.00),
(19, 'Cookie', 'Snack', 50.00),
(20, 'Biscotti', 'Snack', 60.00),
(21, 'Macaron', 'Snack', 70.00),
(22, 'Pudding', 'Snack', 90.00),
(23, 'Milkshake', 'Beverage', 210.00),
(24, 'Lemonade', 'Beverage', 120.00),
(25, 'Herbal Tea', 'Beverage', 150.00),
(26, 'Flat White', 'Beverage', 170.00),
(27, 'Green Tea', 'Beverage', 140.00),
(28, 'Oolong Tea', 'Beverage', 150.00),
(29, 'Matcha Latte', 'Beverage', 230.00),
(30, 'Turmeric Latte', 'Beverage', 220.00),
(31, 'Frappuccino', 'Beverage', 240.00),
(32, 'Nitro Cold Brew', 'Beverage', 260.00),
(33, 'Tiramisu', 'Snack', 280.00),
(34, 'Cheesecake', 'Snack', 300.00),
(35, 'Donut', 'Snack', 70.00),
(36, 'Eclair', 'Snack', 130.00),
(37, 'Panini', 'Snack', 190.00),
(38, 'Quiche', 'Snack', 220.00),
(39, 'Salad', 'Snack', 150.00),
(40, 'Bruschetta', 'Snack', 140.00),
(41, 'Pasta', 'Snack', 250.00),
(42, 'Pizza Slice', 'Snack', 180.00),
(43, 'Chicken Wrap', 'Snack', 200.00),
(44, 'Veggie Wrap', 'Snack', 180.00),
(45, 'Falafel', 'Snack', 160.00),
(46, 'Hummus', 'Snack', 130.00),
(47, 'Pita Bread', 'Snack', 70.00),
(48, 'Greek Yogurt', 'Snack', 100.00),
(49, 'Granola', 'Snack', 90.00),
(50, 'Berry Parfait', 'Snack', 150.00),
(51, 'Apple Pie', 'Snack', 200.00),
(52, 'Pumpkin Pie', 'Snack', 220.00),
(53, 'Blueberry Muffin', 'Snack', 90.00),
(54, 'Banana Bread', 'Snack', 100.00),
(55, 'Zucchini Bread', 'Snack', 110.00),
(56, 'Carrot Cake', 'Snack', 210.00),
(57, 'Red Velvet Cake', 'Snack', 220.00),
(58, 'Black Forest Cake', 'Snack', 280.00),
(59, 'Chocolate Cake', 'Snack', 250.00),
(60, 'Ice Cream', 'Snack', 150.00),
(61, 'Sorbet', 'Snack', 130.00),
(62, 'Gelato', 'Snack', 140.00),
(63, 'Cupcake', 'Snack', 90.00),
(64, 'Brownie Sundae', 'Snack', 180.00),
(65, 'Affogato', 'Beverage', 200.00),
(66, 'Chai Latte', 'Beverage', 190.00),
(67, 'Mexican Hot Chocolate', 'Beverage', 200.00),
(68, 'Peppermint Mocha', 'Beverage', 210.00),
(69, 'Pumpkin Spice Latte', 'Beverage', 220.00),
(70, 'Eggnog Latte', 'Beverage', 230.00),
(71, 'Shaken Iced Tea', 'Beverage', 120.00),
(72, 'Frappe', 'Beverage', 160.00),
(73, 'Espresso Macchiato', 'Beverage', 170.00),
(74, 'Cortado', 'Beverage', 180.00),
(75, 'Café au Lait', 'Beverage', 150.00),
(76, 'Iced Tea', 'Beverage', 140.00),
(77, 'Iced Matcha', 'Beverage', 200.00),
(78, 'Cold Brew Latte', 'Beverage', 220.00),
(79, 'Peach Tea', 'Beverage', 160.00),
(80, 'Ginger Tea', 'Beverage', 130.00),
(81, 'Chamomile Tea', 'Beverage', 140.00),
(82, 'Rooibos Tea', 'Beverage', 150.00),
(83, 'Bubble Tea', 'Beverage', 180.00),
(84, 'Milk Tea', 'Beverage', 170.00),
(85, 'Vietnamese Coffee', 'Beverage', 200.00),
(86, 'Turkish Coffee', 'Beverage', 220.00),
(87, 'Affogato', 'Beverage', 240.00),
(88, 'Gingerbread Latte', 'Beverage', 250.00),
(89, 'Tiramisu Latte', 'Beverage', 260.00),
(90, 'Espresso Con Panna', 'Beverage', 190.00),
(91, 'Viennese Coffee', 'Beverage', 210.00),
(92, 'Flat White Mocha', 'Beverage', 230.00),
(93, 'Dirty Chai Latte', 'Beverage', 220.00),
(94, 'Black Tea Latte', 'Beverage', 210.00),
(95, 'White Chocolate Mocha', 'Beverage', 240.00),
(96, 'Honey Almond Latte', 'Beverage', 250.00),
(97, 'Lavender Latte', 'Beverage', 230.00),
(98, 'Rose Latte', 'Beverage', 220.00),
(99, 'Maple Latte', 'Beverage', 210.00),
(100, 'Fruit Salad', 'Snack', 220.00);

SELECT * FROM product;

INSERT INTO Customers (CustomerID, CustomerName, ContactInfo) VALUES 
(1, 'John Doe', 'john.doe@example.com'), 
(2, 'Jane Smith', 'jane.smith@example.com'), 
(3, 'Michael Brown', 'michael.brown@example.com'), 
(4, 'Emily Davis', 'emily.davis@example.com'), 
(5, 'Sageet', 'sageet@example.com'), 
(6, 'Alice Green', 'alice.green@example.com'), 
(7, 'Tom White', 'tom.white@example.com'), 
(8, 'Linda Black', 'linda.black@example.com'), 
(9, 'Robert Wilson', 'robert.wilson@example.com'), 
(10, 'Laura Johnson', 'laura.johnson@example.com'),
(11, 'David Clark', 'david.clark@example.com'),
(12, 'Susan Martinez', 'susan.martinez@example.com'),
(13, 'Steven Lee', 'steven.lee@example.com'),
(14, 'Mary Walker', 'mary.walker@example.com'),
(15, 'Daniel Hall', 'daniel.hall@example.com'),
(16, 'Sarah Young', 'sarah.young@example.com'),
(17, 'Paul Allen', 'paul.allen@example.com'),
(18, 'Karen King', 'karen.king@example.com'),
(19, 'Nancy Scott', 'nancy.scott@example.com'),
(20, 'Betty Hill', 'betty.hill@example.com'),
(21, 'Samuel Adams', 'samuel.adams@example.com'),
(22, 'Heather Turner', 'heather.turner@example.com'),
(23, 'Patrick Miller', 'patrick.miller@example.com'),
(24, 'Jennifer Rivera', 'jennifer.rivera@example.com'),
(25, 'Charles Carter', 'charles.carter@example.com'),
(26, 'Jessica Collins', 'jessica.collins@example.com'),
(27, 'Andrew Martinez', 'andrew.martinez@example.com'),
(28, 'Melissa Edwards', 'melissa.edwards@example.com'),
(29, 'Joshua Sanchez', 'joshua.sanchez@example.com'),
(30, 'Dorothy Ramirez', 'dorothy.ramirez@example.com'),
(31, 'Brian Bailey', 'brian.bailey@example.com'),
(32, 'Angela Moore', 'angela.moore@example.com'),
(33, 'Jason Perry', 'jason.perry@example.com'),
(34, 'Christine Reed', 'christine.reed@example.com'),
(35, 'Mark Stewart', 'mark.stewart@example.com'),
(36, 'Debra Morris', 'debra.morris@example.com'),
(37, 'Kenneth Hughes', 'kenneth.hughes@example.com'),
(38, 'Carolyn Price', 'carolyn.price@example.com'),
(39, 'George Russell', 'george.russell@example.com'),
(40, 'Sharon Henderson', 'sharon.henderson@example.com'),
(41, 'Christopher Brooks', 'christopher.brooks@example.com'),
(42, 'Dorothy Bryant', 'dorothy.bryant@example.com'),
(43, 'Paul Flores', 'paul.flores@example.com'),
(44, 'Nancy Watson', 'nancy.watson@example.com'),
(45, 'Frank Nelson', 'frank.nelson@example.com'),
(46, 'Ruth Gonzales', 'ruth.gonzales@example.com'),
(47, 'Richard Howard', 'richard.howard@example.com'),
(48, 'Sandra Ward', 'sandra.ward@example.com'),
(49, 'Joseph Sanders', 'joseph.sanders@example.com'),
(50, 'Donna Morris', 'donna.morris@example.com'),
(51, 'Edward Jenkins', 'edward.jenkins@example.com'),
(52, 'Kimberly Ross', 'kimberly.ross@example.com'),
(53, 'Anthony Long', 'anthony.long@example.com'),
(54, 'Patricia Evans', 'patricia.evans@example.com'),
(55, 'Steven Richardson', 'steven.richardson@example.com'),
(56, 'Barbara Bell', 'barbara.bell@example.com'),
(57, 'Donald James', 'donald.james@example.com'),
(58, 'Margaret Cook', 'margaret.cook@example.com'),
(59, 'Kevin Morgan', 'kevin.morgan@example.com'),
(60, 'Linda Parker', 'linda.parker@example.com'),
(61, 'Brian Scott', 'brian.scott@example.com'),
(62, 'Sarah Murphy', 'sarah.murphy@example.com'),
(63, 'Gregory Kelly', 'gregory.kelly@example.com'),
(64, 'Lisa Brooks', 'lisa.brooks@example.com'),
(65, 'Ronald Powell', 'ronald.powell@example.com'),
(66, 'Karen Patterson', 'karen.patterson@example.com'),
(67, 'Larry Brooks', 'larry.brooks@example.com'),
(68, 'Betty Hughes', 'betty.hughes@example.com'),
(69, 'Cynthia Diaz', 'cynthia.diaz@example.com'),
(70, 'Stephen Peterson', 'stephen.peterson@example.com'),
(71, 'Emily Cooper', 'emily.cooper@example.com'),
(72, 'Mark Reed', 'mark.reed@example.com'),
(73, 'Daniel Rogers', 'daniel.rogers@example.com'),
(74, 'Margaret Cook', 'margaret.cook@example.com'),
(75, 'Patricia Peterson', 'patricia.peterson@example.com'),
(76, 'David Gonzales', 'david.gonzales@example.com'),
(77, 'James Lee', 'james.lee@example.com'),
(78, 'Carol Anderson', 'carol.anderson@example.com'),
(79, 'Matthew Edwards', 'matthew.edwards@example.com'),
(80, 'Debra Baker', 'debra.baker@example.com'),
(81, 'Elizabeth Mitchell', 'elizabeth.mitchell@example.com'),
(82, 'Donald Turner', 'donald.turner@example.com'),
(83, 'Barbara Hernandez', 'barbara.hernandez@example.com'),
(84, 'John White', 'john.white@example.com'),
(85, 'Patricia Davis', 'patricia.davis@example.com'),
(86, 'Thomas Martinez', 'thomas.martinez@example.com'),
(87, 'Sarah Wilson', 'sarah.wilson@example.com'),
(88, 'Joseph Lopez', 'joseph.lopez@example.com'),
(89, 'Nancy Gonzalez', 'nancy.gonzalez@example.com'),
(90, 'Paul Martin', 'paul.martin@example.com'),
(91, 'Lisa Anderson', 'lisa.anderson@example.com'),
(92, 'William Thomas', 'william.thomas@example.com'),
(93, 'Karen Robinson', 'karen.robinson@example.com'),
(94, 'Steven Lewis', 'steven.lewis@example.com'),
(95, 'Ruth Walker', 'ruth.walker@example.com'),
(96, 'Charles Harris', 'charles.harris@example.com'),
(97, 'Barbara Young', 'barbara.young@example.com'),
(98, 'Frank Nelson', 'frank.nelson@example.com'),
(99, 'Linda King', 'linda.king@example.com'),
(100, 'David Patel', 'david.patel@example.com');

INSERT INTO Sales (SaleID, CustomerID, ProductID, Quantity, SaleDate) VALUES 
(1, 1, 1, 2, '2024-12-01'),
(2, 2, 2, 1, '2024-12-01'),
(3, 3, 3, 3, '2024-12-02'),
(4, 4, 4, 1, '2024-12-03'),
(5, 5, 5, 2, '2024-12-04'),
(6, 6, 6, 1, '2024-12-05'),
(7, 7, 7, 2, '2024-12-06'),
(8, 8, 8, 3, '2024-12-07'),
(9, 9, 9, 1, '2024-12-08'),
(10, 10, 10, 2, '2024-12-09'),
(11, 1, 1, 3, '2024-12-10'),
(12, 2, 2, 1, '2024-12-11'),
(13, 3, 3, 2, '2024-12-12'),
(14, 4, 4, 1, '2024-12-13'),
(15, 5, 5, 3, '2024-12-14'),
(16, 6, 6, 1, '2024-12-15'),
(17, 7, 7, 2, '2024-12-16'),
(18, 8, 8, 1, '2024-12-17'),
(19, 9, 9, 3, '2024-12-18'),
(20, 10, 10, 1, '2024-12-19'),
(21, 1, 1, 2, '2024-12-20'),
(22, 2, 2, 3, '2024-12-21'),
(23, 3, 3, 1, '2024-12-22'),
(24, 4, 4, 2, '2024-12-23'),
(25, 5, 5, 1, '2024-12-24'),
(26, 6, 6, 3, '2024-12-25'),
(27, 7, 7, 1, '2024-12-26'),
(28, 8, 8, 2, '2024-12-27'),
(29, 9, 9, 1, '2024-12-28'),
(30, 10, 10, 3, '2024-12-29'),
(31, 1, 1, 1, '2024-12-30'),
(32, 2, 2, 2, '2024-12-31'),
(33, 3, 3, 1, '2025-01-01'),
(34, 4, 4, 3, '2025-01-02'),
(35, 5, 5, 2, '2025-01-03'),
(36, 6, 6, 1, '2025-01-04'),
(37, 7, 7, 2, '2025-01-05'),
(38, 8, 8, 1, '2025-01-06'),
(39, 9, 9, 3, '2025-01-07'),
(40, 10, 10, 1, '2025-01-08'),
(41, 1, 1, 2, '2025-01-09'),
(42, 2, 2, 3, '2025-01-10'),
(43, 3, 3, 1, '2025-01-11'),
(44, 4, 4, 2, '2025-01-12'),
(45, 5, 5, 1, '2025-01-13'),
(46, 6, 6, 3, '2025-01-14'),
(47, 7, 7, 1, '2025-01-15'),
(48, 8, 8, 2, '2025-01-16'),
(49, 9, 9, 1, '2025-01-17'),
(50, 10, 10, 3, '2025-01-18'),
(51, 1, 1, 1, '2025-01-19'),
(52, 2, 2, 2, '2025-01-20'),
(53, 3, 3, 1, '2025-01-21'),
(54, 4, 4, 3, '2025-01-22'),
(55, 5, 5, 2, '2025-01-23'),
(56, 6, 6, 1, '2025-01-24'),
(57, 7, 7, 2, '2025-01-25'),
(58, 8, 8, 1, '2025-01-26'),
(59, 9, 9, 3, '2025-01-27'),
(60, 10, 10, 1, '2025-01-28'),
(61, 1, 1, 2, '2025-01-29'),
(62, 2, 2, 3, '2025-01-30'),
(63, 3, 3, 1, '2025-01-31'),
(64, 4, 4, 2, '2025-02-01'),
(65, 5, 5, 1, '2025-02-02'),
(66, 6, 6, 3, '2025-02-03'),
(67, 7, 7, 1, '2025-02-04'),
(68, 8, 8, 2, '2025-02-05'),
(69, 9, 9, 1, '2025-02-06'),
(70, 10, 10, 3, '2025-02-07'),
(71, 1, 1, 1, '2025-02-08'),
(72, 2, 2, 2, '2025-02-09'),
(73, 3, 3, 1, '2025-02-10'),
(74, 4, 4, 3, '2025-02-11'),
(75, 5, 5, 2, '2025-02-12'),
(76, 6, 6, 1, '2025-02-13'),
(77, 7, 7, 2, '2025-02-14'),
(78, 8, 8, 1, '2025-02-15'),
(79, 9, 9, 3, '2025-02-16'),
(80, 10, 10, 1, '2025-02-17'),
(81, 1, 1, 2, '2025-02-18'),
(82, 2, 2, 3, '2025-02-19'),
(83, 3, 3, 1, '2025-02-20'),
(84, 4, 4, 2, '2025-02-21'),
(85, 5, 5, 1, '2025-02-22'),
(86, 6, 6, 3, '2025-02-23'),
(87, 7, 7, 1, '2025-02-24'),
(88, 8, 8, 2, '2025-02-25'),
(89, 9, 9, 1, '2025-02-26'),
(90, 10, 10, 3, '2025-02-27'),
(91, 1, 1, 1, '2025-02-28'),
(92, 2, 2, 2, '2025-03-01'),
(93, 3, 3, 1, '2025-03-02'),
(94, 4, 4, 3, '2025-03-03'),
(95, 5, 5, 2, '2025-03-04'),
(96, 6, 6, 1, '2025-03-05'),
(97, 7, 7, 2, '2025-03-06'),
(98, 8, 8, 1, '2025-03-07'),
(99, 9, 9, 3, '2025-03-08'),
(100, 10, 10, 1, '2025-03-09');

SELECT * FROM Sales;

-- Best-Selling Products
SELECT ProductName, SUM(Quantity) AS TotalSold
FROM Sales
JOIN Product ON Sales.ProductID = Product.ProductID
GROUP BY ProductName
ORDER BY TotalSold DESC;

-- Sales by Category
SELECT Category, SUM(Quantity) AS TotalSold
FROM Sales
JOIN Product ON Sales.ProductID = Product.ProductID
GROUP BY Category
ORDER BY TotalSold DESC;

-- Top Customers
SELECT CustomerName, SUM(Sales.Quantity * Product.Price) AS TotalSpent
FROM Sales
JOIN Customers ON Sales.CustomerID = Customers.CustomerID
JOIN Product ON Sales.ProductID = Product.ProductID
GROUP BY CustomerName
ORDER BY TotalSpent DESC;

-- Daily Sales
SELECT SaleDate, SUM(Quantity * Price) AS DailyRevenue
FROM Sales
JOIN Product ON Sales.ProductID = Product.ProductID
GROUP BY SaleDate
ORDER BY SaleDate DESC;

-- Product Performance Over Time
SELECT ProductName, SaleDate, SUM(Quantity) AS TotalSold
FROM Sales
JOIN Product ON Sales.ProductID = Product.ProductID
GROUP BY ProductName, SaleDate
ORDER BY SaleDate DESC, ProductName;

-- Customer Purchase Patterns
SELECT CustomerName, ProductName, SUM(Quantity) AS TotalPurchased
FROM Sales
JOIN Customers ON Sales.CustomerID = Customers.CustomerID
JOIN Product ON Sales.ProductID = Product.ProductID
GROUP BY CustomerName, ProductName
ORDER BY TotalPurchased DESC;

-- Total Revenue by Product
SELECT ProductName, SUM(Quantity * Price) AS TotalRevenue
FROM Sales
JOIN Product ON Sales.ProductID = Product.ProductID
GROUP BY ProductName
ORDER BY TotalRevenue DESC;

-- Average Spending per Customers
SELECT CustomerName, AVG(Sales.Quantity * Product.Price) AS AvgSpent
FROM Sales
JOIN Customers ON Sales.CustomerID = Customers.CustomerID
JOIN Product ON Sales.ProductID = Product.ProductID
GROUP BY CustomerName
ORDER BY AvgSpent DESC;




