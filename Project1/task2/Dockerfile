# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Copy SSL certificate files
COPY cert.pem /app/
COPY key.pem /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 443 for HTTPS
EXPOSE 443

# Run the app with SSL
CMD ["python3", "app.py"]
