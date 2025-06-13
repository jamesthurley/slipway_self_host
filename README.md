My current [Slipway](https://slipway.co/) server configuration.

This repository using the 1Password CLI (`op`) to manage environment variables.

# Usage

## Deploy secrets to Fly.io

```
./deploy-secrets.sh
```

## Deploy app to Fly.io

```
./deploy.sh
```

## Run locally

You can inject the environment variables and run locally by running:
```
op run --env-file op.env -- slipway serve .
```

Alternative first start a terminal or VSCode instance with environment variables injected, for example:
```
op run --env-file op.env -- code .
```

Then run:
```
slipway serve .
```

## Run locally in a container

Run the following script:
```
./build-and-run-locally.sh
```

This script takes care of building the Docker image and running it locally
using the 1Password CLI, passing through the relevant environment variables to the container.
