-- ===============================
-- List categories for each event
-- ===============================

SELECT Events.event_id, Events.e_title, Event_Categories.ec_name
FROM Events
JOIN Event_Category_Link ON Events.event_id = Event_Category_Link.event_id
JOIN Event_Categories ON Event_Category_Link.category_id = Event_Categories.category_id
ORDER BY Events.event_id, Event_Categories.ec_name;

-- ===============================
-- List events in a specific category
-- ===============================

SELECT Events.event_id, Events.e_title, Event_Categories.ec_name
FROM Events
JOIN Event_Category_Link ON Events.event_id = Event_Category_Link.event_id
JOIN Event_Categories ON Event_Category_Link.category_id = Event_Categories.category_id
WHERE Event_Categories.ec_name = 'Technology';

-- ===============================
-- Count volunteers assigned per event
-- ===============================

SELECT Events.event_id, Events.e_title,
COUNT(Event_Volunteers.user_id) AS volunteer_count
FROM Events
LEFT JOIN Event_Volunteers ON Events.event_id = Event_Volunteers.event_id
GROUP BY Events.event_id, Events.e_title
ORDER BY volunteer_count DESC;

-- ===============================
-- Events that have no volunteers
-- ===============================

SELECT Events.event_id, Events.e_title
FROM Events
LEFT JOIN Event_Volunteers ON Events.event_id = Event_Volunteers.event_id
WHERE Event_Volunteers.user_id IS NULL;

-- ===============================
-- Show volunteers grouped by category (via events)
-- ===============================

SELECT Event_Categories.ec_name, Users.user_id,
CONCAT(Users.u_first_name, ' ', Users.u_last_name) AS volunteer_name
FROM Event_Categories
JOIN Event_Category_Link ON Event_Categories.category_id = Event_Category_Link.category_id
JOIN Events ON Event_Category_Link.event_id = Events.event_id
JOIN Event_Volunteers ON Events.event_id = Event_Volunteers.event_id
JOIN Users ON Event_Volunteers.user_id = Users.user_id
WHERE Users.u_role = 'volunteer'
ORDER BY Event_Categories.ec_name, volunteer_name;