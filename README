# 安装步骤
  1、下载hadoop发行版本
  2、下载hive发行版本
  3、下载hue源码
  4、用该工程hadoop中的配置文件替换hadoop自带的配置文件，hive和hue也一样
  
#调整
  1、用户调整，假设你的登陆用户名为loginUser
    core-site.xml文件中hadoop.proxyuser.xing.hosts配置项中xing改成自己的登陆用户名loginUser，本人电脑上全部使用xing作为用户名。
    pseudo-distributed.ini的配置项default_user=xing改为default_user=自己的登陆用户名loginUser
    
#启动
  1、启动hadoop
    ./conf/start-local.sh
  2、启动hive
    先初始化metastore，然后启动metastore进程，最后再启动hiveserver2
  3、启动hue
