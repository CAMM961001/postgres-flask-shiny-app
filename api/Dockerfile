# syntax=docker/dockerfile:1
FROM python:3
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 4999
COPY . .
CMD [ "python", "app.py" ]