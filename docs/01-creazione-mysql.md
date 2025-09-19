# Creazione MySQL

## 1. Configurazione iniziale
- Installare MySQL sulla macchina.
- Cambiare la password all’utente root.

## 2. Creazione utente per la migrazione
```sql

3. Creazione DB e aggiunta dati

Creazione del database:

CREATE DATABASE prova_db;


Selezione del database:

USE prova_db;


Creazione tabella:

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(100)
);


Inserimento dati:

INSERT INTO users (nome, email) VALUES
('Mario Rossi', 'mario.rossi@email.it'),
('Luca Bianchi', 'luca.bianchi@email.it'),
('Anna Verdi', 'anna.verdi@email.it'),
('Paolo Neri', 'paolo.neri@email.it');

4. Modifica configurazione MySQL

Aggiungere al file di configurazione (/etc/mysql/mysql.conf.d/mysqld.cnf):

bind-address = 0.0.0.0

default_authentication_plugin = mysql_native_password


Riavviare MySQL:

sudo systemctl restart mysql
