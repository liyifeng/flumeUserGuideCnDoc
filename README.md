# Flume 1.9.0 用户手册中文翻译版

### 介绍

- 本文档翻译自官方手册[Flume 1.9 User Guide](http://flume.apache.org/releases/content/1.9.0/FlumeUserGuide.html)
  
- 文档的段落结构与官方文档完全一致；
  
- 毕竟是官方的手册，为了不把官方文档内容改的面目全非，加入了很多批注，不方便加批注的地方就加例子，有些参数光凭文档不能完全理解，译者参考源码理解作者的意图之后再用直白的话表述出来。

- 文档中所有这种蓝色的提示框中的内容都是译者后加的，还有很多掺杂在参数解析、配置范例的注释和大多数的括号中。
  
- 更正了一些小错误。比如NetCat UDP Source的 *remoteAddressHeader* 属性没有描述、Thrift Sink的参数reset-connection-interval 写成了connection-reset-interval，Hive Sink遗漏round参数等等

- 基本上涉及到的专属名词都没有进行翻译，比如：source、channel、sink、event等，大部分章节的标题也是一样，都是使用原来的英文标题，这样方便进行中英对照查找；

### 感谢

2018年底决定开始翻译Flume的用户手册时最新的Flume版本是1.8，文档内容虽然不多但是几乎占据了我那一段时间的所有下班时间，埋头翻译了几个月（断断续续地中间有停过）终于在2019年4月份翻译完成，这时才发现Flume 1.9已经在1月份发布了，
对比了两个版本的文档发现改动并不大，除了优化和bug修复，新增的功能和特性屈指可数，当时一鼓作气的劲头已经在翻译完成的那一刻全释放了，没有动力继续翻译Flume 1.9的文档。

一转眼两年过去了，翻译版文档托管到网站上之后，发现原来真的有很多人需要它，其中有人不乏溢美之词向我道谢，托管在码云的项目还被推荐到开源中国首页过，访问统计能看到有幸被各大公司的同学们引用到了自家wiki上，其中不乏网易、华为、新浪、商汤等知名互联网企业，
在我来看这就是对我最大的鼓励和赞许，这也是我更新的最大动力。直到前几天终于决定把文档更新一次，一来把1.9的内容补上，二来翻译版的内容有多处翻译地不太满意又或语言冗长拖沓，早打算重新全文稿修订一次，这才有了今天的更新。

最后，很高兴文档对大家有帮助，也算为国内大数据技术人员做了那么一点点点点微不足道的贡献，感谢大家的支持。

### 文档查看

在线：https://flume.liyifeng.org

离线：https://flume.liyifeng.org/down

Flume 1.8文档翻译版：https://flume.liyifeng.org/flume1.8.html

### 勘误

翻译或者理解有误的地方请您指出来。

Github ： https://github.com/liyifeng/flumeUserGuideCnDoc

Gitee  ： https://gitee.com/lief/flumeUserGuideCN

勘误也可以发送邮件到 flume@liyifeng.org ，不胜感激。

### 版权声明
- Apache Flume™ 以及本页面使用的Flume logo等都归属于Apache软件基金会。
- 本文档未经授权不允许用于任何商业用途。

### 译者
[liyifeng](https://www.liyifeng.org)
