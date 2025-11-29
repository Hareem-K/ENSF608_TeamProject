USE ensf608_eventsplatform;

-- ============================================================
-- POPULATE USERS (50 realistic users)
-- ============================================================

INSERT INTO Users (u_first_name, u_last_name, u_address, u_role)
VALUES
('Emily', 'Carter', '12 Aspen Ridge, Calgary', 'attendee'),
('Michael', 'Nguyen', '45 Riverbend Dr, Calgary', 'attendee'),
('Sophia', 'Patel', '88 Oakmount Rd, Calgary', 'organizer'),
('Aiden', 'Hunter', '201 Maple St, Calgary', 'attendee'),
('Liam', 'Morris', '17 Cranston Blvd, Calgary', 'volunteer'),
('Maya', 'Sharma', '66 Panorama Way, Calgary', 'volunteer'),
('Oliver', 'Wong', '54 Tuscany Springs Rd, Calgary', 'volunteer'),
('Grace', 'Bennett', '92 Harvest Hills Dr, Calgary', 'attendee'),
('Ethan', 'Brooks', '10 Mckenzie Lake Bay, Calgary', 'organizer'),
('Hannah', 'Lopez', '7 Signal Hill Close, Calgary', 'attendee'),

-- Sponsors (10)
('Daniel', 'Stone', '140 Kensington Rd, Calgary', 'sponsor'),
('Kavita', 'Suri', '120 Sage Hill Blvd, Calgary', 'sponsor'),
('Marcus', 'Reed', '89 Parkdale Blvd, Calgary', 'sponsor'),
('Nora', 'Alvarez', '203 Nolan Hill Blvd, Calgary', 'sponsor'),
('Jasper', 'Cole', '4 Royal Oak Terrace, Calgary', 'sponsor'),
('Zara', 'Iqbal', '9 Mount Pleasant Rd, Calgary', 'sponsor'),
('Henry', 'Foster', '61 Legacy Circle, Calgary', 'sponsor'),
('Lily', 'Sanders', '33 Windermere Rd, Calgary', 'sponsor'),
('Caleb', 'Hoffman', '90 Seton Blvd, Calgary', 'sponsor'),
('Renee', 'Dawson', '13 Brentwood Hr, Calgary', 'sponsor'),

-- More volunteers (15)
('Aria', 'Mitchell', '22 Ranchlands Blvd, Calgary', 'volunteer'),
('Noah', 'Klein', '74 Hawkwood Dr, Calgary', 'volunteer'),
('Ella', 'Raymond', '39 Mahogany Dr, Calgary', 'volunteer'),
('Jayden', 'Tan', '84 Canyon Meadows Dr, Calgary', 'volunteer'),
('Chloe', 'Martins', '28 Charleswood Dr, Calgary', 'volunteer'),
('Santiago', 'Vega', '11 Coral Springs Blvd, Calgary', 'volunteer'),
('Ayesha', 'Qureshi', '5 Panorama Hills Mews, Calgary', 'volunteer'),
('Mason', 'Clarke', '21 Auburn Bay Dr, Calgary', 'volunteer'),
('Isabella', 'Ford', '301 17 Ave SW, Calgary', 'volunteer'),
('Owen', 'Black', '67 Coventry Hills Way, Calgary', 'volunteer'),
('Tara', 'Olsen', '55 Springbank Way, Calgary', 'volunteer'),
('Julian', 'Bates', '40 Citadel Dr, Calgary', 'volunteer'),
('Leah', 'Hughes', '18 Douglas Glen Blvd, Calgary', 'volunteer'),
('Mateo', 'Santos', '92 Copperfield Blvd, Calgary', 'volunteer'),
('Amelia', 'Becker', '33 Belmont Dr, Calgary', 'volunteer'),

-- More attendees/organizers (15)
('Ryan', 'Turner', '6 McKenzie Towne Blvd, Calgary', 'attendee'),
('Sarah', 'Hill', '24 Killarney Rd, Calgary', 'attendee'),
('Bella', 'Guzman', '83 Silverado Blvd, Calgary', 'attendee'),
('Eli', 'Freeman', '70 Rundlehorn Dr, Calgary', 'organizer'),
('Ariana', 'White', '12 Sunalta St, Calgary', 'organizer'),
('Vivian', 'Holt', '91 Riverstone Blvd, Calgary', 'attendee'),
('Jacob', 'Pierce', '59 Edgemont Dr, Calgary', 'attendee'),
('Nina', 'Ochoa', '38 Symons Valley Pkwy, Calgary', 'attendee'),
('Leo', 'Barker', '47 Shawnessy Blvd, Calgary', 'attendee'),
('Sophie', 'Lynch', '128 Erin Woods Dr, Calgary', 'organizer'),
('Ivan', 'Mathews', '73 Skyview Ranch Rd, Calgary', 'attendee'),
('Dina', 'Rostami', '55 Royal Birch Rd, Calgary', 'attendee'),
('Jared', 'Kim', '11 Evanston Link, Calgary', 'attendee'),
('Priya', 'Mehta', '101 Royal Vista Dr, Calgary', 'attendee'),
('Alec', 'Walters', '44 Walden Sq, Calgary', 'attendee');



