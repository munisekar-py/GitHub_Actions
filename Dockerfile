# Use official Python image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy code
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Default Flask port
EXPOSE 5000

CMD ["python", "app.py"]
