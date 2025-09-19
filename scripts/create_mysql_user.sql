ALTER USER 'root'@'localhost' IDENTIFIED BY 'nuova_password';
CREATE USER 'nome_utente'@'%' IDENTIFIED BY 'admin123';
GRANT ALL PRIVILEGES ON prova_db.* TO 'nome_utente'@'%';
FLUSH PRIVILEGES;
