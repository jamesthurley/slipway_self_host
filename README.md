My current [Slipway](https://slipway.co/) server configuration.

# Usage

## Deploy secrets to Fly.io (requires 1Password CLI)

```
./deploy-secrets.sh
```

## Deploy app to Fly.io

```
./deploy.sh
```

## Run locally

First start a terminal or code instance with environment variables injected, for example:
```
op run --env-file op.env -- code .
```

Then run:
```
slipway serve .
```

## Run locally in a container

Build the container:
```
./build.sh
```

Inject environment variables and run docker:
```
op run --env-file rig.env -- docker run -p 8080:8080 -e GIVENERGY_API_TOKEN -e GIVENERGY_INVERTER_ID -e GITHUB_TOKEN slipway_self_host:latest
```
