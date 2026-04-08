# 
##   paths:
    - /logs/test.log

## 去掉type: "debug", 根据监听端口来区分测试网，主网



## output.logstash:  
  hosts: ["log.wanchain.org:1518"]



log.wanchain.org:1518   测试网
log.wanchain.org:1519   主网

## output.elasticsearch:
==> 
output.logstash:
