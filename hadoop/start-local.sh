if [ ! -d "/hadoop/data/dfs" ];then
   sudo mkdir -p /hadoop/data/dfs/namenode
   sudo mkdir -p /hadoop/data/dfs/datanode
   sudo chown -R xing:xing /hadoop
   bin/hdfs --config etc/hadoop namenode -format
fi

nohup bin/hdfs --config etc/hadoop namenode 1>/dev/null 2>&1 &
nohup bin/hdfs --config etc/hadoop datanode 1>/dev/null 2>&1 &
nohup bin/yarn --config etc/hadoop resourcemanager 1>/dev/null 2>&1 &
nohup bin/yarn --config etc/hadoop nodemanager 1>/dev/null 2>&1 &
