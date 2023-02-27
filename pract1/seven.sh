#!/bin/bash

rm -rf domain-driven-hexagon domain-driven-hexagon2
clear


echo "Пункт 1. Склонировано с https://github.com/yunikeil/domain-driven-hexagon"


echo "Пункт 2. Клонирование репозитория"
git clone git@github.com:yunikeil/domain-driven-hexagon.git
cd domain-driven-hexagon
git checkout master
git pull


echo "Пункты 3-4. Проведите по три коммита в двух ветках branch1, branch2"
# Создаем ветку branch1 и переключаемся на нее
git checkout -b branch1

# Цикл для создания трех коммитов в ветке branch1
for i in {1..3}
do
    echo "Commit $i in branch1" >> README.md
    git add README.md
    git commit -m "Commit $i in branch1"
done

# Переключаемся на ветку branch2
git checkout -b branch2

# Цикл для создания трех коммитов в ветке branch2
for i in {4..6}
do
    echo "Commit $i in branch2" >> README.md
    git add README.md
    git commit -m "Commit $i in branch2"
done


echo "Пункт 5. Выполните слияние ветки branch1 в ветку branch2, разрешив конфликты при этом"
git checkout branch2
git merge branch1
# Возможно, потребуется разрешить конфликты


echo "Пункт 6. Выгружаем все изменения во всех ветках в удалённый репозиторий"
git push origin --all


echo "Пункт 7. Проведём еще 3 коммита в ветку branch1"
git checkout branch1

# Цикл для создания трех коммитов в ветке branch1
for i in {7..9}
do
    echo "Commit $i in branch1" >> README.md
    git add README.md
    git commit -m "Commit $i in branch1"
done


echo "Пункт 8. Склонировать репозиторий еще раз в другую директорию"
cd ..
git clone git@github.com:yunikeil/domain-driven-hexagon.git domain-driven-hexagon2
cd domain-driven-hexagon2


echo "Пункт 9. В новом клоне репозитории сделать 3 коммита в ветку branch1"
git checkout branch1

# Цикл для создания трех коммитов в ветке branch1
for i in {10..12}
do
    echo "Commit $i in branch1" >> README.md
    git add README.md
    git commit -m "Commit $i in branch1"
done


echo "Пункт 10. Выгрузить все изменения из нового репозитория в удалённый рпеозиторий"
git push origin --all


echo "Пункт 11. Вернитесь в старый клон с репозиторием, выгрузите изменения командой pull с опцией --force"
cd ../domain-driven-hexagon
git pull --force origin


echo "Пункт 12. Получите все изменения в новом репозитории"
cd ../domain-driven-hexagon2
git pull