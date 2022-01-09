IMAGE=skazuki/alpine-node
TAG=14
docker build . -t ${IMAGE}:${TAG}
# docker push ${IMAGE}:${TAG} # not NOT automated build env