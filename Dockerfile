# start by pulling the python image
FROM python:3.8-alpine

# copy the requirements file into the image
COPY ./ /app/

# switch working directory
WORKDIR /app

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# configure the container to run in an executed manner
ENV FLASK_APP=app.py
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD ["app.py"]


## DOCKER COMMANDS
#  docker build -t flask-test .
#  docker run -dit --name test -p 5000:5000 flask-test
