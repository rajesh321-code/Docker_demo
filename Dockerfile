# Use official Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files into container
COPY requirements.txt .
COPY app.py .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the application
CMD ["python", "app.py"]