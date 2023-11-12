# Use an official Python runtime as a base image
FROM python:3.9.13-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy requirements file
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip3 install -r requirements.txt

# Copy all local files to the container
COPY . . 

# Command to run your Python app
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]