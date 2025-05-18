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

