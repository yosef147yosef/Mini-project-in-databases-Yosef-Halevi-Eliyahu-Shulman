-- Adds a check that all accounts were opened no earlier than 01/01/1900
ALTER TABLE account ADD CHECK (Open_Date>='1900-01-01');

-- Adds a default that the amount in a deposit should be 10,000
ALTER TABLE deposit ALTER Amount SET DEFAULT 10000;


-- Adds a NOT NULL constraint to the interest field in interest_rate
ALTER TABLE interest_rate MODIFY Interest Decimal(9,2) NOT NULL;
