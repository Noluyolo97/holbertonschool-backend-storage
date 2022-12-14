-- Create a trigger for the items table in the holberton database
-- Decrease the quantity of an item when a new order is inserted
CREATE TRIGGER register_order BEFORE INSERT
ON orders FOR EACH ROW
UPDATE items
SET quantity = quantity - NEW.number
WHERE name = NEW.item_name;
