FROM python:3.12.0a7-slim

WORKDIR /app
COPY src .
RUN pip install -r requirements.txt


EXPOSE 80
CMD python3 server.py
