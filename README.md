[中文教程地址](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

使用 ssh 远程的时候
```cd openwrt && make menuconfig```

[旁路由教程地址](https://mlapp.cn/1008.html)
旁路由的配置用 file 大法就行，在根目录下的 **network** 文件就是配置文件
主要要在防火墙里添加一条
```bash
iptables -t nat -I POSTROUTING -j MASQUERADE
```

`.2711config_plus` 需要配合 `feeds_plus.conf.default_plus` 使用，这套配置里含有 ssr-plus passwall 等骚软件。

树莓派 4B 开启 samba 
1. 终端下
```bash
smbpasswd -a root
```
2. 注释模版中的 `#invalid users = root`

添加 samba 用户：
```bash
useradd XXX
```
为用户添加添加密码：
```bash
smbpasswd -a XXX
```
依赖
```bash
opkg install shadow-common
```
```bash
opkg install shadow-useradd
```
重启 samba 命令
```bash
/etc/init.d/samba restart
```
