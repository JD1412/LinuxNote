# 安装Kali之后要安装的软件



[测试连接](https://secretwiki.org/2017/05/30/kali-install/ "lianjie")

## 替换更新源（按需所取吧亲）

```shell
#auto
deb http://http.kali.org/kali kali-rolling main non-free contrib

#中科大
deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
deb-src http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib

#浙大
deb http://mirrors.zju.edu.cn/kali kali-rolling main contrib non-free
deb-src http://mirrors.zju.edu.cn/kali kali-rolling main contrib non-free

#东软大学
deb http://mirrors.neusoft.edu.cn/kali kali-rolling/main non-free contrib
deb-src http://mirrors.neusoft.edu.cn/kali kali-rolling/main non-free contrib

#重庆大学
deb http://http.kali.org/kali kali-rolling main non-free contrib
deb-src http://http.kali.org/kali kali-rolling main non-free contrib

#官方源
#deb http://http.kali.org/kali kali-rolling main non-free contrib
#deb-src http://http.kali.org/kali kali-rolling main non-free contrib

#阿里云
deb http://mirrors.aliyun.com/kali kali-rolling main non-free contrib
deb-src http://mirrors.aliyun.com/kali kali-rolling main non-free contrib

#清华大学
deb http://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free
deb-src https://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free
```

## 常用的更新命令

```shell
apt-get clean    //清除缓存索引
apt-get update    //更新索引文件
apt-get remove .*(安装包的名字) //卸载软件
apt-get purge .*(安装包的名字) //完全卸载软件
apt-get upgrade    //更新实际的软件包文件
apt-get dist-upgrade    //根据依赖关系更新
```

## 安装**gdebi**

> 在安装别的软件之前，先装这个后面会比较方便

`apt install gdebi`

## 安装中文输入法

### 搜狗拼音输入法

> 建议直接去下deb的包

[搜狗拼音](https://pinyin.sogou.com/linux/ "Sougou")

`gdebi sogoupinyin_2.2.0.0108_amd64.deb`

### Google拼音输入法

`apt-get install fcitx`
`apt-get install fcitx-googlepinyin`

> 安装完自己需要再配置一下

## 安装浏览器

### Google Chrome

> 好像有直接的命令，我是下的deb包,root用户不能运行

`gdebi google-chrome-stable_current_amd64.deb`

### Firefox

> 自己就有更新一下就可以啦

## Tor

```shell
apt-get install tor
service tor start
```

[TOR使用](http://os.51cto.com/art/201405/439494_all.htm "TOR教程")

## QQ

> 建议使用一个APPimage文件，wine经常会报一些错误搞不懂，同一个源的QQ能运行，但是在我的电脑上不能输入中文

`http://yun.tzmm.com.cn/index.php/s/5hJNzt2VR9aIEF2`
`TIM-x86_64.AppImage`

## Wechat

`https://github.com/geeeeeeeeek/electronic-wechat`
> 我用的上面的装的，后面发现好像可以直接有压缩包，没试过应该会更好一点吧

`https://github.com/geeeeeeeeek/electronic-wechat/releases`
`https://github.com/trazyn/weweChat/releases`

## SublimeText

`https://www.sublimetext.com/3`
> 好像也有命令行的直接安装

## Atom

`gdebi atom-amd64.deb`

## Crossover

`gdebi crossover_16.2.0-1.deb`

## 网易云音乐

`gdebi netease-cloud-music_1.1.0_amd64_ubuntu.deb`

## PyCharm

`pycharm-professional-2018.1.4.tar.gz`
> 直接下载安装包提取就能用

## Pwntools

`pip install pwntools`
> 一定要网好不然老断线

## GDB（peda、gef、pwndbg）

`https://blog.csdn.net/aptx4869_li/article/details/81566541`

## Aria2

> Linux下不能下载大文件，需要客户端软件，但是百度网盘又没有相应Linux的客户端

`apt-get install aria2`

## WPS

`http://ftp.us.debian.org/debian/pool/main/libp/libpng/libpng12-0_1.2.49-1+deb7u2_i386.deb`
`http://www.wps.cn/product/wpslinux/`

```shell
dpkg -i libpng12-0_1.2.49-1+deb7u2_amd64.deb
dpkg -i wps-office_10.1.0.5672~a21_amd64.deb
```

## Wine

```shell
dpkg --add-architecture i386
apt-get update
apt-get install wine32
```

## VS Code

`https://az764295.vo.msecnd.net/stable/1b8e8302e405050205e69b59abb3559592bb9e60/code_1.31.1-1549938243_amd64.deb`
`gdebi code_1.31.1-1549938243_amd64.deb`


## Themes &  Icon

`https://www.gnome-look.org/`
> 下载自己喜欢的直接复制到`/usr/share/themes  &  /usr/share/icons`x,之后再到管理界面去配置就可以啦

## Synaptic(新立德)

`apt-get install synaptic`

## 视频播放器smplayer

`apt-get install smplayer`

## Terminator

`apt-get install terminator`

## Yum

`apt-get install yum`

## GCC

`yum install gcc`

## 32位支持库

```shell
dpkg --add-architecture i386
apt-get update
apt-get install libc6:i386
apt-get install ia32-libs  libnotify-bin ia32-libs-gtk
apt-get install gcc-multilib
apt-get install g++-multilib
```

## Vim

`apt-get install vim`

## SSH

`apt-get install ssh`

## VMware

`https://www.vmware.com/products/workstation-pro.html`

`chmod a+x VMware-Workstation-.*.bundle`
`./VMware-Workstation-.*.bundle`

## SSR

`https://github.com/erguotou520/electron-ssr/releases`
> 理论上v2ray也是可以成功的，但是Linux的电脑上还不知道怎么添加v2ray的订阅

## GUN Image Manipulation Program （Linux的PS）

`apt-get install gimp`

## ShotCut **(视频剪辑软件)**

`Shotcut-190228.glibc2.14-x86_64.AppImage`
> 建议使用APPimage文件，方便也不用去安装了

## 解压缩软件

`apt-get install file-roller`
`apt-get install unrar unace rar unrar p7zip zip unzip p7zip-full p7zip-rar file-roller`

## Git

```shell
yogy@kali:~$ sudo apt-get install git
yogy@kali:~$ git config --global user.name "yogykwan"
yogy@kali:~$ git config --global user.email "jingg.cxy@foxmail.com"
```

## 远程桌面客户端

`apt-get install gtk-recordmydesktop recordmydesktop remmina -y`

## NVIDIA

`apt-get install nvidia-driver nvidia-xconfig`

## Hexo（博客软件）

`https://hexo.io/zh-cn/docs/`
`https://www.cnblogs.com/zhaoyu1995/p/6239950.html`
