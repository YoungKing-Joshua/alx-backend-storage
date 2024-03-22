-- creating a trigger to decrease the quantity
-- of items after adding new order

DROP TRIGGER IF EXISTS quantity_reducer;
DELIMITER $$
CREATE TRIGGER quantity_reducer
AFTER INSERT
ON orders
FOR EACH ROW
BEGIN
	UPDATE items
	SET quantity = quantity - NEW.number
	WHERE name = NEW.item_name;
END$$
DELIMETER ;
