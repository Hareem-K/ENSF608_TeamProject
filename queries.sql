
-- ============================================================
-- 19. List events with their venue and organizer
-- ============================================================
SELECT e.e_title, u.u_first_name, u.u_last_name, v.v_name, v.v_city
FROM Events e
JOIN Users u ON e.user_id = u.user_id
JOIN Venues v ON e.venue_id = v.venue_id;

-- ============================================================
-- 20. Events happening this month (November 2025)
-- ============================================================
SELECT e.e_title, e.e_start_at, v.v_name
FROM Events e
JOIN Venues v ON e.venue_id = v.venue_id
WHERE MONTH(e.e_start_at) = 11 AND YEAR(e.e_start_at) = 2025;


-- ============================================================
-- 21. Count events per venue
-- ============================================================
 SELECT v.v_name, COUNT(*) AS num_events
FROM Events e
JOIN Venues v ON e.venue_id = v.venue_id
GROUP BY v.venue_id;


-- ============================================================
-- 22. Find events in a specific city
-- ============================================================
SELECT e.e_title, v.v_name, v.v_city
FROM Events e
JOIN Venues v ON e.venue_id = v.venue_id
WHERE v.v_city = 'Calgary';

-- ============================================================
-- 23. List ticketed vs non-ticketed events
-- ============================================================
SELECT e.e_title, e.e_is_ticketed
 FROM Events e;



-- ============================================================
-- 4. Review and notification table part
-- ============================================================

-- ============================================================
-- 24. Average rating per event
-- ============================================================
SELECT e.event_id, e.e_title, AVG(r.re_rating) AS avg_rating
FROM Events e
JOIN Reviews r ON e.event_id = r.event_id
GROUP BY e.event_id, e.e_title;


-- ============================================================
-- 25. Highest-rated event
-- ============================================================
SELECT e.event_id, e.e_title, AVG(r.re_rating) AS avg_rating
FROM Events e
JOIN Reviews r ON e.event_id = r.event_id
GROUP BY e.event_id, e.e_title
ORDER BY avg_rating DESC
LIMIT 1;

-- ============================================================
-- 26. lowest-rated event
-- ============================================================

SELECT e.event_id, e.e_title, AVG(r.re_rating) AS avg_rating
FROM Events e
JOIN Reviews r ON e.event_id = r.event_id
GROUP BY e.event_id, e.e_title
ORDER BY avg_rating ASC
LIMIT 1;

-- ============================================================
-- 27. Reviews per user
-- ============================================================
SELECT u.user_id, CONCAT(u.u_first_name, ' ', u.u_last_name) AS user_name,
       COUNT(r.review_id) AS num_reviews
FROM Users u
LEFT JOIN Reviews r ON u.user_id = r.user_id
GROUP BY u.user_id, user_name;



-- ============================================================
-- 28. Notification counts by channel
-- ============================================================
SELECT n.n_channel, COUNT(*) AS total_notifications
FROM Notifications n
GROUP BY n.n_channel;

-- ============================================================
-- 29. Pending vs sent notifications
-- ============================================================
SELECT n_status, COUNT(*) AS count
FROM Notifications
GROUP BY n_status;
