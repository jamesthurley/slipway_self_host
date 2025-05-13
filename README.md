# Usage
This repository assumes you have the following other repositories cloned in sibling folders:

```
slipway
slipway_givenergy_cloud
slipway_echarts
slipway_echarts_svg
slipway_svg
slipway_render
```

Currently this builds slipway from scratch, and assumes the other repositories are already built
with their component tar files in their `components` folder.

Once Slipway is public, we will download a Slipway release instead of building, and reference the 
components from the Slipway Component Registry.


## Building/Deploying/Launching
Assemble the scratch folder without building:
```
./assemble.sh
```

Assemble, build locally, serve locally:
```
./build.sh
op run --env-file rig.env -- docker run -p 8080:8080 -e GIVENERGY_API_TOKEN -e GIVENERGY_INVERTER_ID slipway_self_host:latest
```

Assemble and deploy:
```
./deploy.sh
```