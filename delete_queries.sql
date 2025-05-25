-- Удалить заказ услуги
DELETE FROM service_order WHERE id = 1;

-- Удалить клиента 
DELETE FROM client WHERE id = 3;

-- Удалить номер 
DELETE FROM room WHERE id = 5;

-- Удалить бронирование
DELETE FROM booking WHERE id = 2;

-- Удалить отель
DELETE FROM hotel WHERE id = 3;

-- Удалить сотрудника
DELETE FROM employee WHERE id = 2;

-- Удалить услугу
DELETE FROM service WHERE name = 'Wi-Fi';

-- Удалить сотрудника
DELETE FROM employee WHERE full_name = 'Кирилл Иванов';

-- Удалить все бронирования клиента
DELETE FROM booking WHERE client_id = 3;

-- Удалить все услуги дешевле 500
DELETE FROM service WHERE price < 500;

-- Удалить все недоступные номера
DELETE FROM room WHERE is_available = false;
