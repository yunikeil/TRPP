#!/bin/bash

echo "File started!"
mkdir ProjectDjango
cd ProjectDjango

echo "Venv activated!"
python3 -m venv Venv
source Venv/bin/activate
pip install chardet

echo "Dropbox downloaded!"
wget https://www.dropbox.com/s/ija7ax3sj6ysb0p/blocknote-master.tar.gz
tar -xvf blocknote-master.tar.gz

echo "new_requirements downloaded!"
wget "https://raw.githubusercontent.com/yunikeil/TRPP/main/pract3(bash)/part2/new_requirements.py"

echo "new_requirements started!"
python3 new_requirements.py
pip install -r requirements.txt
echo "new_requirements finished!"

python3 manage.py makemigrations
python3 manage.py migrate 
python3 manage.py runserver 

echo "All Done!"