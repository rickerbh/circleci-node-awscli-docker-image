FROM circleci/node:7.10

MAINTAINER Hamish Rickerby <hamish@happtic.com>

# Update apt and install python
RUN sudo apt-get -y -qq update
RUN sudo apt-get -y -qq install python3.4-dev

# Install pip
ENV PATH="/home/circleci/.local/bin:${PATH}"
RUN sudo curl -O https://bootstrap.pypa.io/get-pip.py
RUN python3.4 get-pip.py --user

# Install awscli
RUN pip install awscli --upgrade --user
