# Upgrade Valhalla instances with a new version of the code or/and new datas

## Rebuild the code and push it on DockerHub
see documentation [here](../docker/READMEWGS.md)

## Upgrade Valhalla instances to use the new version
### Remove the old instances from the terraform's state
Remove the old instance from the terraform's `state` then create a new one by launching an `apply`
```
# terraform state rm 'module.osrm-database-builder.aws_instance.valhalla-server[0]'
# terraform apply
```
Run the valhalla's docker image
```
# docker-compose -f /woosmap/valhalla-compose.yml up -d
```
Then you can remove the old one from the ELB and destroy it on the AWS console