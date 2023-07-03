#!/usr/bin/env -S sh -c 'docker build --rm -t kungfu.azurecr.io/mw-nccl-test:latest -f $0 .'

# FROM kungfu.azurecr.io/mw-base:latest
FROM kungfu.azurecr.io/mw-megatron-lm-scheduler

WORKDIR /workspace

ADD . /workspace
