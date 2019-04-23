# VMware Workstation运行闪退错误修正

报错类型：
[参考链接](https://communities.vmware.com/thread/573705 "vmui")

报错的内容大致是和上面的这个网页里的错误大致一样，包含以下几个关键字：
- `vmui`
- `Unexpected signal: 11`

详细内容：
```shell
root@Kali:~# vmware

Unexpected signal: 11.
VMware Workstation Error:
VMware Workstation unrecoverable error: (vmui)
Unexpected signal: 11.
A log file is available in "/tmp/vmware-root/vmware-ui-4386.log".
You can request support.
To collect data to submit to VMware support, choose "Collect Support Data" from the Help menu.
You can also run the "vm-support" script in the Workstation folder directly.
We will respond on the basis of your support entitlement.
```

产生错误的环境：
我的电脑系统 ： Kali Linux
运行软件 ： VMware® Workstation 15 Pro
版本 ： 15.0.4 build-12990004


## 解决方法：

[官网解释](https://kb.vmware.com/s/article/50862?lang=en_US "just do it")

### Resolution：
- `Currently, there is no resolution.`

说是目前没有任何解决措施

## But

有一个方法可以避开这个错误，就是不导致这个错误，但是这个问题还在

### Workaround：
```
To work around this issue, follow these steps:
1.Disable 3D graphics.
Set “mks.enable3d=FALSE” in vm's configuration file (.vmx file) to disable 3D graphics.

2.Power cycle the vm (power off and power on) for the configuration change to take effect.
```
我尝试的方法时第一个，找到对应的文件，文件打开（记事本什么的），修改一下配置，把3D那一项关掉就好了

`方法2`没试过
