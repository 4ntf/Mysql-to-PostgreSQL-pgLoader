# Installazione PgLoader
## 1. Installazione dipendenze
```bash
sudo apt install sbcl unzip libsqlite3-dev gawk curl make freetds-dev libzip-dev
```
## 2. Scaricare il Codice Sorgente
Scarico direttamnte da GitHub il codice sorgente con curl
```bash
curl -fsSLO https://github.com/dimitri/pgloader/archive/v3.6.2.tar.gz
```
Dopo aver scaricato curl, estrai il tarball con il seguente comando:
```bash
tar xvf v3.6.2.tar.gz
```
## 3. Compliazione
Per compilare pgloader devo prima entrare nella directory (basat lanciare il comando nella direcotry di dove si è estratto il tarball) di pgLoader, 
```bash
cd pgloader-3.6.2/ 
```
Dopodiché compilo il pgLoader con make
```bash
make pgloader
```
