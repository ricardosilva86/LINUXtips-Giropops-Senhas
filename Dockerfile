FROM python:3.10-alpine
RUN pip install --no-cache-dir -r requirements.txt
ENV REDIS_HOST=localhost
EXPOSE 80