-- ============================================================
-- POPULATE USER PHONES (1–2 per user)
-- ============================================================

INSERT INTO User_Phones (user_id, phone_number)
VALUES
(1, '403-555-1281'),
(2, '403-555-9910'),
(2, '587-555-8821'),
(3, '403-555-3421'),
(4, '587-555-2019'),
(5, '403-555-7712'),
(6, '403-555-6128'),
(7, '403-555-4900'),
(7, '587-555-2398'),
(8, '403-555-5441'),
(9, '403-555-8120'),
(10, '587-555-1001'),
(11, '403-555-9191'),
(12, '403-555-4410'),
(13, '587-555-3030'),
(14, '403-555-9928'),
(15, '403-555-8844'),
(16, '587-555-2288'),
(17, '403-555-3005'),
(18, '403-555-1550'),
(19, '403-555-7128'),
(20, '587-555-9090'),
(21, '403-555-7654'),
(22, '587-555-6123'),
(23, '403-555-9098'),
(24, '587-555-7123'),
(25, '403-555-8971'),
(26, '587-555-5542'),
(27, '403-555-2322'),
(28, '587-555-9012'),
(29, '403-555-8111'),
(30, '403-555-4414'),
(31, '403-555-7650'),
(32, '587-555-4419'),
(33, '403-555-2333'),
(34, '587-555-9981'),
(35, '403-555-1721'),
(36, '587-555-8831'),
(37, '403-555-7282'),
(38, '403-555-5533'),
(39, '587-555-7712'),
(40, '403-555-9123'),
(41, '587-555-6601'),
(42, '403-555-8872'),
(43, '587-555-2231'),
(44, '403-555-1029'),
(45, '587-555-5511'),
(46, '403-555-8522'),
(47, '587-555-1109'),
(48, '403-555-6799'),
(49, '587-555-4412'),
(50, '403-555-3100');


-- ============================================================
-- POPULATE VOLUNTEERS TABLE
-- (All users whose role = 'volunteer')
-- ============================================================

INSERT INTO Volunteers (user_id)
SELECT user_id
FROM Users
WHERE u_role = 'volunteer';

-- ============================================================
-- POPULATE VOLUNTEER INTERESTS
-- ============================================================

INSERT INTO Volunteer_Interests (user_id, interest_value)
VALUES
(5, 'Event Setup'),
(5, 'Registration Desk'),

(6, 'Photography'),
(6, 'Community Outreach'),

(7, 'Logistics'),
(7, 'Crowd Management'),

(21, 'Youth Programs'),
(21, 'Event Setup'),

(22, 'Fundraising'),
(22, 'Logistics'),

(23, 'Tech Support'),
(23, 'Event Setup'),

(24, 'Crowd Management'),
(24, 'Registration Desk'),

(25, 'Community Outreach'),
(25, 'Photography'),

(26, 'Food Service'),
(26, 'Logistics'),

(27, 'Event Setup'),
(27, 'Tech Support'),

(28, 'Photography'),
(28, 'Youth Programs'),

(29, 'Crowd Management'),

(30, 'Tech Support'),
(30, 'Registration Desk'),

(31, 'Event Setup'),
(31, 'Fundraising'),

(32, 'Logistics'),
(32, 'Community Outreach'),

(33, 'Photography'),
(33, 'Event Setup'),

(34, 'Crowd Management'),

(35, 'Tech Support'),
(35, 'Food Service');


-- ============================================================
-- POPULATE VOLUNTEER AVAILABILITY
-- (realistic: 1–3 availability slots per volunteer)
-- ============================================================

INSERT INTO Volunteer_Availability (user_id, availability_day, start_time, end_time)
VALUES
-- User 5
(5, 'Mon', '09:00', '12:00'),
(5, 'Wed', '12:00', '16:00'),

-- User 6
(6, 'Tue', '16:00', '20:00'),
(6, 'Thu', '12:00', '16:00'),

-- User 7
(7, 'Sat', '09:00', '12:00'),

-- User 21
(21, 'Fri', '12:00', '16:00'),
(21, 'Sat', '16:00', '20:00'),

-- User 22
(22, 'Mon', '12:00', '16:00'),

-- User 23
(23, 'Tue', '09:00', '12:00'),
(23, 'Thu', '16:00', '20:00'),

