#!/bin/bash

docker run \
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
