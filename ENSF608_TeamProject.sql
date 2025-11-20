-- ===============================
-- DATABASE SETUP
-- ===============================

DROP DATABASE IF EXISTS ensf608_eventsplatform;
CREATE DATABASE IF NOT EXISTS ensf608_eventsplatform;
USE ensf608_eventsplatform;

-- ===============================
-- USERS
-- ===============================

CREATE TABLE Users (
    user_id        INT AUTO_INCREMENT,
    u_first_name   VARCHAR(50) NOT NULL,
    u_last_name    VARCHAR(50) NOT NULL,
    u_address      VARCHAR(255),
    u_is_active    BOOLEAN DEFAULT TRUE,
    u_created_at   DATETIME DEFAULT CURRENT_TIMESTAMP,
    u_role         ENUM('attendee', 'volunteer', 'organizer', 'sponsor') NOT NULL,
    PRIMARY KEY (user_id, u_role)
);

-- ===============================
-- USER PHONES (multivalued)
-- ===============================

CREATE TABLE User_Phones (
    user_id        INT NOT NULL,
    phone_number   VARCHAR(20) NOT NULL,
    PRIMARY KEY (user_id, phone_number),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- ===============================
-- VOLUNTEER SUBTYPE
-- ===============================

CREATE TABLE Volunteers (
    user_id INT PRIMARY KEY,
    u_role ENUM('attendee', 'volunteer', 'organizer', 'sponsor') NOT NULL,
    FOREIGN KEY (user_id, u_role) REFERENCES Users(user_id, u_role)
);

-- DISJOINT SPECIALIZATION check
 ALTER TABLE Volunteers
 ADD CONSTRAINT check_volunteer CHECK (u_role = 'volunteer');

-- ===============================
-- VOLUNTEER INTERESTS (multivalued)
-- ===============================

CREATE TABLE Volunteer_Interests (
    user_id       INT NOT NULL,
    interest_value VARCHAR(100) NOT NULL,
    PRIMARY KEY (user_id, interest_value),
    FOREIGN KEY (user_id) REFERENCES Volunteers(user_id)
);

-- ===============================
-- VOLUNTEER AVAILABILITY (multivalued)
-- ===============================

CREATE TABLE Volunteer_Availability (
    user_id          INT NOT NULL,
    availability_day ENUM('Mon','Tue','Wed','Thu','Fri','Sat','Sun') NOT NULL,
    start_time       TIME NOT NULL,
    end_time         TIME NOT NULL,
    PRIMARY KEY (user_id, availability_day, start_time, end_time),
    FOREIGN KEY (user_id) REFERENCES Volunteers(user_id)
);

-- ===============================
-- SPONSOR SUBTYPE
-- ===============================

CREATE TABLE Sponsors (
    user_id            INT PRIMARY KEY,
    u_role				ENUM('attendee', 'volunteer', 'organizer', 'sponsor') NOT NULL,
    s_sponsor_type     VARCHAR(50),
    s_organization_name VARCHAR(100),
    s_website_url      VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- DISJOINT SPECIALIZATION check
 ALTER TABLE Sponsors
 ADD CONSTRAINT check_sponsor CHECK (u_role = 'sponsor');

-- ===============================
-- VENUES
-- ===============================

CREATE TABLE Venues (
    venue_id   INT AUTO_INCREMENT PRIMARY KEY,
    v_name     VARCHAR(100) NOT NULL,
    v_kind     ENUM('in-person', 'virtual', 'hybrid') NOT NULL,
    v_address  VARCHAR(255),
    v_city     VARCHAR(100),
    v_url      VARCHAR(255)
);

-- ===============================
-- EVENTS
-- ===============================

CREATE TABLE Events (
    event_id       INT AUTO_INCREMENT PRIMARY KEY,
    venue_id       INT NOT NULL,
    user_id        INT NOT NULL, -- organizer_id
    e_title        VARCHAR(100) NOT NULL,
    e_description  TEXT,
    e_capacity     INT,
    e_ticket_price DECIMAL(10,2),
    e_is_ticketed  BOOLEAN DEFAULT FALSE,
    e_start_at     DATETIME NOT NULL,
    e_end_at       DATETIME NOT NULL,
    e_created_at   DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (venue_id) REFERENCES Venues(venue_id),
    FOREIGN KEY (user_id)  REFERENCES Users(user_id)
);

-- ===============================
-- EVENT SPONSORS (M:N)
-- ===============================

CREATE TABLE Event_Sponsors (
    event_id INT NOT NULL,
    user_id  INT NOT NULL,
    PRIMARY KEY (event_id, user_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (user_id)  REFERENCES Sponsors(user_id)
);

-- ===============================
-- EVENT VOLUNTEERS (M:N)
-- ===============================

CREATE TABLE Event_Volunteers (
    event_id INT NOT NULL,
    user_id  INT NOT NULL,
    PRIMARY KEY (event_id, user_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (user_id)  REFERENCES Volunteers(user_id)
);

-- ===============================
-- EVENT CATEGORIES
-- ===============================

CREATE TABLE Event_Categories (
    category_id   INT AUTO_INCREMENT PRIMARY KEY,
    ec_name       VARCHAR(100) NOT NULL,
    ec_description TEXT
);

-- ===============================
-- EVENT → CATEGORY LINK (M:N)
-- ===============================

CREATE TABLE Event_Category_Link (
    event_id    INT NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (event_id, category_id),
    FOREIGN KEY (event_id)    REFERENCES Events(event_id),
    FOREIGN KEY (category_id) REFERENCES Event_Categories(category_id)
);

-- ===============================
-- REGISTRATIONS
-- ===============================

CREATE TABLE Registrations (
    registration_id     INT AUTO_INCREMENT PRIMARY KEY,
    user_id             INT NOT NULL,
    event_id            INT NOT NULL,
    r_status            ENUM('pending','confirmed','cancelled') NOT NULL,
    r_checkin_code      VARCHAR(50),
    r_unit_price        DECIMAL(10,2),
    r_quantity          INT DEFAULT 1,
    r_total_amount      DECIMAL(10,2) COMMENT 'derived: r_unit_price * r_quantity',
    r_registration_type ENUM('attendee','volunteer','sponsor','organizer') NOT NULL,
    r_registered_at     DATETIME DEFAULT CURRENT_TIMESTAMP,
    r_checked_in_at     DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

-- UNIQUE per user per event
ALTER TABLE Registrations
ADD CONSTRAINT unique_registration UNIQUE (user_id, event_id);

-- ===============================
-- PAYMENTS
-- ===============================

CREATE TABLE Payments (
    payment_id      INT AUTO_INCREMENT PRIMARY KEY,
    registration_id INT NOT NULL,
    p_provider      VARCHAR(50),
    p_amount        DECIMAL(10,2) NOT NULL,
    p_status        ENUM('pending','paid','failed','refunded') NOT NULL,
    p_type          ENUM('ticket','donation','sponsorship') NOT NULL,
    p_paid_at       DATETIME,
    FOREIGN KEY (registration_id) REFERENCES Registrations(registration_id)
);

-- ===============================
-- REVIEWS
-- ===============================

CREATE TABLE Reviews (
    review_id     INT AUTO_INCREMENT PRIMARY KEY,
    user_id       INT NOT NULL,
    event_id      INT NOT NULL,
    re_comment    TEXT,
    re_rating     INT CHECK (re_rating BETWEEN 1 AND 5),
    re_created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

-- UNIQUE: A user can review an event only once
ALTER TABLE Reviews
ADD CONSTRAINT unique_review UNIQUE (user_id, event_id);

-- ===============================
-- NOTIFICATIONS
-- ===============================

CREATE TABLE Notifications (
    notification_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id         INT NOT NULL,
    n_channel       ENUM('email','sms','in-app') NOT NULL,
    n_status        ENUM('pending','sent','failed') NOT NULL,
    n_kind          ENUM('reminder','update','promo','system') NOT NULL,
    n_scheduled_at  DATETIME,
    n_sent_at       DATETIME,
    n_read_at       DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
