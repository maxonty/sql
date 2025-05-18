-- Удалить заказ услуги
DELETE FROM service_order WHERE id = 1;

-- Удалить клиента (если нет внешних зависимостей)
DELETE FROM client WHERE id = 3;

-- Удалить номер (если не участвует в бронированиях)
DELETE FROM room WHERE id = 5;

-- Удалить бронирование
DELETE FROM booking WHERE id = 2;

-- Удалить отель
DELETE FROM hotel WHERE id = 3;

-- Удалить сотрудника
DELETE FROM employee WHERE id = 2;

-- Удалить услугу
DELETE FROM service WHERE id = 3;
