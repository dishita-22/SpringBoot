CREATE DATABASE projectdb;
use projectdb;

CREATE TABLE Category (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    active BOOLEAN NOT NULL,
    displayOrder INT
);
INSERT INTO Category (name, description, active, displayOrder)
VALUES 
    ('Clothing', 'Category for clothing items', true, 6),
    ('Books', 'Category for books', true, 7),
    ('Furniture', 'Category for furniture items', true, 8),
    ('Toys', 'Category for toys', true, 9),
    ('Sports', 'Category for sports equipment', true, 10);


CREATE TABLE Product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    description TEXT,
    stockQuantity INT NOT NULL,
    Category_id BIGINT,
    FOREIGN KEY (Category_id) REFERENCES Category(id)
);
INSERT INTO Product (name, price, description, stockQuantity, category_id)
VALUES 
    ('T-shirt', 19.99, 'Cotton T-shirt', 100, 1),
    ('Laptop', 899.99, '15-inch laptop', 50, 2),
    ('Book: The Great Gatsby', 12.99, 'Classic novel', 75, 3),
    ('Sofa', 599.99, '3-seater sofa', 25, 4),
    ('Football', 19.99, 'Official size football', 30, 5);

select * from Product;

ALTER TABLE Product DROP FOREIGN KEY product_ibfk_1;
ALTER TABLE Category MODIFY COLUMN id BIGINT NOT NULL AUTO_INCREMENT;
ALTER TABLE Product ADD CONSTRAINT product_ibfk_1 FOREIGN KEY (category_id) REFERENCES Category(id);




    
    




