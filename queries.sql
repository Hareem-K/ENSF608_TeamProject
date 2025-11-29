USE ensf608_eventsplatform;

-- ============================================================
-- 1. List all users (basic SELECT)
-- ============================================================
SELECT user_id, u_first_name, u_last_name, u_role
FROM Users;

-- ============================================================
-- 2. Find all volunteers with full names
-- ============================================================
SELECT u.user_id, u.u_first_name, u.u_last_name
FROM Users u
JOIN Volunteers v ON u.user_id = v.user_id;

-- ============================================================
-- 3. Find all sponsors and their organizations
-- ============================================================
SELECT u.u_first_name, u.u_last_name, s.s_organization_name
FROM Sponsors s
JOIN Users u ON s.user_id = u.user_id;

-- ============================================================
-- 4. Show users with more than one phone number
-- ============================================================
SELECT u.user_id, u.u_first_name, u.u_last_name, COUNT(p.phone_number) AS phone_count
FROM Users u
JOIN User_Phones p ON u.user_id = p.user_id
GROUP BY u.user_id
HAVING COUNT(p.phone_number) > 1;

-- ============================================================
-- 5. List all users with their phone numbers (LEFT JOIN)
-- ============================================================
SELECT u.user_id, u.u_first_name, u.u_last_name, p.phone_number
FROM Users u
LEFT JOIN User_Phones p ON u.user_id = p.user_id
ORDER BY u.user_id;

-- ============================================================
-- 6. Update a sponsor’s website
-- ============================================================
UPDATE Sponsors
SET s_website_url = 'https://updatedexample.ca'
WHERE user_id = 11;

-- ============================================================
-- 7. Delete a phone number from a user
-- ============================================================
DELETE FROM User_Phones
WHERE phone_number = '587-555-8821';

-- ============================================================
-- 8. Count how many users belong to each role
-- ============================================================
SELECT u_role, COUNT(*) AS role_count
FROM Users
GROUP BY u_role;

-- ============================================================
-- 9. List all volunteers with their interests
-- ============================================================
SELECT u.user_id, u.u_first_name, u.u_last_name, vi.interest_value
FROM Volunteer_Interests vi
JOIN Users u ON vi.user_id = u.user_id
ORDER BY u.user_id;

-- ============================================================
-- 10. Count how many volunteers have each interest (GROUP BY)
-- ============================================================
SELECT interest_value, COUNT(*) AS num_volunteers
FROM Volunteer_Interests
GROUP BY interest_value
ORDER BY num_volunteers DESC;

-- ============================================================
-- 11. Find volunteers who have BOTH 'Event Setup' AND 'Tech Support'
--      (intersection via subquery)
-- ============================================================
SELECT u.user_id, u.u_first_name, u.u_last_name
FROM Users u
WHERE u.user_id IN (
    SELECT user_id
    FROM Volunteer_Interests
    WHERE interest_value = 'Event Setup'
)
AND u.user_id IN (
    SELECT user_id
    FROM Volunteer_Interests
    WHERE interest_value = 'Tech Support'
);

-- ============================================================
-- 12. Volunteers available on Fridays
-- ============================================================
SELECT u.user_id, u.u_first_name, u.u_last_name, va.start_time, va.end_time
FROM Volunteer_Availability va
JOIN Users u ON va.user_id = u.user_id
WHERE va.availability_day = 'Fri';

-- ============================================================
-- 13. Count volunteers available per day
-- ============================================================
SELECT availability_day, COUNT(*) AS volunteer_count
FROM Volunteer_Availability
GROUP BY availability_day
ORDER BY volunteer_count DESC;

-- ============================================================
-- 14. List volunteers with more than one availability slot
-- ============================================================
SELECT u.user_id, u.u_first_name, u.u_last_name, COUNT(*) AS slots
FROM Volunteer_Availability va
JOIN Users u ON va.user_id = u.user_id
GROUP BY u.user_id
HAVING COUNT(*) > 1;

-- ============================================================
-- 15. Show volunteers with both availability AND interests (INNER JOIN)
-- ============================================================
SELECT DISTINCT u.user_id, u.u_first_name, u.u_last_name
FROM Users u
JOIN Volunteer_Interests vi ON u.user_id = vi.user_id
JOIN Volunteer_Availability va ON u.user_id = va.user_id
ORDER BY u.user_id;

-- ============================================================
-- 16. Add a new interest for a volunteer (INSERT)
-- ============================================================
INSERT INTO Volunteer_Interests (user_id, interest_value)
VALUES (5, 'Logistics');

