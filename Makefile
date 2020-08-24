.PHONY: up
up:
	docker-compose up -d mongo-dev
	sleep 10
	# docker-compose up -d mongo-express
	docker ps

.PHONY: down
down:
	docker-compose down

.PHONY: clean
clean:
	docker-compose --rmi all
	@rm -rf ./data
	echo "database data has been clean"