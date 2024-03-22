FROM python:3.10-alpine
COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir -r /app/requirements.txt
ENV REDIS_HOST=redis
EXPOSE 80