-- ============================================================
-- 17. Remove an interest from a volunteer (DELETE)
-- ============================================================
DELETE FROM Volunteer_Interests
WHERE user_id = 30 AND interest_value = 'Registration Desk';

-- ============================================================
-- 18. Rank interests by popularity (WINDOW FUNCTION)
-- ============================================================
SELECT
    interest_value,
    COUNT(*) AS count_value,
    DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS popularity_rank
FROM Volunteer_Interests
GROUP BY interest_value;

-- ============================================================
-- 19. Events titles and ticket prices
-- ============================================================
SELECT e_title, e_ticket_price
FROM Events;

-- ============================================================
-- 20. Venues names and cities
-- ============================================================
SELECT v_name, v_city
FROM Venues;

-- ============================================================
-- 21. Events that are ticketed
-- ============================================================
SELECT *
FROM Events
WHERE e_is_ticketed = TRUE;

-- ============================================================
-- 22. Users with role 'organizer'
-- ============================================================
SELECT *
FROM Users
WHERE u_role = 'organizer';

-- ============================================================
-- 23. Venues located in 'Calgary'
-- ============================================================
SELECT *
FROM Venues
WHERE v_city = 'Calgary';

-- ============================================================
-- 24. Events along with their organizers' first and last names
-- ============================================================
SELECT Users.u_first_name, Users.u_last_name, Events.e_title
FROM Users
INNER JOIN Events ON Users.user_id = Events.user_id;

-- ============================================================
-- 25. Users who have registered for events, along with their registration IDs
-- ============================================================
SELECT Registrations.registration_id, Users.u_first_name
FROM Registrations
INNER JOIN Users ON Registrations.user_id = Users.user_id;

-- ============================================================
-- 26. Events along with the total number of registrations for each event
-- ============================================================
SELECT Events.event_id, COUNT(Registrations.registration_id) AS totalRegistrations
FROM Events
INNER JOIN Registrations ON Events.event_id = Registrations.event_id
GROUP BY Events.event_id;

-- ============================================================
-- 27. Events along with the total number of reviews for each event
-- ============================================================
SELECT Events.e_title, COUNT(Reviews.review_id) AS totalReviews
FROM Events
INNER JOIN Reviews ON Events.event_id = Reviews.event_id
GROUP BY Events.e_title;

-- ============================================================
-- 28. Users along with the payment provider and amount for each of their payments
-- ============================================================
SELECT Users.u_first_name, Payments.p_provider, Payments.p_amount
FROM Users
INNER JOIN Registrations ON Users.user_id = Registrations.user_id
INNER JOIN Payments ON Registrations.registration_id = Payments.registration_id;

-- ============================================================
-- 29. Events with organizer name and venue city
-- ============================================================
SELECT Users.u_first_name, Users.u_last_name, Venues.v_city
FROM Users
INNER JOIN Events ON Users.user_id = Events.user_id
INNER JOIN Venues ON Events.venue_id = Venues.venue_id;

-- ============================================================
-- 30. Users along with the total number of registrations they have made
-- ============================================================
SELECT Users.user_id,
       COUNT(Registrations.registration_id) AS totalRegistrations
FROM Users
LEFT JOIN Registrations ON Users.user_id = Registrations.user_id
GROUP BY Users.user_id;

-- ============================================================
-- 31. Average payment amount per city of venue
-- ============================================================
SELECT Venues.v_city, AVG(Payments.p_amount) AS averagePayment
FROM Venues
INNER JOIN Events ON Venues.venue_id = Events.venue_id
INNER JOIN Registrations ON Events.event_id = Registrations.event_id
INNER JOIN Payments ON Registrations.registration_id = Payments.registration_id
GROUP BY Venues.v_city;

-- ============================================================
-- 32. Maximum and minimum ticket prices among all events
-- ============================================================
SELECT MAX(e_ticket_price) AS maxPrice,
       MIN(e_ticket_price) AS minPrice
FROM Events;

-- ============================================================
-- 33. Total revenue generated from payments per user's last name
-- ============================================================
SELECT Users.u_last_name,
       SUM(Payments.p_amount) AS totalRevenue
FROM Users
INNER JOIN Registrations ON Users.user_id = Registrations.user_id
INNER JOIN Payments ON Registrations.registration_id = Payments.registration_id
GROUP BY Users.user_id, Users.u_last_name;

