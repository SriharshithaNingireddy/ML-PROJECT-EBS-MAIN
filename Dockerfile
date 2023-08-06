FROM library/python:3.8.17
COPY requirements.txt /
RUN pip install -r /requirements.txt
WORKDIR /app
COPY . /app 
RUN apt update -y && apt install awscli -y
CMD [ "python","app.py" ]
