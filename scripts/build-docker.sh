#!/bin/bash

DOCKER_BUILDKIT=1 docker build -f docker/Dockerfile.0 -t 'replicate-2192-0:docker' .

DOCKER_BUILDKIT=1 docker build -f docker/Dockerfile.1 -t 'replicate-2192-1:docker' .

DOCKER_BUILDKIT=1 docker build -f docker/Dockerfile.2 -t 'replicate-2192-2:docker' .
