FROM alpine:3.17.3

RUN apk update && \
    apk add python3 && \
    apk add py3-pip && \
    pip3 install --upgrade pip

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . . 

CMD [ "python3","manage.py","runserver","0.0.0.0:8000" ]
