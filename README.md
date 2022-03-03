## 软路由的需求及解决方案

1. 能外网访问的**家庭轻 nas**（ddns+uhttpd/nginx+samba）

2. 全屋科学上网（passwall/helloword/ssr-plus）

3. 挂载黑群文件，实现同步备份（cifs）

4. 黑群不会一直开机需要网络唤醒（wol）

5. 扩展一些其他需求（docker+dockerman）

## 具体要用到的插件

1. **ddns** luci-app-ddns 目前已经集成很多供应商，如阿里云、腾讯的dspod.cn、[cloudflare](https://www.cloudflare.com/zh-cn/)等。域名的话我通过腾讯买了一个一年的，要免费的话可以通过 [freenom](https://www.freenom.com/zh/index.html?lang=zh) 去注册一个，一年更新一次就行了，然后转到其他能 ddns 的服务商就好。

2. **uhttpd** luci-app-uhttpd 主要是解决一个 HTTPS 访问的问题，毕竟外网访问，安全性还是要考虑一下的。据说可以用 nginx 来解决，目前还没尝试。

3. **passwall** luci-app-passwall  这是我用的方案，比较习惯这个界面，类似的软件有很多，以后试一下吧。

4. **cifs** luci-app-cifs-mount 挂载 SAMBA 用的。

5. **wol** luci-app-wol 局域网唤醒。

6. **docker** luci-app-docker luci-app-dockerman 这个其实挺坑的，最早我用 [SuLingGG](https://github.com/SuLingGG/OpenWrt-Rpi) 的固件，能安装上 docker 却无法运行，后来才知道 SuLingGG 是基于 [immortalwrt 源](https://github.com/immortalwrt/immortalwrt) 编译的，传闻都不行，要回退 docker 版本，我不信邪自己也编译了一份也不行。后来我用回了 [lede 源](https://github.com/coolsnowwolf/lede) 来解决了这个问题。官方源也折腾过，但本地化确实 lede 好。

### 一些其他的插件

- **luci-app-diskman** 硬盘助手，方便创建分区，挂载分区什么的，这不比自己输入命令香。

- **luci-app-hd-idle** 硬盘休眠，如果以后外界硬盘扩容可以方便休眠。

- **luci-app-samba4** 启动 samba 服务，方便管理文件吧。这里要注意 ⚠️ samba 和 samba4 不兼容。lede 源内的 autosamba 也不兼容 samba4 不能同时选。目前官方源只有 samba4 的选项了。

- **luci-app-ttyd** 网页版终端，可以不用特意打开 ssh 来连接了。

- **luci-app-upnp** 因为准备作为旁路由器使用，所以需要控制端口转发，不用进主路由器改端口转发。

- **luci-app-vsftpd** FTP 服务器

- **luci-app-turboacc** Turbo ACC 网络加速(支持 Fast Path 或者 硬件 NAT)

- **luci-app-ramfree** 释放内存

- **luci-app-nlbwmon** 网络带宽监视器

- **luci-app-firewall** 添加防火墙

- **luci-app-filetransfer** 文件传输（可web安装ipk包）

- **luci-app-autoreboot** 支持计划重启

- **luci-app-arpbind** ip/mac 绑定

参考教程：

[插件中文解释1](https://www.openwrt.pro/post-599.html)

[插件中文解释2](https://mtom.ml/827.html)

[云编译 github action](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

[云编译 gitpod](https://www.right.com.cn/forum/thread-1573038-1-1.html)

[旁路由设置教程](https://mlapp.cn/1008.html)


[常用软件源](https://github.com/kenzok8/openwrt-packages)

[passwall 软件仓库](https://github.com/xiaorouji/openwrt-passwall)

[helloword 软件仓库](https://github.com/fw876/helloworld)


[lede 大源地址](https://github.com/coolsnowwolf/lede)

[openwrt 官方源地址](https://github.com/openwrt/openwrt)

[immortalwrt 源地址](https://github.com/immortalwrt/immortalwrt)
