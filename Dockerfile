FROM python:3.7

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV PIPENV_VENV_IN_PROJECT 1

# -- Install Pipenv:
RUN apt update && apt upgrade -y && apt install python3-dev -y
RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python3.7

RUN pip install pipenv
