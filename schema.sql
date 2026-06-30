-- Users table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(50)
        CHECK (role IN ('Football Fan', 'Ticket Manager')),
    phone_number VARCHAR(20)
);

  -- Matches table
  CREATE TABLE matches(
  match_id INT primary key,
  fixture VARCHAR(150) NOT NULL,
  tournament_category VARCHAR(100),
  base_ticket_price DECIMAL(10,2),
  match_status VARCHAR(50)
  CHECK(match_status IN('Availabe', 'Selling Fast', 'sold Out', 'postponded'))
  );