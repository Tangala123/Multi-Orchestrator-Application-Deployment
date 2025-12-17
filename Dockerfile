
# Use a lightweight Python image
FROM python:3.9-alpine

# Set working directory inside the container
WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .

# Set environment variable
ENV PLATFORM=Docker

# Expose the application port
EXPOSE 8080

# Run the Flask app
CMD ["python", "app.py"]
