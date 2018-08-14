.PHONY: run

run: clean
	docker-compose up -d
	docker-compose exec app composer install
	# If connexion problems occurs during composer reset
	# Uncomment waiting for database to be ready for connections
	# sleep 7
	docker-compose exec app composer reset

clean:
	docker-compose down --volumes

reset:
	docker-compose exec app composer reset

db:
	docker-compose exec database mysql -uadmin -ptest