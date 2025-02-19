up:	build
	@docker compose up -d

down:
	@docker compose down

build:
	@docker compose build

lint:
	@docker compose uv run ruff check

logs:
	@docker logs ${APPLICATION_NAME}-web