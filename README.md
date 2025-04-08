# My_Django_site.


how to run on docker

git clone 
docker build -t my-django-app .

docker run -p 8000:8000 my-django-app


For ubuntu server commands 

sudo apt update && sudo apt upgrade -y          #Update system packages
sudo apt install python3 python3-pip python3-venv -y          #Install Python and pip
cd My_Django_site           #go to inside the your folder
python3 -m venv env         #Create a project directory and set up a virtual environment
source env/bin/activate     #run the virutal enviroment
pip install django          #install django in virutal enviroment
pip install -r requirements.txt     #install dependency 
python manage.py runserver          #run python application then u can access through on your local url http://127.0.0.1:8000/

 
for windows

install python in your windows
clone repo
open folder My_Django_site
python -m venv venv   #In Command Prompt
venv\Scripts\activate     #Activate the virtual environment In Command Prompt
pip install django        #install django
django-admin --version     #verify django version
pip install -r requirements.txt     #install dependency 
python manage.py runserver          #run python application then u can access through on your local url http://127.0.0.1:8000/


 


                   
