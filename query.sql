-- QUERY-1
SELECT
  match_id,
  fixture,
  base_ticket_price
FROM
  matchs
WHERE
  tournament_category = 'Champions League'
  AND match_status = 'Available';

  -- QUERYT-2
SELECT
  user_id,
  full_name,
  email
FROM
  users
WHERE
  full_name LIKE 'Tanvir%'
  OR full_name ilike '%Haque%';

--   QUERY-3
SELECT
  booking_id,
  user_id,
  booking_id,
  COALESCE(payment_status, 'Action Required') AS systematic_status
FROM
  bookings
WHERE
  payment_status IS NULL;

--   QUERY-4
SELECT
  booking_id,
  full_name,
  fixture,
  total_cost
FROM
  bookings b
  INNER JOIN users u ON b.user_id = u.user_id
  INNER JOIN matches m ON b.match_id = m.match_id;

--   QUERY-5

SELECT 
  u.user_id, u.full_name, b.booking_id 
FROM users u
 LEFT JOIN bookings b
ON u.user_id = b.user_id;

-- QUERY-6

SELECT
  booking_id,
  match_id,
  total_cost
FROM 
  bookings 
WHERE total_cost >(
  SELECT avg(total_cost) 
  FROM bookings
) 

-- QUERY-7

SELECT
match_id, 
  fixture,
  base_ticket_price
FROM matches
ORDER BY base_ticket_price DESC
LIMIT 2
OFFSET 1;