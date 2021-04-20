#!/bin/bash
# 编译本地Flume文档并发布到服务器
# 作者：liyifeng
# 日期：2021-04-20 14:57:28


localWorkDir=`pwd`
time=`date +%Y%m%d_%H%M`
fileName="flume1.9_UserGuide_$time.zip"

remoteDistHtmlDocDir=""
remoteDistHtmlDownloadDir=""
remoteWorkDir=""

logDir="$localWorkDir/log"
logFile=$logDir'/flumeDocHtmlDist.log'

port=
host=""
distUserName=""

writeLog()
{
        if [ -w $logDir ];then
                local pre="[`date '+%Y-%m-%d %H:%M:%S %A'`]"
                for arg in $@;do
                        pre=$pre$arg
                done
                echo $pre>>$logFile
        fi
        echo $1
}

dist(){

    writeLog "发布文档开始，本次发布文件名：$fileName"

    writeLog "开清清理本地缓存，编译..."
    rm -rf $localWorkDir/_build/html/* && cd $localWorkDir && make html
    # cp $localWorkDir/foot.html $localWorkDir/_build/html/
    writeLog "编译完成。"
   
    cd $localWorkDir/_build/html/ 
    zip -r $localWorkDir/dist/$fileName ./*
    writeLog "打包完成。"

    writeLog "开始上传到远程服务器..."
    scp -P $port $localWorkDir/dist/$fileName $distUserName@$host:$remoteWorkDir/

    writeLog "删除服务器当前版本...  $remoteDistHtmlDocDir"
    ssh -p $port $distUserName@$host "cd $remoteDistHtmlDocDir &&  rm -rf * "
    writeLog "清理服务器当前文档完成。"
    
    writeLog "开始发布..."
    ssh -p $port $distUserName@$host "unzip $remoteWorkDir/$fileName -d $remoteDistHtmlDocDir"
    writeLog "发布完成，发布文件：$fileName"

    writeLog "开始生成离线文档..."
    ssh -p $port $distUserName@$host "mv $remoteDistHtmlDownloadDir/*.zip $remoteWorkDir/history_version "
    ssh -p $port $distUserName@$host "cp $remoteWorkDir/$fileName  $remoteDistHtmlDownloadDir/flume1.9_UserGuide中文版_$time.zip"
    writeLog "离线文档生成完毕：$remoteDistHtmlDownloadDir/flume1.9_UserGuide中文版_$time.zip"
}

restore(){
  echo "todo"
}


echo "-=Flume文档发布=-"
echo "1:发布新版本"
#echo "2:恢复备份"

echo -n "请输入要执行的指令:"

read action

if [ "$action" -eq "1" ]
then 
    dist
elif [ "$action" -eq "2" ]
then
    restore
else
    echo "不知道你要干啥"
fi

exit 0
