#!/bin/bash

    # --network host \
docker run \
    --ipc=host \
    --ulimit memlock=-1 \
    --ulimit stack=67108864 \
    --shm-size 10gb \
    --gpus all \
    --name nccl-test \
    --rm \
    -t kungfu.azurecr.io/mw-nccl-test:latest \
    torchrun \
    --rdzv_backend=c10d \
    --rdzv_endpoint=localhost:0 \
    --nnodes=1 \
    --nproc_per_node=4 \
    test.py
