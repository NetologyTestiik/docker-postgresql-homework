-- Создание таблицы cards, если она не существует
CREATE TABLE IF NOT EXISTS cards (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    image_url VARCHAR(500)
);

-- Очистка старых данных
TRUNCATE TABLE cards RESTART IDENTITY;

-- Вставка тестовых данных
INSERT INTO cards (name, description, image_url) VALUES
('Альфа-Карта Premium', 'Альфа-Карта вернёт ваши деньги', '/alfa-card-premium.png'),
('Alfa Travel Premium', 'Самая выгодная карта для путешествий', '/alfa-card-travel.png'),
('CashBack Premium', 'Заправь свою карту. Кешбэк на АЗС, в кафе и ресторанах', '/alfa-card-cashback.png');