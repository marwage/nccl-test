import os

import torch
import torch.distributed as dist


def test():
    print("start test")

    dist.init_process_group(backend="nccl")
    print("init process group")

    local_rank = int(os.environ["LOCAL_RANK"])
    torch.cuda.set_device(local_rank)

    x = torch.ones(1)
    x = x.cuda()
    print("tensor to GPU")
    torch.distributed.all_reduce(x)
    print(x)


if __name__ == "__main__":
    test()
