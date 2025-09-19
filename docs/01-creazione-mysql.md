# Creazione MySQL

## 1. Configurazione iniziale

Installare MySQL sulla macchina.

Cambiare la password all’utente root.

## 2. Creazione utente per la migrazione
```sql
CREATE USER 'massimo'@'%' IDENTIFIED BY 'admin123';
```
## 3. Creazione DB e Tabella
reazione DB di nome prova_db
```sql
CREATE DATABASE prova_db; 
```
Utilizzo DB
```sql
USE prova_db;
```
Creazione Tabella di nome users
```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(100)
);
```
Inserimento Record nella tabella users nelle colonne nome e email
```sql
INSERT INTO users (nome, email) VALUES
('Mario Rossi', 'mario.rossi@email.it'),
('Luca Bianchi', 'luca.bianchi@email.it'),
('Anna Verdi', 'anna.verdi@email.it'),
('Paolo Neri', 'paolo.neri@email.it');
```
## 4. Modifica configurazione MySQL

Aggiungere al file di configurazione /etc/mysql/mysql.conf.d/mysqld.cnf:
```bash
bind-address = 0.0.0.0
default_authentication_plugin = mysql_native_password
```

Riavviare MySQL:
```bash
sudo systemctl restart mysql
```
