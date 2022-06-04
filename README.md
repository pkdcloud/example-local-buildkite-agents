# example-local-buildkite-agents

Run a cluster of Buildkite agents locally

## Requirements

- make
- docker
- compose

You will need a buildkite-agent config stored in ~/.buildkite

e.g.

```text
# The token from your Buildkite "Agents" page or one generated for you via the GraphQL api
token="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

# The name of the agent
name="%hostname-%spawn"

# The number of agents to spawn in parallel (default is "1")
spawn=10

# Path to where the builds will run from
build-path="~/.buildkite/buildkite-agent/builds"

# Directory where the hook scripts are found
hooks-path="~/.buildkite/buildkite-agent/hooks"

# When plugins are installed they will be saved to this path
plugins-path="~/.buildkite/buildkite-agent/plugins"

```

## Commands

### Help

```sh
make
```

or

```sh
make help
```

![Help](/docs/help.jpg)

### Start Agents

```sh
make start
```

### Stop Agents

```sh
make stop
```

### Clean all

```sh
make clean
```

Note: Removes everything docker related. Essentially sets your env to new.

