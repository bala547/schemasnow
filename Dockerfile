FROM jenkins/jenkins:lts

# Install required applications
USER root
RUN apt-get update
RUN apt-get install -y docker.io
RUN apt-get install -y python3
RUN apt-get install -y python3-pip

# Drop back to the regular jenkins user
USER jenkins
