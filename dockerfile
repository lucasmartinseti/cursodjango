ARG PYTHON_VERSION=3.10.9
ARG POETRY_VERSION=1.3.2

FROM python:$PYTHON_VERSION-alpine as build
ARG POETRY_VERSION

ENV POETRY_VERSION=$POETRY_VERSION \
    POETRY_VIRTUALENVS_IN_PROJECT=true \
    POETRY_NO_INTERACTION=1 \
    POETRY_HOME=/opt/poetry \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

RUN apk update && apk add gcc libc-dev libffi-dev

COPY contrib/env-sample /app/.env
COPY requirements.txt manage.py /app/
COPY ./pypro /app/pypro
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8000

COPY ./contrib/docker/docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["python3", "./manage.py", "runserver", "localhost:8000"]
