# compose.mk

# ------------------------------------------------------------
# DERIVED VARIABLES
# ------------------------------------------------------------

.COMPOSE_ARGS	:= $(DEBUG)
.COMPOSE_RUNNER := $(OPS_DIR)/$(IMAGE_TOOL)

# ------------------------------------------------------------
# TARGETS
# ------------------------------------------------------------

compose-build: 												## Builds a docker compose service image
	@$(.COMPOSE_RUNNER) build $(.COMPOSE_ARGS)

compose-deploy:												## Future Use
	@$(.COMPOSE_RUNNER) deploy $(.COMPOSE_ARGS)

compose-destroy: 											## [WARNING] Deletes all containers, networks, images and build caches
	@$(.COMPOSE_RUNNER) destroy $(.COMPOSE_ARGS)
