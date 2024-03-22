-- creating an index on the table names
-- with the first letter of name.

CREATE INDEX idx_name_first ON names(name(1));