-- User 24
(24, 'Wed', '09:00', '12:00'),

-- User 25
(25, 'Mon', '16:00', '20:00'),
(25, 'Fri', '09:00', '12:00'),

-- User 26
(26, 'Thu', '09:00', '12:00'),

-- User 27
(27, 'Wed', '12:00', '16:00'),
(27, 'Sat', '12:00', '16:00'),

-- User 28
(28, 'Tue', '12:00', '16:00'),

-- User 29
(29, 'Fri', '16:00', '20:00'),

-- User 30
(30, 'Thu', '12:00', '16:00'),

-- User 31
(31, 'Mon', '09:00', '12:00'),
(31, 'Tue', '12:00', '16:00'),

-- User 32
(32, 'Fri', '12:00', '16:00'),

-- User 33
(33, 'Sat', '09:00', '12:00'),

-- User 34
(34, 'Tue', '16:00', '20:00'),

-- User 35
(35, 'Wed', '12:00', '16:00'),
(35, 'Thu', '09:00', '12:00');

-- ============================================================
-- POPULATE SPONSORS TABLE
-- (All users whose role = 'sponsor')
-- ============================================================

INSERT INTO Sponsors (user_id, s_sponsor_type, s_organization_name, s_website_url)
VALUES
(11, 'Corporate', 'StoneTech Industries', 'https://stonetech.ca'),
(12, 'Community Partner', 'Suri Wellness Foundation', 'https://suriwellness.org'),
(13, 'Corporate', 'Reed Financial', 'https://reedfinancial.com'),
(14, 'Local Business', 'Alvarez Coffee Co.', 'https://alvarezcoffee.ca'),
(15, 'Corporate', 'Cole Robotics', 'https://colerobotics.com'),
(16, 'Community Partner', 'Iqbal Arts Society', 'https://iqbalarts.ca'),
(17, 'Corporate', 'Foster Digital Group', 'https://fosterdigital.ca'),
(18, 'Local Business', 'Sanders Home Decor', 'https://sandersdecor.ca'),
(19, 'Corporate', 'Hoffman Analytics', 'https://hoffmananalytics.com'),
(20, 'Local Business', 'Dawson Fitness Club', 'https://dawsonfitness.ca');

-- ============================================================
-- POPULATE VENUES TABLE
-- ============================================================

INSERT INTO Venues (v_name, v_kind, v_address, v_city, v_url)
VALUES
('Calgary Convention Centre', 'in-person', '130 9 Ave SE', 'Calgary', 'https://ccc.ca'),
('UCalgary MacHall Ballroom', 'in-person', '2500 University Dr NW', 'Calgary', 'https://macewanhall.ca'),
('Online Zoom Room A', 'virtual', NULL, NULL, 'https://zoom.us/roomA'),
('South Health Campus Auditorium', 'in-person', '444 South Health Campus', 'Calgary', NULL),
('Banff Outdoor Park', 'in-person', '2 Cascade Plaza', 'Banff', NULL),
('Virtual Marketing Hub', 'virtual', NULL, NULL, 'https://marketinghub.ca'),
('Prince’s Island Stage', 'in-person', '4 St SW', 'Calgary', NULL),
('TechHub Online Hall', 'virtual', NULL, NULL, 'https://techhub.ca'),
('Innovation Lab', 'in-person', '11 Street Innovation Park', 'Calgary', NULL),
('Community Square', 'in-person', '123 Centre St', 'Calgary', NULL);

-- ============================================================
-- POPULATE EVENTS TABLE
-- ============================================================

INSERT INTO Events (
    venue_id, user_id, e_title, e_description, e_capacity,
    e_ticket_price, e_is_ticketed, e_start_at, e_end_at
)
VALUES
(1, 3, 'Tech Conference 2025', 'A large conference on modern software and AI.', 300, 50.00, TRUE, '2025-05-01 09:00:00', '2025-05-01 17:00:00'),
(3, 9, 'Virtual AI Workshop', 'Hands-on AI tutorials and demos.', 200, 20.00, TRUE, '2025-06-10 10:00:00', '2025-06-10 14:00:00'),
(2, 3, 'Art & Culture Expo', 'Local artists and cultural exhibitions.', 500, 30.00, TRUE, '2025-07-12 09:00:00', '2025-07-12 18:00:00'),
(4, 9, 'Hybrid Education Summit', 'Panels about hybrid learning.', 150, 25.00, TRUE, '2025-09-01 10:00:00', '2025-09-01 16:00:00'),
(5, 8, 'Mountain Hiking Meetup', 'Outdoor adventure and group hike.', 50, 0.00, FALSE, '2025-08-20 08:00:00', '2025-08-20 15:00:00'),
(6, 3, 'Online Marketing Bootcamp', 'Digital ads, SEO, and analytics.', 300, 40.00, TRUE, '2025-04-15 11:00:00', '2025-04-15 16:00:00'),
(7, 9, 'Riverside Music Fest', 'Live music in the park.', 600, 30.00, TRUE, '2025-07-20 12:00:00', '2025-07-20 22:00:00'),
(8, 8, 'Tech Meetup Online', 'Developer networking and lightning talks.', 250, 10.00, TRUE, '2025-10-05 18:00:00', '2025-10-05 21:00:00'),
(9, 3, 'Innovation Workshop', 'Prototyping and design thinking.', 100, 35.00, TRUE, '2025-03-15 09:00:00', '2025-03-15 13:00:00'),
(10, 8, 'Community Volunteer Day', 'Volunteer-driven community impact event.', 400, 0.00, FALSE, '2025-11-01 09:00:00', '2025-11-01 17:00:00');

