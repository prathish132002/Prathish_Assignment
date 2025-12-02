-- HOTEL SCHEMA SETUP

CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    name TEXT,
    phone TEXT,
    email TEXT
);

CREATE TABLE bookings (
    booking_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    room_number INTEGER,
    booked_on DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE items (
    item_id INTEGER PRIMARY KEY,
    item_name TEXT,
    rate INTEGER
);

CREATE TABLE booking_commercials (
    commercial_id INTEGER PRIMARY KEY,
    booking_id INTEGER,
    item_id INTEGER,
    quantity INTEGER,
    ordered_on DATE,
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);
