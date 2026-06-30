-- Users table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(50)
        CHECK (role IN ('Football Fan', 'Ticket Manager')),
    phone_number VARCHAR(20)
);

  -- Matchs table
  CREATE TABLE matchs(
  match_id INT PRIMARY KEY,
  fixture VARCHAR(150) NOT NULL,
  tournament_category VARCHAR(100),
  base_ticket_price DECIMAL(10,2),
  match_status VARCHAR(50)
  CHECK(match_status IN('Availabe', 'Selling Fast', 'sold Out', 'postponded'))
  );

  -- Bookings Table
CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    match_id INT REFERENCES matches(match_id),
    seat_number VARCHAR(20),
    payment_status VARCHAR(20)
        CHECK (
            payment_status IN ('Pending', 'Confirmed', 'Cancelled', 'Refunded')
            OR payment_status IS NULL
        ),
    total_cost DECIMAL(10,2)
);