-- ============================================================
-- 34. Total amount paid by each user, ordered from highest to lowest, limited to top 3 payers
-- ============================================================
SELECT Users.u_first_name,
       SUM(Payments.p_amount) AS totalPaid
FROM Users
INNER JOIN Registrations ON Users.user_id = Registrations.user_id
INNER JOIN Payments ON Registrations.registration_id = Payments.registration_id
GROUP BY Users.user_id, Users.u_first_name
ORDER BY totalPaid DESC
LIMIT 3;

-- ============================================================
-- 35. List categories for each event
-- ============================================================

SELECT Events.event_id, Events.e_title, Event_Categories.ec_name
FROM Events
JOIN Event_Category_Link ON Events.event_id = Event_Category_Link.event_id
JOIN Event_Categories ON Event_Category_Link.category_id = Event_Categories.category_id
ORDER BY Events.event_id, Event_Categories.ec_name;

-- ============================================================
-- 36. List events in a specific category
-- ============================================================

SELECT Events.event_id, Events.e_title, Event_Categories.ec_name
FROM Events
JOIN Event_Category_Link ON Events.event_id = Event_Category_Link.event_id
JOIN Event_Categories ON Event_Category_Link.category_id = Event_Categories.category_id
WHERE Event_Categories.ec_name = 'Technology';

-- =============================================================
-- 37. Count volunteers assigned per event
-- =============================================================

SELECT Events.event_id, Events.e_title,
COUNT(Event_Volunteers.user_id) AS volunteer_count
FROM Events
LEFT JOIN Event_Volunteers ON Events.event_id = Event_Volunteers.event_id
GROUP BY Events.event_id, Events.e_title
ORDER BY volunteer_count DESC;

-- =============================================================
-- 38. Events that have no volunteers
-- =============================================================

SELECT Events.event_id, Events.e_title
FROM Events
LEFT JOIN Event_Volunteers ON Events.event_id = Event_Volunteers.event_id
WHERE Event_Volunteers.user_id IS NULL;

-- =============================================================
-- 39. Show volunteers grouped by category (via events)
-- =============================================================

SELECT Event_Categories.ec_name, Users.user_id,
CONCAT(Users.u_first_name, ' ', Users.u_last_name) AS volunteer_name
FROM Event_Categories
JOIN Event_Category_Link ON Event_Categories.category_id = Event_Category_Link.category_id
JOIN Events ON Event_Category_Link.event_id = Events.event_id
JOIN Event_Volunteers ON Events.event_id = Event_Volunteers.event_id
JOIN Users ON Event_Volunteers.user_id = Users.user_id
WHERE Users.u_role = 'volunteer'
ORDER BY Event_Categories.ec_name, volunteer_name;

-- ==============================================================
-- REVIEW & NOTIFICATION QUERIES
-- ==============================================================

-- ==============================================================
-- 40. Average rating per event
-- ==============================================================
SELECT e.event_id, e.e_title, AVG(r.re_rating) AS avg_rating
FROM Events e
JOIN Reviews r ON e.event_id = r.event_id
GROUP BY e.event_id, e.e_title;

-- ==============================================================
-- 41. Highest-rated event
-- ==============================================================
SELECT e.event_id, e.e_title, AVG(r.re_rating) AS avg_rating
FROM Events e
JOIN Reviews r ON e.event_id = r.event_id
GROUP BY e.event_id, e.e_title
ORDER BY avg_rating DESC
LIMIT 1;

-- ==============================================================
-- 42. lowest-rated event
-- ==============================================================

SELECT e.event_id, e.e_title, AVG(r.re_rating) AS avg_rating
FROM Events e
JOIN Reviews r ON e.event_id = r.event_id
GROUP BY e.event_id, e.e_title
ORDER BY avg_rating ASC
LIMIT 1;

-- ==============================================================
-- 43. Reviews per user
-- ==============================================================
SELECT u.user_id, CONCAT(u.u_first_name, ' ', u.u_last_name) AS user_name,
       COUNT(r.review_id) AS num_reviews
FROM Users u
LEFT JOIN Reviews r ON u.user_id = r.user_id
GROUP BY u.user_id, user_name;


-- ==============================================================
-- 44. Notification counts by channel
-- ==============================================================
SELECT n.n_channel, COUNT(*) AS total_notifications
FROM Notifications n
GROUP BY n.n_channel;

-- ==============================================================
-- 45. Pending vs sent notifications
-- ==============================================================
SELECT n_status, COUNT(*) AS count
FROM Notifications
GROUP BY n_status;