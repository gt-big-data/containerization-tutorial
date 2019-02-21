# Select a base image to start building from. Since we're using Python 3, it
# might be a good idea to look at the official Python images
# https://hub.docker.com/_/python
FROM python:3-alpine

# We need to copy over the app and the list of requirements into our container
COPY app.py ./app.py
COPY requirements.txt ./requirements.txt

# We also need to install the requirements into our container
RUN pip install -r requirements.txt
RUN rm ./requirements.txt

# What command do we want to run when starting up the container?
ENTRYPOINT ["python", "app.py"]
