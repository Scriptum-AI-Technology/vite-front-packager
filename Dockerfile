FROM python:3.11-slim
RUN pip install boto3
COPY deploy /usr/bin
CMD ["/usr/bin/deploy"]
