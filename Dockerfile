# Use an official Python runtime as a parent image
FROM python:3

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY requirements.txt /usr/src/app
RUN pip install -r requirements.txt

COPY . /usr/src/app

EXPOSE 5000

# Run hello_world.py when the container launches
CMD ["python", "./hello_world.py" , "--host", "0.0.0.0", "--port", "5000"]


