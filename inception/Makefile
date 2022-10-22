YML = srcs/docker-compose.yml

all: clean up

up:
	docker compose -f $(YML) up -d

down:
	docker compose -f $(YML) down

clean:
	docker system prune -a
