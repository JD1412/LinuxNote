# My Shell Script
 写这些脚本的目的是为了方便使用Linux操作系统，有一些经常用的软件，运行起来比较麻烦，或者懒得去做一个可执行文件的图标，而且命令行启动感觉更快一点，比较快捷。

 这些可执行的文件拷贝系统的环境变量的文件夹即可，这样我们就可以在任意的路径下执行这个脚本，不用非要到指定的目录下去运行文件，最终的效果就是系统像是在执行系统命令一样在执行我们自定义的脚本。

## aria2

一个用来在Linux环境中下载东西的软件，具体配置网上找吧，挺多的
[脚本](./Script/aria2 "aria2")

## cowsay

这个软件理论上讲应该不用考过来，但是我把这个软件安装好`apt-get install cowsay`之后就始终不能运行，最后发现他不在任何一个环境变量所指向的文件夹里面，我就把它拷贝过来了。

[程序](./Script/cowsay "cowsay")

## gdb.sh

GDB默认的没有插件的状态不太好用，前人为它做了三个插件比较好用但是一次只能用一个，每次切换还要去修改配置文件，于是就写了一个脚本直接自动化的完成修改配置文件的操作

[GDB](./Script/gdb.sh)

## IDA

Linux下的IDA要用wine去跑，启动起来感觉有点麻烦就写了这个脚本，后面发现安装的时候会生成图标，直接点就可以，就没有在用过这个脚本

[IDA](./Script/ida "IDA")

## killssr

运行之后的electron-ssr没有关闭的方法，于是用kill进程的方法关闭

[关闭SSR](./Script/killssr)

## pwnserver.sh

做CTF的时候用来把一个题目挂起来
[PWN](./Script/pwnserver.sh)

## QQ && tim && wechat

单纯为了启动软件
[QQ](./Script/QQ)
[TIM](./Script/tim)
[WeChat](./Script/wechat)
