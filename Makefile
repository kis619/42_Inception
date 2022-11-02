NAME = Inception
YAML = ./src/socker-compose.YAML

all: $(NAME)

$(NAME): $(YAML)
	docker compose -f $(YAML) up --build

clean:
	docker compose -f $(YAML) down
	docker system prune -af

re: clean $(NAME)