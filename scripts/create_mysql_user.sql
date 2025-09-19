```sql
ALTER USER 'root'@'localhost' IDENTIFIED BY 'nuova_password';
CREATE USER 'massimo'@'%' IDENTIFIED BY 'admin123';
GRANT ALL PRIVILEGES ON prova_db.* TO 'massimo'@'%';
FLUSH PRIVILEGES;
```
