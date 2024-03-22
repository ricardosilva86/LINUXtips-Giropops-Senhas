FROM python:3.10-alpine
WORKDIR /app

COPY ./giropops-senhas /app

RUN pip install --no-cache-dir -r /app/requirements.txt
ENV REDIS_HOST=redis

ENTRYPOINT [ "flask" ]
CMD [ "run", "--host=0.0.0.0" ]

EXPOSE 5000
LABEL name="Ricardo Silva" email="ricardolopes18@yahoo.com.br"