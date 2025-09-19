#!/bin/bash

./build/bin/pgloader \
  mysql://massimo:admin123@10.0.0.4/prova_db \
  postgresql://postgres:admin123@localhost/prova_db
