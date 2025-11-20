
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



