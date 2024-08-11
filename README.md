# FastAPI Hello World App

Welcome to the FastAPI Hello World App! This simple application is designed to demonstrate the basics of building a web API using FastAPI.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Development](#development)

## Introduction

This project is a minimal FastAPI application that serves a "Hello, World!" message. It is intended as a starting point for learning how to use FastAPI to build web applications and APIs.

## Features

- FastAPI for building APIs.
- Example endpoint that returns a "Hello, World!" message.
- Configuration for development tools like Black, Pre-commit, Flake8, Pytest, Mypy, and Isort.

## Installation

To get started, you will need to have Python 3.12 installed. Then, follow these steps:

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/fastapi-hello-world-app.git
   cd fastapi-hello-world-app

2. Install Poetry, if you haven't already:
    ```sh
    pip install poetry
    ```
   
3. Use Poetry to install the dependencies:
    ```sh
   poetry install
   ```

## Usage

### Running the Application
To run the application, simply execute:

```sh
poetry run uvicorn app.main:app --reload
```
By default, the application will be available at http://127.0.0.1:8000.


## Development
If you want to contribute to the project or set up a development environment, follow these steps:

1. Install the development dependencies:
    ```sh
    poetry install --with dev
    ```

2. Run the tests:
    ```sh
    poetry run pytest
    ```

### Pre-commit Hooks
This project uses pre-commit hooks to ensure code quality. To set up the hooks, run:

```sh
poetry run pre-commit install
```

### Code Formatting and Linting
- Black: Code formatting
- Flake8: Linting
- Mypy: Type checking
- Isort: Import sorting

Run these tools by executing:

    ```sh
    poetry run black .
    poetry run flake8 .
    poetry run mypy .
    poetry run isort
    ```.
