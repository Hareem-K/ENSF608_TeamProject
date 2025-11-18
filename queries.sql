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
