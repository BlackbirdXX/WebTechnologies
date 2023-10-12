# Создаем БД "Студенты"

DROP DATABASE IF EXISTS students;
CREATE DATABASE students;
USE students;

# Создаем таблицу "Одногрупники"

DROP TABLE IF EXISTS classmates;
CREATE TABLE classmates (
	Id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT NOT NULL,
    adress VARCHAR(100)
    );

# Заполняем таблицу одногрупниками

INSERT INTO classmates (student_name,  age, adress) VALUES 
('Вася', 17, 'Москва'),
('Петя', 18, 'Москва'),  
('Боря', 20,  'Санкт-Петербург'),
('Гоша', 22,  'Москва'),
('Маша', 26,  'Санкт-Петербург'),
('Даша', 30,  'Москва'),
('Саша', 32,  'Москва'); 

-- запрос на получение имен всех одногруппников (только имен, без всего остального), 
-- которые живут в Москве и их возраст находится в диапазоне [18, 30) лет.

SELECT student_name AS Имя FROM classmates
WHERE adress = 'Москва' AND age BETWEEN 18 AND 29;






