-- creating trigger that resets valid email
-- when email has change

DROP TRIGGER IF EXISTS validate_email;

DELIMITER $$
CREATE TRIGGER validate_email
BEFORE UPDATE
ON users
FOR EACH ROW
BEGIN
	IF NEW.email != OLD.email THEN
		SET NEW.valid_email = 0;
	END IF;
END$$
DELIMETER ;
