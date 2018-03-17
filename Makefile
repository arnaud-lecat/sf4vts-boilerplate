.PHONY: run

run: clean
	docker-compose up -d
	docker-compose exec app composer install
	docker-compose exec app composer reset

clean:
	docker-compose down --volumes

reset:
	docker-compose exec app composer reset

db:
	docker-compose exec database mysql -Uadmin
