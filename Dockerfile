# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && \
    apt-get install -y build-essential

# Set environment variable for Flask
ENV FLASK_APP=core/server.py

# Copy the requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Run database migrations
RUN flask db upgrade -d core/migrations/

# Expose the application port
EXPOSE 7755

# Set the command to run the application
CMD ["bash", "run.sh"]
