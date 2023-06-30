import os

import torch
import torch.distributed as dist


def test():
    dist.init_process_group(backend="nccl")

    local_rank = int(os.environ["LOCAL_RANK"])
    torch.cuda.set_device(local_rank)

    x = torch.ones(1)
    x = x.cuda()
    torch.distributed.all_reduce(x)
    print(x)


if __name__ == "__main__":
    test()
