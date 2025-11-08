# Use an official Python runtime as base image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /main

# Copy app files into container
COPY . /main

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask will run on
EXPOSE 5000

# Run the Flask app
CMD ["python", "main.py"]
