/** 文件上传js  --李创 */
/** 重写后台方法需注意 文件上传后台Servlet 必须返回一个json  */

/**
 * 业务ID此处写死 根据自己业务需求来定义
 * */
var bizid = "1001";
/**
 * 初始化fileinput
 * **/
var FileInput = function() {
	var oFile = new Object();
	// 初始化fileinput控件（第一次初始化）
	/**
	 * 入参说明
	 * ctrlName：控件ID值
	 * uploadUrl：上传地址
	 * shwoKey：是否显示上传按钮和上传框 主要用于查看
	 * imgPathArray：初始化数据path数组 主要用于查看和修改
	 * imgNameArray：初始化数据name数组
	 * **/
	oFile.Init = function(ctrlName, uploadUrl,shwoKey,imgPathArray,imgNameArray) {
		var control = $('#' + ctrlName);

		// 初始化上传控件的样式
		control.fileinput({
			'theme': 'explorer',
			language : 'zh', // 设置语言
			uploadUrl : uploadUrl, // 上传的地址
			allowedFileExtensions : [ ],// 接收的文件后缀 例[*.jpg,*.png]
			showPreview:true,
			overwriteInitial: false,
			previewFileIcon: '<i class="fa fa-file"></i>',
			dropZoneEnabled: false,//是否显示拖拽区域
			maxFileCount : 2, // 表示允许同时上传的最大文件个数
			showUpload:false, //是否显示上传按钮
			showRemove : false, //显示移除按钮
			showBrowse:shwoKey,//是否显示选择按钮
			showCaption:shwoKey,//是否显示选择输入框
			enctype : 'multipart/form-data',
			validateInitialCount : true,
			previewFileIcon :true,//是否显示文件icon 默认图片是直接显示缩略图 文件会展示相关内容
			msgFilesTooMany : "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
			preferIconicPreview: true,//是否强制相关文件展示icon
			initialPreviewAsData: true,
			previewFileIconSettings: { //配置相关文件展示的icon
		       
		    },
		   /*  uploadExtraData: function(previewId, index) {   //额外参数的关键点
               
            }, */
            initialPreview:imgPathArray,
            initialPreviewConfig: imgNameArray,
		});
	}
	return oFile;
};

/**
 * 插件初始化
 * 请求连接 根据实际情况编写
 * */
$(function(){
	var oFileInput = new FileInput();
	oFileInput.Init("upfile", "../fileinput.servlet?cmd=upload&bizid="+bizid,true,new Array(),new Array());
})
/**
 * 文件上传后调用
 * */
$("#upfile").on("fileuploaded", function (event, data, previewId, index) {
	var obj = data.response;
	var deleleUrl ="../fileinput.servlet?cmd=delete&bizid="+bizid+"&id="+obj[0].id;	
	//$("#"+previewId).find(".kv-file-remove").attr("data-url",deleleUrl);
	$("#"+previewId).find(".kv-file-remove").click(function(){
		$.ajax({
			url : deleleUrl,
			type : "post",
			dataType:"json",
			success : function(result) {
				//成功操作
				
			},
			error : function(result) {
				//异常操作
				
			}
		});
		
	});
                
});


/**
 *   初始化fileinput数据 用于已上传数据的插件 做编辑 查看使用
 *   bizid  父ID（业务id/分类id 根据需求自定义）用于批量查出同一类的文件 
 *   例:项目关联多个图片（文件） 查项目时需要查出所有的图片 那么项目和图片的关系ID作为父ID
 * */
function initFileInputData(bizid){
	var initUrl ="../fileinput.servlet?cmd=initFileInput&bizid="+bizid;	
	$.ajax({
		url : initUrl,
		type : "post",
		dataType:"json",
		success : function(result) {
			//成功操作
			var pathArr = new Array();//文件网络地址 集合
			var nameArr = new Array();//文件信息集合
			$(result).each(function(){
				pathArr.push(this.path);//文件访问地址 这里需要网络地址  例：http://localhost:8080/xxx/xx.jpg
				var obj = new Object(); 
				obj.caption=this.name;
				obj.size =this.size;
				obj.url = "../fileinput.servlet?cmd=delete&bizid="+bizid+"&id="+this.id;//用于初始化文件删除事件地址
				nameArr.push(obj);
			});
			var oFileInput = new FileInput();
			oFileInput.Init("upfile", "../fileinput.servlet?cmd=upload&bizid="+bizid,true,pathArr,nameArr);
		},
		error : function(result) {
			//异常操作
		}
	});
}

function buttonSubmit(){
	$("#upfile").fileinput("upload");
}
