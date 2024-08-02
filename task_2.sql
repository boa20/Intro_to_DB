
USE alx_book_store;

CREATE TABLE IF NOT EXISTS Books (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(130),
    author_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    price DOUBLE,
    publication_date DATE
);


CREATE TABLE IF NOT EXISTS Authors (
    author_id INTEGER PRIMARY KEY,
    author_name VARCHAR(215)
);


CREATE TABLE IF NOT EXISTS Customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);


CREATE TABLE IF NOT EXISTS Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
);


CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetail_id INTEGER PRIMARY KEY,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    book_id INTEGER,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
);