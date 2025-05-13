rm -rf components
mkdir -p components

rsync -av ../slipway_givenergy_cloud/components/*.tar ./components