-- ============================================================
-- POPULATE REGISTRATIONS TABLE
-- ============================================================

INSERT INTO Registrations (
    user_id,
    event_id,
    r_status,
    r_checkin_code,
    r_unit_price,
    r_quantity,
    r_total_amount,
    r_registration_type
)
VALUES
    (33, 8, 'confirmed', 'CHK-08-33-001', 0.00, 1, 0.00, 'volunteer'),
    (6, 8, 'pending', 'CHK-08-06-002', 0.00, 1, 0.00, 'volunteer'),
    (2, 3, 'pending', 'CHK-03-02-003', 25.00, 1, 25.00, 'attendee'),
    (38, 10, 'confirmed', 'CHK-10-38-004', 30.00, 2, 60.00, 'attendee'),
    (15, 1, 'pending', 'CHK-01-15-005', 500.00, 1, 500.00, 'sponsor'),
    (13, 6, 'confirmed', 'CHK-06-13-006', 1000.00, 2, 2000.00, 'sponsor'),
    (12, 5, 'pending', 'CHK-05-12-007', 250.00, 2, 500.00, 'sponsor'),
    (8, 2, 'confirmed', 'CHK-02-08-008', 20.00, 3, 60.00, 'attendee'),
    (38, 8, 'cancelled', 'CHK-08-38-009', 25.00, 1, 25.00, 'attendee'),
    (6, 3, 'confirmed', 'CHK-03-06-010', 0.00, 1, 0.00, 'volunteer'),
    (35, 7, 'pending', 'CHK-07-35-011', 0.00, 1, 0.00, 'volunteer'),
    (46, 7, 'confirmed', 'CHK-07-46-012', 30.00, 1, 30.00, 'attendee'),
    (28, 10, 'cancelled', 'CHK-10-28-013', 0.00, 1, 0.00, 'volunteer'),
    (5, 5, 'pending', 'CHK-05-05-014', 0.00, 1, 0.00, 'volunteer'),
    (31, 3, 'confirmed', 'CHK-03-31-015', 0.00, 1, 0.00, 'volunteer'),
    (22, 7, 'pending', 'CHK-07-22-016', 0.00, 1, 0.00, 'volunteer'),
    (2, 7, 'cancelled', 'CHK-07-02-017', 30.00, 1, 30.00, 'attendee'),
    (25, 9, 'confirmed', 'CHK-09-25-018', 0.00, 1, 0.00, 'volunteer'),
    (47, 5, 'confirmed', 'CHK-05-47-019', 40.00, 1, 40.00, 'attendee'),
    (9, 9, 'pending', 'CHK-09-09-020', 0.00, 1, 0.00, 'organizer'),
    (37, 1, 'confirmed', 'CHK-01-37-021', 20.00, 2, 40.00, 'attendee'),
    (1, 10, 'pending', 'CHK-10-01-022', 25.00, 1, 25.00, 'attendee'),
    (41, 6, 'confirmed', 'CHK-06-41-023', 15.00, 3, 45.00, 'attendee'),
    (44, 3, 'cancelled', 'CHK-03-44-024', 30.00, 1, 30.00, 'attendee'),
    (50, 5, 'confirmed', 'CHK-05-50-025', 25.00, 1, 25.00, 'attendee'),
    (11, 8, 'confirmed', 'CHK-08-11-026', 750.00, 1, 750.00, 'sponsor'),
    (4, 4, 'pending', 'CHK-04-04-027', 20.00, 1, 20.00, 'attendee'),
    (30, 1, 'confirmed', 'CHK-01-30-028', 0.00, 1, 0.00, 'volunteer'),
    (24, 4, 'pending', 'CHK-04-24-029', 0.00, 1, 0.00, 'volunteer'),
    (21, 2, 'confirmed', 'CHK-02-21-030', 0.00, 1, 0.00, 'volunteer'),
    (7, 2, 'cancelled', 'CHK-02-07-031', 0.00, 1, 0.00, 'volunteer'),
    (10, 1, 'confirmed', 'CHK-01-10-032', 20.00, 1, 20.00, 'attendee'),
    (43, 2, 'pending', 'CHK-02-43-033', 25.00, 2, 50.00, 'attendee'),
    (3, 9, 'confirmed', 'CHK-09-03-034', 0.00, 1, 0.00, 'organizer'),
    (49, 9, 'pending', 'CHK-09-49-035', 40.00, 1, 40.00, 'attendee'),
    (18, 4, 'confirmed', 'CHK-04-18-036', 500.00, 1, 500.00, 'sponsor'),
    (23, 8, 'pending', 'CHK-08-23-037', 0.00, 1, 0.00, 'volunteer'),
    (14, 7, 'confirmed', 'CHK-07-14-038', 250.00, 2, 500.00, 'sponsor'),
    (40, 5, 'cancelled', 'CHK-05-40-039', 0.00, 1, 0.00, 'organizer'),
    (48, 6, 'confirmed', 'CHK-06-48-040', 30.00, 1, 30.00, 'attendee'),
    (20, 10, 'pending', 'CHK-10-20-041', 750.00, 1, 750.00, 'sponsor'),
    (32, 6, 'confirmed', 'CHK-06-32-042', 0.00, 1, 0.00, 'volunteer'),
    (17, 3, 'pending', 'CHK-03-17-043', 500.00, 1, 500.00, 'sponsor'),
    (39, 1, 'confirmed', 'CHK-01-39-044', 0.00, 1, 0.00, 'organizer'),
    (29, 9, 'pending', 'CHK-09-29-045', 0.00, 1, 0.00, 'volunteer'),
    (45, 10, 'confirmed', 'CHK-10-45-046', 0.00, 1, 0.00, 'organizer'),
    (27, 5, 'cancelled', 'CHK-05-27-047', 0.00, 1, 0.00, 'volunteer'),
    (26, 2, 'confirmed', 'CHK-02-26-048', 0.00, 1, 0.00, 'volunteer'),
    (19, 6, 'pending', 'CHK-06-19-049', 1000.00, 1, 1000.00, 'sponsor'),
    (16, 1, 'confirmed', 'CHK-01-16-050', 250.00, 3, 750.00, 'sponsor');



