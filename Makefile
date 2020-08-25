.PHONY: up-all
up-all:
	docker-compose up -d 
	sleep 10
	# docker-compose up -d mongo-express
	docker ps

.PHONY: up-db
up-db:
	docker-compose up -d database
	sleep 10
	# docker-compose up -d mongo-express
	docker ps

.PHONY: down
down:
	docker-compose down

.PHONY: clean
clean:
	@rm -rf ./data
	echo "database data has been clean"