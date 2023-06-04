#!/bin/bash

mkdir ProjectDjango
cd ProjectDjango

python3 -m venv Venv
source Venv/bin/activate

wget https://www.dropbox.com/s/ija7ax3sj6ysb0p/blocknote-master.tar.gz
tar -xvf blocknote-master.tar.gz

wget "https://github.com/yunikeil/TRPP/blob/main/pract3(bash)/part2/new_requirements.py"

python3 new_requirements.py
pip install -r requirements.txt

python manage.py makemigrations
python manage.py migrate 
python manage.py runserver 

echo "All Done!"