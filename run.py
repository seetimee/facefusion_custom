#!/usr/bin/env python3
import os
# os.environ["http_proxy"]="127.0.0.1:7895"
# os.environ["https_proxy"]="127.0.0.1:7895"
# os.environ["http_proxy"]="192.168.110.175:7890"
# os.environ["https_proxy"]="192.168.110.175:7890"
os.environ["CUDA_VISIBLE_DEVICES"] = "0"
from facefusion import core

if __name__ == '__main__':
	core.cli()
