CREATE TABLE hotel (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    stars INTEGER CHECK (stars BETWEEN 1 AND 5)
);

CREATE TABLE room (
    id SERIAL PRIMARY KEY,
    hotel_id INT REFERENCES hotel(id),
    number VARCHAR(10),
    type VARCHAR(50),
    price NUMERIC(10, 2),
    is_available BOOLEAN
);

CREATE TABLE client (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    passport VARCHAR(20) UNIQUE
);

CREATE TABLE booking (
    id SERIAL PRIMARY KEY,
    client_id INT REFERENCES client(id),
    room_id INT REFERENCES room(id),
    check_in DATE,
    check_out DATE
);

CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    hotel_id INT REFERENCES hotel(id),
    full_name VARCHAR(100),
    position VARCHAR(50)
);

CREATE TABLE service (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price NUMERIC(10, 2)
);

CREATE TABLE service_order (
    id SERIAL PRIMARY KEY,
    booking_id INT REFERENCES booking(id),
    service_id INT REFERENCES service(id),
    quantity INT
);
