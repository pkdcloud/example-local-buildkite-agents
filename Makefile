# Makefile

# ------------------------------------------------------------
# USER VARIABLES
# ------------------------------------------------------------

ENTITY 		?= pkdcloud

CI_TOOL 	:= buildkite
IMAGE_TOOL  := compose
HELP_TOOL	:= help

MAKE_DIR 	:= make
OPS_DIR 	:= ops
CI_DIR		:= buildkite
IMAGE_DIR 	:= .docker

DEBUG ?= false

# ------------------------------------------------------------
# ASSUMED DEFAULTS
# ------------------------------------------------------------

SHELL := /usr/bin/env bash

.DEFAULT_GOAL := help
.MAKEFILES	  := $(MAKE_DIR)/$(HELP_TOOL).mk $(MAKE_DIR)/$(CI_DIR).mk $(MAKE_DIR)/$(IMAGE_DIR).mk

include $(.MAKEFILES)

# ------------------------------------------------------------
# Exports
# ------------------------------------------------------------

export ENTITY

# ------------------------------------------------------------
# TARGETS
# ------------------------------------------------------------

start: agent-start 					## Starts local CI agent(s)

stop: agent-stop 					## Stops local CI agent(s)

clean: agent-stop compose-destroy 	## [WARNING] Resets everything, Deletes all containers, networks, images and build caches
