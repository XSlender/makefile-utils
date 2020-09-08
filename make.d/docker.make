docker_up: ## Starts containers, does not build.
	@printf "${GREEN}Starting ${COMPOSE_PROJECT_NAME} containers...${RESET}\n"
	@printf "${GREEN}${DOTTED_LINE}${RESET}\n"
	@docker-compose --compatibility up -d

docker_down: ## Shuts down containers.
	@printf "${YELLOW}shutting down ${COMPOSE_PROJECT_NAME} containers...${RESET}\n"
	@printf "${YELLOW}${DOTTED_LINE}${RESET}\n"
	@docker-compose --compatibility down

docker_build: ## Builds containers, does not start it nor update images.
	@printf "${GREEN}Building ${COMPOSE_PROJECT_NAME} containers...${RESET}\n"
	@printf "${GREEN}${DOTTED_LINE}${RESET}\n"
	@docker-compose --compatibility build

docker_update: ## Updates & restarts all the containers.
	@${MAKE} docker_down 
	@${MAKE} _docker_image_update 
	@${MAKE} docker_up

docker_launch: ## Builds & starts containers.
	@${MAKE} _docker_image_update
	@${MAKE} docker_up

_docker_image_update:
	@printf "${GREEN}Updating ${COMPOSE_PROJECT_NAME} containers...${RESET}\n"
	@printf "${GREEN}${DOTTED_LINE}${RESET}\n"
	@docker-compose --compatibility build --pull