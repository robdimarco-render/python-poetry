FROM python:3.11-bookworm

RUN pip install poetry

COPY . .

RUN poetry install

ENTRYPOINT ["poetry", "run", "gunicorn", "app:app", "--chdir", "./poetry_flask"]
