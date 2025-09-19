# Migrazione da MySQL a PostgreSQL

Per completare la migrazione lancio il seguente comando:
```bash
./build/bin/pgloader mysql://<utente_mysql>:<password_utente>@<IP_macchina_mysql>/<nome_db> postgresql://<utente_postgres>:<password_utente>@localhost/<nome_db>
```
Verfico se la migrazione si andata a buonfine:
```bash
psql -U postgres -d prova_db -c "SELECT * FROM <tua_tabella>;"
```
