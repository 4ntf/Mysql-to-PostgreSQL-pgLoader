# Configurazione PostgreSQL

## 1. Installazione PostgreSQL 17
Per prima cosa installo la repository ufficiale di postregres
```bash
sudo apt install curl ca-certificates
sudo install -d /usr/share/postgresql-common/pgdg
sudo curl -o /usr/share/postgresql-common/pgdg/apt.postgresql.org.asc --fail https://www.postgresql.org/media/keys/ACCC4CF8.asc
. /etc/os-release
sudo sh -c "echo 'deb [signed-by=/usr/share/postgresql-common/pgdg/apt.postgresql.org.asc] https://apt.postgresql.org/pub/repos/apt $VERSION_CODENAME-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
```
Faccio un update dei pacchetti
```bash
sudo apt update
```
Installo l'ultima verisione di postgreSQL e abilito e avvio il servizio
```bash
sudo apt install postgresql -y
sudo systemctl enable postgresql
sudo systemctl start postgresql
```
## 2. Creazione utente e DB
Per entrare dentro a postgres devo cambaire l'utente con:
```bash
sudo -i -u postrgres
```
Dopo con il comando entro nel DB postrgreSQL
```bash
psql
```
Cambio la password all'utente di default (postgres)
```psql
ALTER USER postgres WITH PASSWORD 'admin123';
```
Dopo creo il DB con lo stesso nome del DB MySQL per comodità
```psql
CREATE DATABASE prova_db;
```

## 4. Cofigurazione PostgreSQL
- Modificare in `/etc/postgresql/17/main/postgresql.conf`
  ```bash
  listen_addresses = '*'
  ```
- Aggiungere alla fine del file di configurazione `/etc/postgresql/17/main/pg_hba.conf `
  ```bash
  host    all             all             "la_tua_sottorete/xx"         md5
  ```
