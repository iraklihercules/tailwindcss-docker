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