-- ============================================================
-- POPULATE PAYMENTS 50 sample rows
-- ============================================================

INSERT INTO Payments (
    registration_id,
    p_provider,
    p_amount,
    p_status,
    p_type
)
VALUES
    (1, 'Stripe', 70.00, 'paid', 'donation'),
    (2, 'PayPal', 50.00, 'pending', 'donation'),
    (3, 'Stripe', 25.00, 'pending', 'ticket'),
    (4, 'Internal', 60.00, 'paid', 'ticket'),
    (5, 'PayPal', 500.00, 'pending', 'sponsorship'),
    (6, 'Stripe', 2000.00, 'paid', 'sponsorship'),
    (7, 'Square', 500.00, 'pending', 'sponsorship'),
    (8, 'Internal', 60.00, 'paid', 'ticket'),
    (9, 'Stripe', 25.00, 'refunded', 'ticket'),
    (10, 'PayPal', 90.00, 'paid', 'donation'),
    (11, 'Square', 60.00, 'pending', 'donation'),
    (12, 'Stripe', 30.00, 'paid', 'ticket'),
    (13, 'Internal', 20.00, 'failed', 'donation'),
    (14, 'Stripe', 25.00, 'pending', 'donation'),
    (15, 'Square', 100.00, 'paid', 'donation'),
    (16, 'PayPal', 150.00, 'pending', 'donation'),
    (17, 'Stripe', 30.00, 'failed', 'ticket'),
    (18, 'Internal', 200.00, 'paid', 'donation'),
    (19, 'PayPal', 40.00, 'paid', 'ticket'),
    (20, 'Stripe', 450.00, 'pending', 'donation'),
    (21, 'Square', 40.00, 'paid', 'ticket'),
    (22, 'Stripe', 25.00, 'pending', 'ticket'),
    (23, 'Internal', 45.00, 'paid', 'ticket'),
    (24, 'PayPal', 30.00, 'refunded', 'ticket'),
    (25, 'Stripe', 25.00, 'paid', 'ticket'),
    (26, 'Square', 750.00, 'paid', 'sponsorship'),
    (27, 'Stripe', 20.00, 'pending', 'ticket'),
    (28, 'Internal', 90.00, 'paid', 'donation'),
    (29, 'PayPal', 780.00, 'pending', 'donation'),
    (30, 'Stripe', 50.00, 'paid', 'donation'),
    (31, 'Internal', 60.00, 'paid', 'donation'),
    (32, 'Square', 70.00, 'failed', 'donation'),
    (33, 'Stripe', 20.00, 'paid', 'ticket'),
    (34, 'PayPal', 50.00, 'pending', 'ticket'),
    (35, 'Internal', 80.00, 'paid', 'donation'),
    (36, 'Stripe', 40.00, 'pending', 'ticket'),
    (37, 'Square', 500.00, 'paid', 'sponsorship'),
    (38, 'Stripe', 60.00, 'pending', 'donation'),
    (39, 'Internal', 500.00, 'paid', 'sponsorship'),
    (40, 'PayPal', 70.00, 'failed', 'donation'),
    (41, 'Stripe', 30.00, 'paid', 'ticket'),
    (42, 'Square', 750.00, 'pending', 'sponsorship'),
    (43, 'Internal', 70.00, 'paid', 'donation'),
    (44, 'Stripe', 500.00, 'pending', 'sponsorship'),
    (45, 'PayPal', 90.00, 'paid', 'donation'),
    (46, 'Square', 200.00, 'pending', 'donation'),
    (47, 'Internal', 0.00, 'failed', 'donation'),
    (48, 'Stripe', 0.00, 'paid', 'donation'),
    (49, 'PayPal', 1000.00, 'pending', 'sponsorship'),
    (50, 'Stripe', 750.00, 'paid', 'sponsorship');



