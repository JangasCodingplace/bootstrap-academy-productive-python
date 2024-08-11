ARG PYTHON_VERSION_TAG=3.12
ARG PYTHON_VARIANT_TAG=slim

# Use official Python image as base
# ${PYTHON_VARIANT_TAG:+-${PYTHON_VARIANT_TAG}} is a conditional expansion
# that adds a dash before the variant tag if it is not empty
FROM python:${PYTHON_VERSION_TAG}${PYTHON_VARIANT_TAG:+-${PYTHON_VARIANT_TAG}}

# # #
# Setup Poetry and set Syspaths

ARG POETRY_VERSION=1.8.3

RUN pip install poetry==${POETRY_VERSION}

ENV POETRY_NO_INTERACTION=1 \
    POETRY_VIRTUALENVS_IN_PROJECT=1 \
    POETRY_VIRTUALENVS_CREATE=1 \
    POETRY_CACHE_DIR=/tmp/poetry_cache

# # #
# Project Setup

COPY pyproject.toml .
COPY poetry.lock .
COPY README.md .
COPY app/ app/

RUN poetry install --no-dev

# # #
# Docker Entrypoint configuration
EXPOSE 80

ENTRYPOINT ["poetry", "run"]
CMD ["fastapi", "run", "app/main.py", "--port", "80", "--host", "0.0.0.0"]
