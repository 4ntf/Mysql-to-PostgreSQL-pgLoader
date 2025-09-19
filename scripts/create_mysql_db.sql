CREATE DATABASE prova_db;
USE prova_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO users (nome, email)
VALUES ('Mario Rossi', 'mario.rossi@email.it'),
       ('Luca Bianchi', 'luca.bianchi@email.it'),
       ('Anna Verdi', 'anna.verdi@email.it'),
       ('Paolo Neri', 'paolo.neri@email.it');
