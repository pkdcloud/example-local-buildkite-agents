# buildkite.mk

# ------------------------------------------------------------
# DERIVED VARIABLES
# ------------------------------------------------------------

.BUILDKITE_ARGS	   := $(DEBUG)
.BUILDKITE_RUNNER  := $(OPS_DIR)/$(CI_TOOL)

# ------------------------------------------------------------
# TARGETS
# ------------------------------------------------------------

agent-start: ## Starts a local Buildkite Agent
	@$(.BUILDKITE_RUNNER) start $(.BUILDKITE_ARGS)

agent-stop: ## Stops a local Buildkite Agent
	@$(.BUILDKITE_RUNNER) stop $(.BUILDKITE_ARGS)
