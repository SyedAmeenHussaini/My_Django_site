# My_Django_site

A basic Django project setup guide for running locally on Windows/Linux or inside Docker.

---

## 🚀 Getting Started

### 🔹 Clone the Repository

```bash
git clone https://github.com/your-username/My_Django_site.git
cd My_Django_site
```

---

## 🐳 Run with Docker

1. **Build the Docker image**:
   ```bash
   docker build -t my-django-app .
   ```

2. **Run the container**:
   ```bash
   docker run -p 8000:8000 my-django-app
   ```

3. **Access the app**:
   - Open your browser and go to: http://localhost:8000

---

## 🐧 For Ubuntu Server

```bash
# Update system packages
sudo apt update && sudo apt upgrade -y

# Install Python and pip
sudo apt install python3 python3-pip python3-venv -y

# Navigate into the project directory
cd My_Django_site

# Create and activate a virtual environment
python3 -m venv env
source env/bin/activate

# Install Django and project dependencies
pip install django
pip install -r requirements.txt

# Run the development server
python manage.py runserver 0.0.0.0:8000
```

🟢 Access the app from your browser using your server's public IP:
http://<your-server-ip>:8000/

---

## 🪟 For Windows

```bash
# Make sure Python is installed: https://www.python.org/downloads/windows/

# Clone the repo and go into the folder
git clone https://github.com/your-username/My_Django_site.git
cd My_Django_site

# Create and activate a virtual environment
python -m venv venv
venv\Scripts ctivate

# Install Django and project dependencies
pip install django
pip install -r requirements.txt

# Run the development server
python manage.py runserver
```

🟢 Open your browser and go to:
http://127.0.0.1:8000

---

## 📦 Requirements

To install project dependencies separately:

```bash
pip install -r requirements.txt
```

---

## 💬 Contact

If you have any questions, feel free to reach out.
