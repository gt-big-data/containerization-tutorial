# Containerization Tutorial

This repo is designed to accompany the workshop on containerization held on 2/21/2019.

### Table of Contents
* [What's in the box?](#whats-in-the-box)
  * [.gitignore](#.gitignore)
  * [app.py](#app.py)
  * [Dockerfile](#Dockerfile)
  * [requirements.txt](#requirements.txt)
* [What do I need to do?](#what-do-i-need-to-do)

### What's in the box?

#### .gitignore

If you'd like to use a virtual environment, then if you use the name `env` it won't be tracked. If that's gibberish to you, don't worry about it.

#### app.py

A simple Flask application that returns "Hello, world!" at its default route.

#### Dockerfile

A skeleton of the Dockerfile you'll fill out in order to get our app up and running

#### requirements.txt

A pip-formatted list of all our requirements. Can be installed with `pip install -r requirements.txt`

### What do I need to do?

The Dockerfile is incomplete -- I've left some comments detailing what needs to be done in order to get it up and running. The Python is all correct, so you should be able to build an image without modifying `app.py`. Unless, of course, you wanna get fancy.

To build the image, run `docker build -t <image_tag> .`, where `<image_tag> is whatever you wanna call the image.

Additionally, once the image is built, when you run it you need to bind the port on the container to the port on your computer in order to access our app. You can do this with the `-p` flag, so that the full command looks like `docker run <image_tag> -p 5000:5000`.