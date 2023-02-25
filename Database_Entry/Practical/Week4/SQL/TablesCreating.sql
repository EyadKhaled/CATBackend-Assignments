CREATE TABLE department (
	ID INT PRIMARY KEY NOT NULL,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE employee (
	ID INT PRIMARY KEY NOT NULL,
    email VARCHAR(30) NOT NULL,
    name VARCHAR(30) NOT NULL,
    salary INT NOT NULL,
    departmentID INT NOT NULL,
    FOREIGN KEY (departmentID) REFERENCES department (ID)
);

CREATE TABLE admins (
	ID INT PRIMARY KEY NOT NULL,
    email VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL,
    employeeID INT NOT NULL,
    FOREIGN KEY (employeeID) REFERENCES employee(ID)
);

CREATE TABLE customer (
	ID INT PRIMARY KEY NOT NULL,
    full_name VARCHAR(60) NOT NULL,
    address VARCHAR(60) NOT NULL,
    phone VARCHAR(60) NOT NULL,
    age VARCHAR(3) NOT NULL,
    gender VARCHAR(6) NOT NULL,
    password VARCHAR(20) NOT NULL
);

CREATE TABLE products (
	ID INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(30) NOT NULL,
    price INT NOT NULL
);

CREATE TABLE orders (
	ID INT PRIMARY KEY NOT NULL,
    customerID INT NOT NULL,
    productID INT NOT NULL,
    date DATE NOT NULL,
    amount INT NOT NULL,
    FOREIGN KEY (customerID) REFERENCES customer(ID),
    FOREIGN KEY (productID) REFERENCES products(ID)
);