-- ============================================================
-- POPULATE REVIEWS 50 sample rows
-- ============================================================

INSERT INTO Reviews (
    user_id,
    event_id,
    re_comment,
    re_rating
)
VALUES
    (33, 8, 'Amazing networking opportunities.', 4),
    (6, 8, 'Well organized but could improve timing.', 3),
    (2, 3, 'Good value for the ticket price.', 3),
    (38, 10, 'Loved the speakers and the venue.', 5),
    (15, 1, 'Great event, very informative.', 3),
    (13, 6, 'Amazing networking opportunities.', 5),
    (12, 5, 'Loved the speakers and the venue.', 3),
    (8, 2, 'I liked the hands-on sessions.', 5),
    (38, 8, 'Content was a bit advanced for beginners.', 2),
    (6, 3, 'Amazing networking opportunities.', 4),
    (35, 7, 'Well organized but could improve timing.', 3),
    (46, 7, 'Great event, very informative.', 5),
    (28, 10, 'Too crowded, but overall a good experience.', 1),
    (5, 5, 'The virtual platform worked smoothly.', 3),
    (31, 3, 'I liked the hands-on sessions.', 4),
    (22, 7, 'Content was a bit advanced for beginners.', 3),
    (2, 7, 'Too crowded, but overall a good experience.', 2),
    (25, 9, 'The virtual platform worked smoothly.', 4),
    (47, 5, 'Good value for the ticket price.', 5),
    (9, 9, 'Well organized but could improve timing.', 3),
    (37, 1, 'Loved the speakers and the venue.', 5),
    (1, 10, 'Great event, very informative.', 4),
    (41, 6, 'I liked the hands-on sessions.', 5),
    (44, 3, 'Content was a bit advanced for beginners.', 3),
    (50, 5, 'Good value for the ticket price.', 5),
    (11, 8, 'Amazing networking opportunities.', 5),
    (4, 4, 'Great event, very informative.', 3),
    (30, 1, 'The virtual platform worked smoothly.', 4),
    (24, 4, 'Well organized but could improve timing.', 3),
    (21, 2, 'Loved the speakers and the venue.', 5),
    (7, 2, 'Content was a bit advanced for beginners.', 2),
    (10, 1, 'Good value for the ticket price.', 5),
    (43, 2, 'I liked the hands-on sessions.', 4),
    (3, 9, 'Amazing networking opportunities.', 5),
    (49, 9, 'Well organized but could improve timing.', 4),
    (18, 4, 'Great event, very informative.', 5),
    (23, 8, 'The virtual platform worked smoothly.', 3),
    (14, 7, 'Amazing networking opportunities.', 5),
    (40, 5, 'Content was a bit advanced for beginners.', 2),
    (48, 6, 'Good value for the ticket price.', 5),
    (20, 10, 'Well organized but could improve timing.', 3),
    (32, 6, 'The virtual platform worked smoothly.', 4),
    (17, 3, 'Loved the speakers and the venue.', 3),
    (39, 1, 'Amazing networking opportunities.', 5),
    (29, 9, 'I liked the hands-on sessions.', 4),
    (45, 10, 'Great event, very informative.', 5),
    (27, 5, 'Too crowded, but overall a good experience.', 2),
    (26, 2, 'Good value for the ticket price.', 4),
    (19, 6, 'Amazing networking opportunities.', 3),
    (16, 1, 'Loved the speakers and the venue.', 5);
    
