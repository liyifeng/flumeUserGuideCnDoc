:orphan:

.. Licensed to the Apache Software Foundation (ASF) under one or more
   contributor license agreements.  See the NOTICE file distributed with
   this work for additional information regarding copyright ownership.
   The ASF licenses this file to You under the Apache License, Version 2.0
   (the "License"); you may not use this file except in compliance with
   the License.  You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.


翻译格式约定
-----------------------

本文档翻译自官方手册 `Flume 1.8 User Guide <http://flume.apache.org/releases/content/1.8.0/FlumeUserGuide.html>`_  ，翻译项目刚刚创建的时候最新的Flume版本是1.8，
而如今Flume 1.9已经发布了。不过不必担心，整个Flume 1.x版本并无大的结构性变化，只是在增加新的功能特性以及bug的修复，不影响我们学习Flume。

- 文档的段落结构与官方文档完全一致；
- 基本上涉及到的专属名词都没有进行翻译，比如：source、channel、sink、event等，还有各个章节的标题也是一样，都是使用原来的英文标题，这样方便进行中英对照查找；
- 部分章节、参数描述、组件的介绍比较难懂，译者增加了一些补充的注释；
- 翻译过程中发现了很多原文档中的小错误，比如 `NetCat UDP Source_` 的 *remoteAddressHeader* 属性没有描述、Thrift Sink的参数错误、还有一些组件的的参数太过复杂，译者对照着源码增加了
  具体的例子来解释这些参数。

.. hint:: 所有这种蓝色的提示框中的内容都是译者后加的。


勘误
-----------------------

翻译或者理解有误的地方请您指出来，Github ： https://github.com/liyifeng/flumeUserGuideCnDoc

勘误也可以发送邮件到 flume@liyifeng.org ，不胜感激。


版权声明
-----------------------

- Apache Flume™ 以及本页面使用的Flume logo等都归属于Apache软件基金会。
- 本文档未经授权不允许用于任何商业用途。

译者：liyifeng


