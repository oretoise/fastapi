up:	build
	@docker compose up -d

down:
	@docker compose down

build:
	@docker compose build

logs:
	@docker logs ${APPLICATION_NAME}-web