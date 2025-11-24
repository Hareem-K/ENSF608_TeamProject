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