FROM python:2.7.18-slim-buster

WORKDIR /app
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

ENV PYTHONUNBUFFERED=1
EXPOSE 8888
CMD ["python", "app.py"]

