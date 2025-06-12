set -eux;

docker pull slipwayhq/slipway:latest
docker build . -t slipway_self_host:latest

op run --env-file op.env -- docker run --rm -p 8080:8080 \
  -e GIVENERGY_API_TOKEN \
  -e GIVENERGY_INVERTER_ID \
  -e OCTOPUS_API_TOKEN \
  -e OCTOPUS_ACCOUNT_NUMBER \
  -e GITHUB_TOKEN \
  -e SLIPWAY_SECRET \
  slipway_self_host:latest