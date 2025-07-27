FROM python:3.11-slim
RUN pip install boto3
WORKDIR /app
COPY deploy .
RUN /app/deploy
CMD ["./deploy"]
