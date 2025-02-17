# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file first to leverage Docker's layer caching
COPY requirements.txt .

# Install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt \
    && pip install gunicorn

# Copy the entire project directory
COPY . .

# Ensure the SQLite database is stored in a volume-mounted directory
RUN mkdir -p /app/db

# Expose port 8000 for Django
EXPOSE 8000

# Run database migrations and start Gunicorn server
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "Hello.wsgi:application"]
