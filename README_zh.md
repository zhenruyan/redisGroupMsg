#  redisGroupMsg redis队列组播广播

##   redis 向多个队列发送广播

>  最近要做一个类似聊天软件的东西，经过大量测试搞了这么一玩意儿

>  性能是py直接循环发送的13倍速度

```shell
pip install redisGroupMsg
```


```python

from redisGroupMsg import redisMessage

r = redisMessage()

if __name__ == '__main__':
    for a in range(1,10):
        e = "id:"+str(a)
        # 添加到组
        # r.addGroup("test",e)
        #在组内广播
        # r.sendGroup("test",e)
        #从组内删除
        r.removeGroup("test",e)

```