FROM python:3-slim

WORKDIR /app

COPY ./project/ ./

RUN pip install -r requirements.txt

ENV FLASK_APP=app.py

CMD flask run --host=0.0.0.0