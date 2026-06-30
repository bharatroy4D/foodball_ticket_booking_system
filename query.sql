-- query-1
SELECT
  match_id,
  fixture,
  base_ticket_price
FROM
  matchs
WHERE
  tournament_category = 'Champions League'
  AND match_status = 'Available';

  -- query-2
SELECT
  user_id,
  full_name,
  email
FROM
  users
WHERE
  full_name LIKE 'Tanvir%'
  OR full_name ilike '%Haque%';