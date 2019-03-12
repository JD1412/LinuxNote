# Kali Linux(Debian) Beautify

> Linux真的是有毒，越用越能感受到他的魅力，快有一个多星期一直没有怎么干正事，捣腾Kali的美化以及一些其他软件的设定，感觉Linux配置好了每次使用都是一种享受

_生命不息，折腾不止_


## 桌面美化软件


## Conky---系统信息监控软件

### 安装

> Debian下可以直接用这两个命令安装，没有的话，添加**更新源**`apt-get update`一下，应该就可以啦
```shell
apt-get install conky
apt-get install conky-all
```

### 配置文件

我在网上找了一些大佬写的配置文件，挑了几个写的不错的（还有我的机子上能跑的，跑不出来的默认放弃），收集到我的这里，想用哪个的时候可以换一下，理论上是可以自己写的，但是实在是没有那么多时间再去研究这个（或者懒）
> 配置文件就放在**Conky_configrc**文件夹里面用的时候修改一下文件名就行了，再复制到用户目录下（大概和Desktop一个路径，前面一定要有一个点  **'**.**'** ，保存成隐藏文件)

### Conky的自启动

某位大佬这样说道：
> 网上关于conky的开机自启动都是ubuntu的，在gnome下我试了rc.local, service都不行，最后只能用gnome的启动管理。

配置方法：
> 在~/.config/autostart/下面新建一个conky.desktop文件，内容如下：

```shell
[Desktop Entry]
Type=Application
Name=Conky
Comment=Start conky script
Exec=conky -d        ##命令自己help查看一下就可以啦
OnlyShowIn=GNOME
X-GNOME-Autostart-Phase=Application
Name[en_US]=conky.desktop
```
