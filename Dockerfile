# FROM jupyter/datascience-notebook

# WORKDIR /app
# COPY . /app
# RUN conda install --file requirements.txt

# EXPOSE 8888

# CMD [ "jupyter", "notebook" , "--no-browser ", "--ip=0.0.0.0", "--allow-root"]

FROM ubuntu:latest

# Run a system update to get it up to speed
# Then install python3 and pip3
RUN apt-get update && apt-get install -y python3 \
    python3-pip

# Install jupyter
RUN pip3 install jupyter

# Create a new system user
RUN useradd -ms /bin/bash jupyter

# Change to this new user
USER jupyter

# Set the container working directory to the user home folder
WORKDIR /home/jupyter

COPY . /home/jupyter

RUN pip3 install -r requirements.txt

# Start the jupyter notebook
ENTRYPOINT ["jupyter", "notebook", "--ip=*", "--allow-root", "--NotebookApp.token=''"]