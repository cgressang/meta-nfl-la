
ENV = development

build:
	docker-compose -f ./deployment/$(ENV)/docker-compose.yml --project-directory="$(shell pwd)" build

run:
	docker-compose -f ./deployment/$(ENV)/docker-compose.yml --project-directory="$(shell pwd)" up -d

stop:
	docker-compose -f ./deployment/$(ENV)/docker-compose.yml --project-directory="$(shell pwd)" down

watch:
	docker-compose -f ./deployment/$(ENV)/docker-compose.yml --project-directory="$(shell pwd)" up

.PHONY: build run stop watch