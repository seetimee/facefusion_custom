#!/bin/bash

# 获取脚本所在的目录路径
script_dir="$(cd "$(dirname "$0")" && pwd)"

# 进入脚本所在的目录
cd "$script_dir"

# 执行其他操作
echo "sh now in: $(pwd)"


# 文件名变量
# filename=$(find . -type f -name "paddle*.py") #找paddle***.py 文件
filename="run.py"

# 检测是否有名为"$filename"的进程在运行
if pgrep -f "$filename" > /dev/null; then
    echo "正在终止进程$filename..."
    pkill -f "$filename"
fi

# 运行"$filename"
echo "运行 $filename"


nohup /data2/stephen/miniconda3/envs/facefusion/bin/python -u "$filename" >> ./"$filename".log 2>&1 &  
# nohup /data2/stephen/miniconda3/envs/flask/bin/python -u -m flask run --host 0.0.0.0 >> ./"$filename".log 2>&1 &  
# 当使用 -m 参数时，Python 解释器会将指定的模块作为主程序运行