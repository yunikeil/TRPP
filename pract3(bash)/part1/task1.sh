#!/bin/bash

# Сценарий для вывода даты, времени, списка зарегистрированных пользователей и uptime системы,
#  а также сохранения этой информации в файл:

# Определение переменных
date=$(date)
uptime=$(uptime)
users=$(who | awk '{print $1}')

# Вывод информации в консоль
echo "Дата и время: $date"
echo "Зарегистрированные пользователи: $users"
echo "Uptime системы: $uptime"

# Сохранение информации в файл
echo "Дата и время: $date" > system_info.txt
echo "Зарегистрированные пользователи: $users" >> system_info.txt
echo "Uptime системы: $uptime" >> system_info.txt
