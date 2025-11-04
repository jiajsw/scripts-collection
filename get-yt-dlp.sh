#!/bin/bash

# 定义函数
yt-dlp-1080() {
    url="$1"
    # 设置格式 1080p
    yt-dlp -f "bestvideo[height<=1080]+bestaudio/best[height<=1080]" \
    
    # 设置输出格式
    --merge-output-format mp4 \
    # 设置代理
    --proxy socks5://127.0.0.1:8888 \
    
    # 设置cookies
    --cookies ./www.youtube.com_cookies.txt \
    
    # 视频链接
    "$url"
}

yt-dlp-1080 "$1"
