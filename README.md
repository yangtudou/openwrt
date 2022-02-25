[中文教程地址](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

使用 ssh 远程的时候
```cd openwrt && make menuconfig```

[旁路由教程地址](https://mlapp.cn/1008.html)
主要要在防火墙里添加一条
```iptables -t nat -I POSTROUTING -j MASQUERADE```
