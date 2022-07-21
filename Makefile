.PHONY: setup
setup: 
	docker-compose build

.PHONY: start
start:
	docker-compose up --remove-orphans

.PHONY: create-network
create-network: 
	docker network create ten-words-30s-network
