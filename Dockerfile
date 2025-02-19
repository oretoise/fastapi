FROM python:3.12

COPY --from=ghcr.io/astral-sh/uv:0.6.0 /uv /uvx /bin/

ADD . /app

WORKDIR /app

RUN uv sync --frozen

ENV PATH="/app/.venv/bin:$PATH"

CMD ["fastapi", "dev", "--host", "0.0.0.0", "src/main.py"]