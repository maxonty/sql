-- Все свободные номера
SELECT * FROM room WHERE is_available = true;

-- Все гостиницы в Москве
SELECT * FROM hotel WHERE city = 'Москва';

-- Все занятые номера с ценой выше 3000
SELECT * FROM room WHERE is_available = false AND price > 3000;

-- Все свободные номера
SELECT * FROM room WHERE is_available = true;

-- Все бронирования конкретного клиента
SELECT * FROM booking WHERE client_id = 1;

-- Список клиентов, у которых есть хотя бы одно бронирование
SELECT DISTINCT client.full_name FROM client 
JOIN booking ON client.id = booking.client_id;

-- Список клиентов с телефонами
SELECT full_name, phone FROM client;

-- Список услуг дороже 1000 руб
SELECT * FROM service WHERE price > 1000;

-- Все бронирования с данными клиента и номера
SELECT booking.id,client.full_name, room.number AS room_number, booking.check_in, booking.check_out
FROM booking
JOIN client ON booking.client_id = client.id
JOIN room ON booking.room_id = room.id;

-- Количество бронирований по каждому отелю
SELECT hotel.name AS hotel_name, COUNT(*) AS total_bookings
FROM booking
JOIN room ON booking.room_id = room.id
JOIN hotel ON room.hotel_id = hotel.id
GROUP BY hotel.name;

-- Бронирования с данными клиента и номера
SELECT b.id, c.full_name, r.number, b.start_date, b.end_date
FROM booking b
JOIN client c ON b.client_id = c.id
JOIN room r ON b.room_id = r.id;

-- Список заказанных услуг с клиентами
SELECT so.id, c.full_name, s.name, s.price
FROM service_order so
JOIN client c ON so.client_id = c.id
JOIN service s ON so.service_id = s.id;

-- Все сотрудники отеля "Москва Центр"
SELECT e.full_name, e.position
FROM employee e
JOIN hotel h ON e.hotel_id = h.id
WHERE h.name = 'Москва Центр';

-- Кол-во бронирований по каждому клиенту
SELECT client_id, COUNT(*) AS total_bookings
FROM booking
GROUP BY client_id;

-- Средняя цена номера по каждому отелю
SELECT h.name, AVG(r.price) AS avg_price
FROM hotel h
JOIN room r ON h.id = r.hotel_id
GROUP BY h.name;