-- ===============================
-- POPULATE EVENT CATEGORIES
-- ===============================

INSERT INTO Event_Categories (ec_name, ec_description)
VALUES
('Technology', 'Events focused on tech and innovation'),
('Art & Culture', 'Exhibitions and cultural activities'),
('Education', 'Workshops, seminars, and learning events'),
('Health & Wellness', 'Events promoting health and wellness'),
('Music & Entertainment', 'Concerts, festivals, and shows'),
('Outdoor & Adventure', 'Sports, hiking, and outdoor activities'),
('Networking', 'Professional and social networking events'),
('Business & Marketing', 'Business seminars and marketing workshops'),
('Community Service', 'Volunteer and charity events'),
('Virtual Learning', 'Online educational and skill-building events');

-- ===============================
-- POPULATE M:N Link Events to Sponsors
-- ===============================

INSERT INTO Event_Sponsors (event_id, user_id)
VALUES
(1, 11),
(1, 12),
(2, 13),
(3, 14),
(4, 15),
(5, 16),
(6, 17),
(7, 18),
(8, 19),
(9, 20),
(10, 11),
(10, 12);

-- ===============================
-- POPULATE M:N Link Events to Volunteers
-- ===============================

INSERT INTO Event_Volunteers (event_id, user_id)
VALUES
-- Event 1
(1, 5),
(1, 6),
(1, 7),

-- Event 2
(2, 21),
(2, 22),

-- Event 3
(3, 23),
(3, 24),

-- Event 4
(4, 25),
(4, 26),

-- Event 5
(5, 27),
(5, 28),

-- Event 6
(6, 29),
(6, 30),

-- Event 7
(7, 31),
(7, 32),

-- Event 8
(8, 33),
(8, 34),

-- Event 9
(9, 35),
(9, 5),

-- Event 10
(10, 6),
(10, 7);

-- ===============================
-- POPULATE M:N Link Events to Categories
-- ===============================

INSERT INTO Event_Category_Link (event_id, category_id)
VALUES
-- Event 1: Tech Conference 2025
(1, 1),
(1, 7),
(1, 8),

-- Event 2: Virtual AI Workshop
(2, 1),
(2, 10),

-- Event 3: Art & Culture Expo
(3, 2),
(3, 3),

-- Event 4: Hybrid Education Summit
(4, 3),
(4, 10),

-- Event 5: Mountain Hiking Meetup
(5, 6),
(5, 9),

-- Event 6: Online Marketing Bootcamp
(6, 8),
(6, 10),

-- Event 7: Riverside Music Fest
(7, 5),
(7, 7),

-- Event 8: Tech Meetup Online
(8, 1),
(8, 10),

-- Event 9: Innovation Workshop
(9, 1),
(9, 3),
(9, 8),

-- Event 10: Community Volunteer Day
(10, 9),
(10, 10);

-- ===============================
-- POPULATE NOTIFICATIONS
-- ===============================

