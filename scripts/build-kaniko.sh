#!/bin/bash -e

docker run \
    -v `pwd`:/workspace \
    --network host \
    gcr.io/kaniko-project/executor:v1.9.0 \
    --dockerfile /workspace/docker/Dockerfile.0 \
    --insecure-registry "localhost:5000" \
    --destination "localhost:5000/replicate-2192-0:kaniko-v1.9.0" \
    --context dir:///workspace/

docker run \
    -v `pwd`:/workspace \
    --network host \
    gcr.io/kaniko-project/executor:v1.9.0 \
    --dockerfile /workspace/docker/Dockerfile.1 \
    --insecure-registry "localhost:5000" \
    --destination "localhost:5000/replicate-2192-1:kaniko-v1.9.0" \
    --context dir:///workspace/

docker run \
    -v `pwd`:/workspace \
    --network host \
    gcr.io/kaniko-project/executor:v1.9.0 \
    --dockerfile /workspace/docker/Dockerfile.2 \
    --insecure-registry "localhost:5000" \
    --destination "localhost:5000/replicate-2192-2:kaniko-v1.9.0" \
    --context dir:///workspace/
