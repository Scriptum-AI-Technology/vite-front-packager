FROM python:3.11-slim

RUN pip install boto3

WORKDIR /app
COPY deploy .

ARG APP_NAME
ARG APP_VERSION
ARG APP_INSTANCE_NAME
ARG SECRET_DO_SPACES_KEY
ARG SECRET_DO_SPACES_SECRET

RUN ls -alt
RUN printenv | sort
RUN ./deploy
RUN ls -alt
RUN ls -alt *

CMD ["python", "deploy"]