INSERT INTO Notifications (user_id, n_channel, n_status, n_kind, n_scheduled_at, n_sent_at, n_read_at)
VALUES
(1, 'email', 'sent', 'reminder', '2025-11-20 09:00:00', '2025-11-20 09:05:00', '2025-11-20 09:15:00'),
(2, 'sms', 'pending', 'promo', '2025-11-21 10:00:00', NULL, NULL),
(3, 'in-app', 'sent', 'update', '2025-11-19 14:00:00', '2025-11-19 14:02:00', '2025-11-19 14:10:00'),
(4, 'email', 'failed', 'system', '2025-11-18 08:00:00', NULL, NULL),
(5, 'sms', 'sent', 'reminder', '2025-11-22 11:00:00', '2025-11-22 11:05:00', NULL),
(6, 'in-app', 'pending', 'update', '2025-11-23 12:00:00', NULL, NULL),
(7, 'email', 'sent', 'promo', '2025-11-17 09:30:00', '2025-11-17 09:35:00', '2025-11-17 09:45:00'),
(8, 'sms', 'sent', 'reminder', '2025-11-21 10:15:00', '2025-11-21 10:20:00', NULL),
(9, 'in-app', 'failed', 'system', '2025-11-20 15:00:00', NULL, NULL),
(10, 'email', 'sent', 'update', '2025-11-22 13:00:00', '2025-11-22 13:05:00', '2025-11-22 13:10:00'),
(11, 'sms', 'pending', 'promo', '2025-11-23 14:30:00', NULL, NULL),
(12, 'in-app', 'sent', 'reminder', '2025-11-18 09:00:00', '2025-11-18 09:02:00', '2025-11-18 09:10:00'),
(13, 'email', 'sent', 'update', '2025-11-19 11:00:00', '2025-11-19 11:05:00', NULL),
(14, 'sms', 'failed', 'system', '2025-11-20 12:00:00', NULL, NULL),
(15, 'in-app', 'sent', 'promo', '2025-11-21 08:00:00', '2025-11-21 08:05:00', '2025-11-21 08:10:00'),
(16, 'email', 'pending', 'reminder', '2025-11-22 07:00:00', NULL, NULL),
(17, 'sms', 'sent', 'update', '2025-11-23 09:00:00', '2025-11-23 09:05:00', NULL),
(18, 'email', 'sent', 'promo', '2025-11-24 10:00:00', '2025-11-24 10:05:00', '2025-11-24 10:15:00'),
(19, 'in-app', 'pending', 'reminder', '2025-11-25 11:00:00', NULL, NULL),
(20, 'sms', 'sent', 'system', '2025-11-26 12:00:00', '2025-11-26 12:02:00', NULL),
(21, 'email', 'pending', 'update', '2025-11-27 13:00:00', NULL, NULL),
(22, 'in-app', 'sent', 'promo', '2025-11-28 14:00:00', '2025-11-28 14:05:00', '2025-11-28 14:10:00'),
(23, 'sms', 'failed', 'reminder', '2025-11-29 15:00:00', NULL, NULL),
(24, 'email', 'sent', 'system', '2025-11-30 16:00:00', '2025-11-30 16:02:00', '2025-11-30 16:10:00'),
(25, 'in-app', 'pending', 'update', '2025-12-01 09:30:00', NULL, NULL),
(26, 'sms', 'sent', 'promo', '2025-12-02 10:00:00', '2025-12-02 10:05:00', '2025-12-02 10:15:00'),
(27, 'email', 'failed', 'reminder', '2025-12-03 11:00:00', NULL, NULL),
(28, 'in-app', 'sent', 'system', '2025-12-04 12:00:00', '2025-12-04 12:05:00', NULL),
(29, 'sms', 'pending', 'update', '2025-12-05 13:00:00', NULL, NULL),
(30, 'email', 'sent', 'promo', '2025-12-06 14:00:00', '2025-12-06 14:05:00', '2025-12-06 14:10:00'),
(31, 'in-app', 'failed', 'reminder', '2025-12-07 15:00:00', NULL, NULL),
(32, 'sms', 'sent', 'system', '2025-12-08 16:00:00', '2025-12-08 16:02:00', '2025-12-08 16:10:00'),
(33, 'email', 'pending', 'update', '2025-12-09 09:30:00', NULL, NULL),
(34, 'in-app', 'sent', 'promo', '2025-12-10 10:00:00', '2025-12-10 10:05:00', '2025-12-10 10:10:00'),
(35, 'sms', 'failed', 'reminder', '2025-12-11 11:00:00', NULL, NULL),
(36, 'email', 'sent', 'system', '2025-12-12 12:00:00', '2025-12-12 12:05:00', '2025-12-12 12:10:00'),
(37, 'in-app', 'pending', 'update', '2025-12-13 13:00:00', NULL, NULL),
(38, 'sms', 'sent', 'promo', '2025-12-14 14:00:00', '2025-12-14 14:05:00', '2025-12-14 14:10:00'),
(39, 'email', 'failed', 'reminder', '2025-12-15 15:00:00', NULL, NULL),
(40, 'in-app', 'sent', 'system', '2025-12-16 16:00:00', '2025-12-16 16:05:00', '2025-12-16 16:10:00'),
(41, 'sms', 'pending', 'update', '2025-12-17 09:00:00', NULL, NULL),
(42, 'email', 'sent', 'promo', '2025-12-18 10:00:00', '2025-12-18 10:05:00', '2025-12-18 10:15:00'),
(43, 'in-app', 'failed', 'reminder', '2025-12-19 11:00:00', NULL, NULL),
(44, 'sms', 'sent', 'system', '2025-12-20 12:00:00', '2025-12-20 12:02:00', '2025-12-20 12:10:00'),
(45, 'email', 'pending', 'update', '2025-12-21 13:00:00', NULL, NULL),
(46, 'in-app', 'sent', 'promo', '2025-12-22 14:00:00', '2025-12-22 14:05:00', '2025-12-22 14:10:00'),
(47, 'sms', 'failed', 'reminder', '2025-12-23 15:00:00', NULL, NULL),
(48, 'email', 'sent', 'system', '2025-12-24 16:00:00', '2025-12-24 16:05:00', '2025-12-24 16:10:00'),
(49, 'in-app', 'pending', 'update', '2025-12-25 09:00:00', NULL, NULL),
(50, 'sms', 'sent', 'promo', '2025-12-26 10:00:00', '2025-12-26 10:05:00', '2025-12-26 10:10:00');
