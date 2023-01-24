.PHONY: help
SHELL:=/bin/bash

clean:
	rm -rf requirements.txt

create-requirements:
	pipenv requirements > requirements.txt

copy-env-file:
	@cp contrib/.env-example src/.env


build:
	docker build -t bdd-exemple .

run: build
	docker compose up app 