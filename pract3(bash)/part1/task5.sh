#!/bin/bash

# Сценарий для подсчета объема диска, занимаемого директорией:

# Определение переменных
dir="/mnt/c/Users/iyuna/source/repos/python/TRPP/pract3(bash)"

# Проверка существования директории
if [ -d "$dir" ]
then
  # Подсчет объема диска
  du -sh "$dir"
else
  echo "Директория не существует"
fi
