-- Все свободные номера
SELECT * FROM room WHERE is_available = true;

-- Все занятые номера с ценой выше 3000
SELECT * FROM room WHERE is_available = false AND price > 3000;

-- Список клиентов, у которых есть хотя бы одно бронирование
SELECT DISTINCT client.full_name FROM client 
JOIN booking ON client.id = booking.client_id;

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

