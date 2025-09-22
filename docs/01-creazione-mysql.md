# Creazione MySQL

## 1. Configurazione iniziale

Installare MySQL sulla macchina.

Cambiare la password all’utente root.

## 2. Creazione utente per la migrazione
In mysql laciare questo comado per togliere il carattere speciale nei requisiti delle password
```sql
SET GLOBAL validate_password.special_char_count = 0;
```
la creazione di questo utente va fatta dopo la modifica del file di configurazione di mysqld.cnf, dove inserisco il plugin della mysql_native_password nel punto 4.
```sql
CREATE USER 'tuo_utente'@'%' IDENTIFIED WITH mysql_native_password BY 'admin123';
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
Creazione Tabella di nome users con id, nome e mail. se voglio posso aggiungere anche la data di registrazione del record e la data di update del record.
```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(100)
    data_registrazione TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
Do tutti i privilegi del DB all'utente creato in precedenza
```sql
GRANT ALL PRIVILEGES ON prova_db.* TO '<il_tuo_utente>'@'%';
FLUSH PRIVILEGES;
```

## 4. Modifica configurazione MySQL

Aggiungere al file di configurazione `/etc/mysql/mysql.conf.d/mysqld.cnf`:
```bash
bind-address = 0.0.0.0
default_authentication_plugin = mysql_native_password
```

Riavviare MySQL:
```bash
sudo systemctl restart mysql
```
