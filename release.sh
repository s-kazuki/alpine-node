IMAGE=skazuki/alpine-node
TAG=22
docker build . -t ${IMAGE}:${TAG}
# docker push ${IMAGE}:${TAG} # not NOT automated build env
