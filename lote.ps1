python -m venv venv
.\venv\Scripts\Activate.ps1
py -m pip install --upgrade pip
pip install django
django-admin startproject defaults
New-Item -Path .gitignore -ItemType File
Rename-Item -Path "defaults" -NewName "projeto"
New-Item -Path projeto\manage.py -ItemType File
cd projeto
py manage.py migrate
py manage.py startapp app_1
New-Item -Path app_1\urls.py -ItemType File
mkdir -p app_1\templates
New-Item -Path app_1\templates\index.html -ItemType File
New-Item -Path app_1\forms.py -ItemType File
mkdir -p static\css, static\js, static\img
pip list
pip freeze > requirements.txt
py manage.py runserver