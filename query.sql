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