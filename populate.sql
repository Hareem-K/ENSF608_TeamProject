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

INSERT INTO Volunteers (user_id, u_role)
SELECT user_id, u_role
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

INSERT INTO Sponsors (user_id, u_role, s_sponsor_type, s_organization_name, s_website_url)
VALUES
(11, 'sponsor', 'Corporate', 'StoneTech Industries', 'https://stonetech.ca'),
(12, 'sponsor', 'Community Partner', 'Suri Wellness Foundation', 'https://suriwellness.org'),
(13, 'sponsor', 'Corporate', 'Reed Financial', 'https://reedfinancial.com'),
(14, 'sponsor', 'Local Business', 'Alvarez Coffee Co.', 'https://alvarezcoffee.ca'),
(15, 'sponsor', 'Corporate', 'Cole Robotics', 'https://colerobotics.com'),
(16, 'sponsor', 'Community Partner', 'Iqbal Arts Society', 'https://iqbalarts.ca'),
(17, 'sponsor', 'Corporate', 'Foster Digital Group', 'https://fosterdigital.ca'),
(18, 'sponsor', 'Local Business', 'Sanders Home Decor', 'https://sandersdecor.ca'),
(19, 'sponsor', 'Corporate', 'Hoffman Analytics', 'https://hoffmananalytics.com'),
(20, 'sponsor', 'Local Business', 'Dawson Fitness Club', 'https://dawsonfitness.ca');
