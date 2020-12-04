FROM python:3.7-alpine
RUN apk update
RUN apk add g++ gcc libxml2 libxslt-dev
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","app.py"]pip