# Используем официальный образ Python
FROM python:3.9

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем файл зависимостей в рабочую директорию
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip3 install -r requirements.txt

# Копируем остальные файлы проекта в рабочую директорию
COPY . .

# Открываем порт 8000
EXPOSE 8000

# Запускаем Django сервер
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
