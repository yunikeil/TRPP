#!/bin/bash

# Сценарий для вывода содержимого каталога или сообщения о его отсутствии:

# Определение переменных
dir="/path/to/directory"

# Проверка существования каталога
if [ -d "$dir" ]
then
  # Вывод содержимого каталога
  ls "$dir"
else
  echo "Каталог не существует"
fi
