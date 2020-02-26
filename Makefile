.PHONY: all

all: build run

build:
	@echo "\nBuilding images - Zookeeper, Kafka and kafka manager\n"
	docker-compose build

run:
	@echo "\nStarting kafka,kafka manager and zookeeper cluster\n"
	docker-compose up -d

stop:
	@echo "\nStoping kafka,kafka manager and zookeeper cluster\n"
	docker-compose stop

start:
	@echo "\nStarting kafka,kafka manager and zookeeper cluster\n"
	docker-compose start

restart: stop build run

zk_logs:
	@echo "\nGetting logs of zookeeper instances\n"
	docker-compose logs -f zoo1 zoo2 zoo3

kafka_logs:
	@echo "\nGetting logs of kafka instances\n"
	docker-compose logs -f kafka1 kafka2 kafka3

kafka_manager_logs:
	@echo "\nGetting logs of kafka manager instances\n"
	docker-compose logs -f kafka_manager

kill:
	@echo "\nRemoving kafka,kafka manager and zookeeper cluster\n"
	docker-compose kill

ps:
	docker-compose ps

