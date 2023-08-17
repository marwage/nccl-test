#!/usr/bin/env -S sh -c 'docker build --rm -t kungfu.azurecr.io/mw-nccl-test:latest -f $0 .'

FROM kungfu.azurecr.io/mw-pytorch1:latest

WORKDIR /workspace

ADD . /workspace
