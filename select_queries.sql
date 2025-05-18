-- Все свободные номера
SELECT * FROM room WHERE is_available = true;

-- Все бронирования клиента Иван Иванов
SELECT * FROM booking
WHERE client_id = (SELECT id FROM client WHERE full_name = 'Ivan Ivanov');
