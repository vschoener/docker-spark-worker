
SERVICE=wsspark_worker

build: clean
	docker-compose build

start:
	docker-compose up -d

stop:
	docker-compose kill || true

clean: stop
	docker-compose rm -f

shell:
	docker-compose exec $(SERVICE) bash

ps:
	docker-compose ps