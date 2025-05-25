-- Изменить цену номера
UPDATE room SET price = 6800 WHERE id = 2;

-- Сделать номер свободным
UPDATE room SET is_available = true WHERE id = 2;

-- Повысить звезды отеля
UPDATE hotel SET stars = 5 WHERE name = 'City Center Hotel';

-- Обновить дату выезда
UPDATE booking SET check_out = '2025-05-15' WHERE id = 1;

-- Обновить фамилию клиента
UPDATE client SET full_name = 'Ivan Petrov' WHERE id = 1;

-- Изменить должность сотрудника
UPDATE employee SET position = 'Manager' WHERE full_name = 'Olga Smirnova';

-- Изменить цену услуги
UPDATE service SET price = 1600 WHERE name = 'Spa';

-- Обновить цену на услугу
UPDATE service SET price = 2700 WHERE name = 'Массаж';

-- Сделать номер недоступным
UPDATE room SET is_available = false WHERE id = 3;

-- Изменить дату бронирования
UPDATE booking SET start_date = '2025-06-10' WHERE id = 4;

-- Изменить телефон клиента
UPDATE client SET phone = '+79876543210' WHERE id = 2;

-- Обновить позицию сотрудника
UPDATE employee SET position = 'Старший менеджер' WHERE full_name = 'Мария Козлова';

-- Перевести отель в другой город
UPDATE hotel SET city = 'Сочи' WHERE id = 2;

-- Обновить цену номера
UPDATE room SET price = 4500 WHERE number = '305';

-- Отметить услугу как бесплатную
UPDATE service SET price = 0 WHERE name = 'Wi-Fi';

-- Перенести заказ услуги
UPDATE service_order SET order_date = '2025-05-15' WHERE id = 2;

-- Изменить имя клиента
UPDATE client SET full_name = 'Ирина Иванова' WHERE id = 3;


