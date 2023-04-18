#!/bin/bash

# Сценарий для чтения и вывода содержимого файла:

# Определение переменных
file="/path/to/file"

# Проверка существования файла
if [ -f "$file" ]
then
  # Цикл чтения файла
  while read line
  do
    echo "$line"
  done < "$file"
else
  echo "Файл не существует"
fi
