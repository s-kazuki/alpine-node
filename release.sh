IMAGE=skazuki/alpine-node
TAG=18
docker build . -t ${IMAGE}:${TAG}
# docker push ${IMAGE}:${TAG} # not NOT automated build env
