SERVICE = muspelheim
COMPOSE = docker-compose

build:
	$(COMPOSE) build
run:
	$(COMPOSE) run --rm $(SERVICE)
brun:
	$(COMPOSE) run --rm $(SERVICE) bash
