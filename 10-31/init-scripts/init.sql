CREATE DATABASE IF NOT EXISTS so_teste;
USE so_teste;
CREATE TABLE IF NOT EXISTS aluno(
id INT PRIMARY KEY AUTO_INCREMENT,
ra VARCHAR(20),
nome VARCHAR(100),
aniversario DATE
)CHARACTER SET='utf8mb4’;
INSERT INTO aluno VALUES
(null, '0123456', 'Eduardo Verri', '1991-06-16'),
(null, '0254568', 'Marcio Santana', '1953-12-24'),
(null, '0456587', 'Claudio Frizzarini', '1980-05-12’);