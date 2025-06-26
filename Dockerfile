FROM python:3.8-slim-buster

RUN apt update -y && apt install -y awscli
WORKDIR /app

COPY . /app
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]
