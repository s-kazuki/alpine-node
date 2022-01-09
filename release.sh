IMAGE=skazuki/alpine-node
TAG=latest
docker build . -t ${IMAGE}:${TAG}
# docker push ${IMAGE}:${TAG} # not NOT automated build env