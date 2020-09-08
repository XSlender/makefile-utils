docker_up: ## Starts containers, does not build.
	@printf "${GREEN}Starting ${COMPOSE_PROJECT_NAME} containers...${RESET}\n"
	@printf "${GREEN}${DOTTED_LINE}${RESET}\n"
	@docker-compose --compatibility up -d
	@printf "${LINE_BREAK}"

docker_down: ## Shuts down containers.
	@printf "${YELLOW}shutting down ${COMPOSE_PROJECT_NAME} containers...${RESET}\n"
	@printf "${YELLOW}${DOTTED_LINE}${RESET}\n"
	@docker-compose --compatibility down
	@printf "${LINE_BREAK}"

docker_build: ## Builds containers, does not start it nor update images.
	@printf "${GREEN}Building ${COMPOSE_PROJECT_NAME} containers...${RESET}\n"
	@printf "${GREEN}${DOTTED_LINE}${RESET}\n"
	@docker-compose --compatibility build
	@printf "${LINE_BREAK}"

docker_update: ## Updates & restarts all the containers.
	@${MAKE} --no-print-directory docker_down 
	@${MAKE} --no-print-directory _docker_image_update 
	@${MAKE} --no-print-directory docker_up

docker_launch: ## Builds & starts containers.
	@${MAKE} --no-print-directory _docker_image_update
	@${MAKE} --no-print-directory docker_up

_docker_image_update:
	@printf "${GREEN}Updating ${COMPOSE_PROJECT_NAME} containers...${RESET}\n"
	@printf "${GREEN}${DOTTED_LINE}${RESET}\n"
	@docker-compose --compatibility build --pull
	@printf "${LINE_BREAK}"
