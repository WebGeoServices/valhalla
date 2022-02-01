# Howto Build a valhalla image and push it on the WGS's Dockerhub repo
## Create and push the builder image
### Build and push the builder image(s)
From the **docker directory** run the following commands
```
#Build the image
docker build -f Dockerfile-build --tag 'webgeoservices/valhalla:builder-2022-01-25' --no-cache --force-rm .

#Add a tag latest
docker tag webgeoservices/valhalla:builder-2022-01-25 webgeoservices/valhalla:builder-latest

#Push the two tags if needed
docker push webgeoservices/valhalla:builder-2022-01-25
docker push webgeoservices/valhalla:builder-latest
```
### Build and push Valhalla image
Ferom the root directory run
```
docker build -f ./docker/Dockerfile-wgs --tag webgeoservices/valhalla:2022-01-25 .
docker push webgeoservices/valhalla:2022-01-25
```
