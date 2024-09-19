.PHONY:
build:
	docker compose build

.PHONY:
down:
	docker compose down

.PHONY:
start:
	docker compose up -d

.PHONY:
stop:
	docker compose stop

.PHONY:
shell:
	docker exec -it -u node tailwind-css bash

.PHONY:
shell-root:
	docker exec -it tailwind-css bash

.PHONY:
npm-watch:
	docker exec -it -u node tailwind-css bash -c "npm run build"

.PHONY:
npm-build:
	docker exec -it -u node tailwind-css bash -c "npm run build"

.PHONY:
init: build start npm-build
