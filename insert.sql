-- Insert users table
INSERT INTO users (full_name, email, role, phone_number)
VALUES
    ('Tanvir Rahman', 'tanvir@mail.com', 'Football Fan', '+8801711111111'),
    ('Asif Haque', 'asif@mail.com', 'Football Fan', '+8801722222222'),
    ('Sajjad Rahman', 'sajjad@mail.com', 'Ticket Manager', '+8801733333333'),
    ('Jannat Ara', 'jannat@mail.com', 'Football Fan', NULL),
    ('Nusrat Jahan', 'nusrat@mail.com', 'Football Fan', '+8801744444444');

    -- Insert matchs table
INSERT INTO matchs (
    match_id,
    fixture,
    tournament_category,
    base_ticket_price,
    match_status
)
VALUES
(101, 'Real Madrid vs Barcelona', 'Champions League', 150, 'Available'),
(102, 'Man City vs Liverpool', 'Premier League', 120, 'Selling Fast'),
(103, 'Bayern Munich vs PSG', 'Champions League', 130, 'Available'),
(104, 'AC Milan vs Inter Milan', 'Serie A', 90, 'Sold Out'),
(105, 'Juventus vs Roma', 'Serie A', 80, 'Available');