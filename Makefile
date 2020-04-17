DOCKER=docker-compose -f docker-compose.yml

docker-up:
	$(DOCKER) up

flask:
	$(DOCKER) run flask ${p}

test:
	$(DOCKER) run --service-ports flask python app.py