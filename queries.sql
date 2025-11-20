USE ensf608_eventsplatform;

--Events titles and ticket prices
SELECT e_title, e_ticket_price
FROM Events;

--Users first and last names
SELECT u_first_name, u_last_name
FROM Users;

--Venues names and cities
SELECT v_name, v_city
FROM Venues;

--Events that are ticketed
SELECT *
FROM Events
WHERE e_is_ticketed = TRUE;

--Users with role 'organizer'
SELECT *
FROM Users
WHERE u_role = 'organizer';

--Venues located in 'Calgary'
SELECT *
FROM Venues
WHERE v_city = 'Calgary';

--Events along with their organizers' first and last names
SELECT Users.u_first_name, Users.u_last_name, Events.e_title
FROM Users
INNER JOIN Events ON Users.user_id = Events.user_id;


--Users who have registered for events, along with their registration IDs
SELECT Registrations.registration_id, Users.u_first_name
FROM Registrations
INNER JOIN Users ON Registrations.user_id = Users.user_id;

--Events along with the total number of registrations for each event
SELECT Events.event_id, COUNT(Registrations.registration_id) AS totalRegistrations
FROM Events
INNER JOIN Registrations ON Events.event_id = Registrations.event_id
GROUP BY Events.event_id;

--Events along with the total number of reviews for each event
SELECT Events.e_title, COUNT(Reviews.review_id) AS totalReviews
FROM Events
INNER JOIN Reviews ON Events.event_id = Reviews.event_id
GROUP BY Events.e_title;

--Event titles along with their associated category names
SELECT Events.e_title, Event_Categories.ec_name
FROM Events
INNER JOIN Event_Category_Link ON Events.event_id = Event_Category_Link.event_id
INNER JOIN Event_Categories ON Event_Category_Link.category_id = Event_Categories.category_id;

--Users along with the payment provider and amount for each of their payments
SELECT Users.u_first_name, Payments.p_provider, Payments.p_amount
FROM Users
INNER JOIN Registrations ON Users.user_id = Registrations.user_id
INNER JOIN Payments ON Registrations.registration_id = Payments.registration_id;


--Events along with the city of their associated venue and the organizer's first name
SELECT Users.u_first_name, Users.u_last_name, Venues.v_city
FROM Users
INNER JOIN Events ON Users.user_id = Events.user_id
INNER JOIN Venues ON Events.venue_id = Venues.venue_id;

--Users along with the total number of registrations they have made
SELECT Users.user_id,
       COUNT(Registrations.registration_id) AS totalRegistrations
FROM Users
LEFT JOIN Registrations ON Users.user_id = Registrations.user_id
GROUP BY Users.user_id;

--Average payment amount per city of venue
SELECT Venues.v_city, AVG(Payments.p_amount) AS averagePayment
FROM Venues
INNER JOIN Events ON Venues.venue_id = Events.venue_id
INNER JOIN Registrations ON Events.event_id = Registrations.event_id
INNER JOIN Payments ON Registrations.registration_id = Payments.registration_id
GROUP BY Venues.v_city;


--Maximum and minimum ticket prices among all events
SELECT MAX(e_ticket_price) AS maxPrice,
       MIN(e_ticket_price) AS minPrice
FROM Events;


--Total revenue generated from payments per user's last name
SELECT Users.u_last_name,
       SUM(Payments.p_amount) AS totalRevenue
FROM Users
INNER JOIN Registrations ON Users.user_id = Registrations.user_id
INNER JOIN Payments ON Registrations.registration_id = Payments.registration_id
GROUP BY Users.user_id, Users.u_last_name;


--Total amount paid by each user, ordered from highest to lowest, limited to top 3 payers
SELECT Users.u_first_name,
       SUM(Payments.p_amount) AS totalPaid
FROM Users
INNER JOIN Registrations ON Users.user_id = Registrations.user_id
INNER JOIN Payments ON Registrations.registration_id = Payments.registration_id
GROUP BY Users.user_id, Users.u_first_name
ORDER BY totalPaid DESC
LIMIT 3;
