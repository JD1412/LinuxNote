# Metasploit启动数据库错误

<!-- TOC -->

- [Metasploit启动数据库错误](#metasploit%E5%90%AF%E5%8A%A8%E6%95%B0%E6%8D%AE%E5%BA%93%E9%94%99%E8%AF%AF)
    - [错误输出](#%E9%94%99%E8%AF%AF%E8%BE%93%E5%87%BA)
    - [服务开启](#%E6%9C%8D%E5%8A%A1%E5%BC%80%E5%90%AF)
    - [Postgresql开机自启动](#postgresql%E5%BC%80%E6%9C%BA%E8%87%AA%E5%90%AF%E5%8A%A8)

<!-- /TOC -->


> 这个错误的报出来的结果不一定是下面的这个，但是如果是和`postgresql`有关的错误，都可以先检查一下这个数据库的服务起来了没有
> 检查命令： `sudo service postgresql status`



## 错误输出
```shell
┌─[08:12:52]─[healer@kali]─[~]
└──> $ sudo msfconsole
[-] ***rting the Metasploit Framework console...-
[-] * WARNING: No database support: could not connect to server: Connection refused
	Is the server running on host "localhost" (::1) and accepting
	TCP/IP connections on port 5432?
could not connect to server: Connection refused
	Is the server running on host "localhost" (127.0.0.1) and accepting
	TCP/IP connections on port 5432?

[-] ***

                                   ____________
 [%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%| $a,        |%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%]
 [%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%| $S`?a,     |%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%]
 [%%%%%%%%%%%%%%%%%%%%__%%%%%%%%%%|       `?a, |%%%%%%%%__%%%%%%%%%__%%__ %%%%]
 [% .--------..-----.|  |_ .---.-.|       .,a$%|.-----.|  |.-----.|__||  |_ %%]
 [% |        ||  -__||   _||  _  ||  ,,aS$""`  ||  _  ||  ||  _  ||  ||   _|%%]
 [% |__|__|__||_____||____||___._||%$P"`       ||   __||__||_____||__||____|%%]
 [%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%| `"a,       ||__|%%%%%%%%%%%%%%%%%%%%%%%%%%]
 [%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%|____`"a,$$__|%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%]
 [%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%        `"$   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%]
 [%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%]


       =[ metasploit v5.0.14-dev                          ]
+ -- --=[ 1870 exploits - 1060 auxiliary - 327 post       ]
+ -- --=[ 546 payloads - 44 encoders - 10 nops            ]
+ -- --=[ 2 evasion                                       ]

msf5 > q

```

## 服务开启

这种情况一般都是一个数据库服务没有起来的缘故，配置如下：

```shell
┌─[08:14:24]─[healer@kali]─[~]
└──> $ sudo service postgresql start
# 下面查看服务状态
┌─[08:14:34]─[healer@kali]─[~]
└──> $ sudo service postgresql status
● postgresql.service - PostgreSQL RDBMS
   Loaded: loaded (/lib/systemd/system/postgresql.service; disabled; vendor preset: disabled)
   Active: active (exited) since Tue 2019-04-02 08:14:34 CST; 3s ago
  Process: 12129 ExecStart=/bin/true (code=exited, status=0/SUCCESS)
 Main PID: 12129 (code=exited, status=0/SUCCESS)

Apr 02 08:14:34 kali systemd[1]: Starting PostgreSQL RDBMS...
Apr 02 08:14:34 kali systemd[1]: Started PostgreSQL RDBMS.

```

一般情况下这个服务起来了就好了

## Postgresql开机自启动

你会发现每次重启之后都要开启一次服务，嫌麻烦的话就添加一个开机自启动服务

命令： `sudo update-rc.d postgresql enable`

[参考链接](http://www.92ez.com/?action=show&id=14)
