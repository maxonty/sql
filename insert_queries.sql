-- Добавление нового клиента
INSERT INTO client (full_name, passport) VALUES ('Sergey Kozlov', '9988776655');

-- Новый отель
INSERT INTO hotel (name, city, stars) VALUES ('City Center Hotel', 'Yekaterinburg', 3);

-- Добавление нового номера
INSERT INTO room (hotel_id, number, type, price, is_available)
VALUES (2, '203', 'Suite', 7500.00, true);

-- Бронирование номера
INSERT INTO booking (client_id, room_id, check_in, check_out)
VALUES (2, 1, '2025-05-10', '2025-05-14');

-- Новый сотрудник
INSERT INTO employee (hotel_id, full_name, position)
VALUES (2, 'Natalia Orlova', 'Cleaner');

-- Новая услуга
INSERT INTO service (name, price) VALUES ('Airport Transfer', 2000.00);

-- Заказ услуги
INSERT INTO service_order (booking_id, service_id, quantity)
VALUES (1, 2, 1);

-- Добавление отеля
INSERT INTO hotel (name, city) VALUES ('Вега Отель', 'Казань');

-- Добавление номера
INSERT INTO room (hotel_id, number, capacity, price, is_available)
VALUES (1, '305', 2, 4200, true);

-- Новый клиент
INSERT INTO client (full_name, phone)
VALUES ('Ирина Новикова', '+79210000000');

-- Новое бронирование
INSERT INTO booking (client_id, room_id, start_date, end_date)
VALUES (3, 5, '2025-06-01', '2025-06-05');

-- Новый сотрудник
INSERT INTO employee (full_name, position, hotel_id)
VALUES ('Мария Козлова', 'Менеджер', 2);

-- Новая услуга
INSERT INTO service (name, price)
VALUES ('Массаж', 2500);

-- Заказ услуги
INSERT INTO service_order (client_id, service_id, order_date)
VALUES (2, 3, '2025-05-10');

-- Номер без брони
INSERT INTO room (hotel_id, number, capacity, price, is_available)
VALUES (2, '201', 1, 2800, true);


