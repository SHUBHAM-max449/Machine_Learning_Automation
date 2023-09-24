# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory
COPY . /app

# Install the application dependencies
RUN pip install --upgrade pip

RUN pip install -r requirements.txt


EXPOSE 8080

# Define the entry point for the container
CMD ["python", "Automated_ML_App.py", "runserver", "0.0.0.0:8080"]
