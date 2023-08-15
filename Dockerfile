FROM python:3.7

# Applicattion Package location
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

#Copy requirements.text file to the container at /app
COPY requirements.txt  .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt --no-cache-dir

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]


# Build the image using the following command
# docker build -t image_name .

#Push the image to docker hub
#tag the image
# docker tag image_name dockerhub_username/image_name
# docker push image_name