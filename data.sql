INSERT INTO hotel (name, city, stars) VALUES
('Sunrise Inn', 'Moscow', 4),
('Mountain View', 'Sochi', 5),
('Budget Stay', 'Kazan', 2);

INSERT INTO room (hotel_id, number, type, price, is_available) VALUES
(1, '101', 'Single', 2500.00, true),
(1, '102', 'Double', 4000.00, false);

INSERT INTO client (full_name, passport) VALUES
('Ivan Ivanov', '1234567890'),
('Anna Petrova', '0987654321');

INSERT INTO booking (client_id, room_id, check_in, check_out) VALUES
(1, 1, '2025-05-01', '2025-05-05');

INSERT INTO employee (hotel_id, full_name, position) VALUES
(1, 'Olga Smirnova', 'Receptionist');

INSERT INTO service (name, price) VALUES
('Breakfast', 500.00),
('Spa', 1500.00);

INSERT INTO service_order (booking_id, service_id, quantity) VALUES
(1, 1, 2);
