# Creazione MySQL

## 1. Configurazione iniziale
- Installare MySQL sulla macchina.
- Cambiare la password all’utente root.

## 2. Creazione utente per la migrazione
```sql
CREATE USER 'massimo'@'%' IDENTIFIED BY 'admin123';
