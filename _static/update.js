var newVersion = 19 ; // 用于标记当前最新的文档版本号

$(function(){
	let version;
	try{
		version = myVersion;
	}catch(e){
		version = 0;
	}
	console.log("当前文档的版本是:"+version+",最新的版本是:"+newVersion);
	if(version < newVersion){
		let noteContent;
		if(version < 19){ // Flume1.9文档发布的第一个版本
			noteContent = "<a style='color:#ff0000;' href='https://flume.liyifeng.org?flag=updateTip'>（Flume 1.9用户手册中文版已经发布）</a>";
		}else{
			noteContent = "<a style='color:#ff0000;' href='https://flume.liyifeng.org?flag=updateTip'>（有新版本）</a>";
		}
		$("#id1 p:last").append(noteContent);
	}
});