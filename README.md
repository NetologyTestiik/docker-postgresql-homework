# Домашнее задание к занятию «3.1. Docker»

## Задача №1: PostgreSQL

Проект содержит конфигурацию для запуска PostgreSQL в Docker и Spring Boot приложения.

### Структура проекта:
- `docker-compose.yml` - конфигурация Docker Compose для PostgreSQL
- `application.properties` - настройки Spring Boot приложения
- `init.sql` - SQL скрипт для инициализации БД
- `db-api.jar` - исполняемый JAR файл приложения
- `.gitignore` - файл игнорирования ненужных файлов

### Запуск:
1. Запустить БД: `docker-compose up -d`
2. Запустить приложение: `java -jar db-api.jar`
3. Открыть в браузере: http://localhost:9999/api/cards

### Результат:
Приложение возвращает JSON массив с картами:

```json
[
  {
    "id": 1,
    "name": "Альфа-Карта Premium",
    "description": "Альфа-Карта вернёт ваши деньги",
    "imageUrl": "/alfa-card-premium.png"
  },
  {
    "id": 2,
    "name": "Alfa Travel Premium",
    "description": "Самая выгодная карта для путешествий",
    "imageUrl": "/alfa-card-travel.png"
  },
  {
    "id": 3,
    "name": "CashBack Premium",
    "description": "Заправь свою карту. Кешбэк на АЗС, в кафе и ресторанах",
    "imageUrl": "/alfa-card-cashback.png"
  }
]
