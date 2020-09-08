# Docker compose preloaded targets
This submodule is preloaded with Makefile targets that allows you basic operation on docker-composed projects.

## Target list
| Target | Description |
|--------|-------------|
| docker_up     | Starts containers, does not build. |
| docker_down   | Shuts down containers. |
| docker_build  | Builds containers, does not start it nor update images. |
| docker_update | Updates & restarts all the containers. |
| docker_launch | Builds & starts containers. |