<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<?jsp
$action = $_GET['action'];
$date = $_GET['date'];
?>
<link rel="stylesheet" type="text/css" href="<%=basePath %>static/rili/css/jquery-ui.css">
<div class="fancy">
	<h3>新建事件</h3>
    <form id="add_form" action="<%=basePath %>teacherjournal/addOrUpdateJournal" method="post">
    <!-- <input type="hidden" name="addJournal" value="add"> -->
    <input type="hidden" value="${result.journal.id}" id="id" name="id"/>
    <p>日程标题：
    	<input type="text" class="input" value="${result.journal.title}" name="title" id="event" style="width:320px" placeholder="记录你将要做的一件事...">
    </p>
    <p>日程内容：
    	<input type="text" class="input" value="${result.journal.content}" name="content" id="event" style="width:320px" placeholder="记录你将要做的一件事...">
    </p>  
    <p>开始时间：
    	<input id="event" name="start" value="${result.journal.start}"  class="input"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true,minDate:'%y-%M-%d'})" />
    </p>
    
     <p>结束时间：
    	<input id="event" name="end" value="${result.journal.end}" class="input"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true,minDate:'%y-%M-%d'})" />
    </p>
    
    <div class="sub_btn"><span class="del"><input type="button" class="btn btn_del" id="del_event" value="删除"></span><input type="submit" class="btn btn_ok" value="确定"> <input type="button" class="btn btn_cancel" value="取消" onClick="$.fancybox.close()"></div>
    </form>
</div>
<script type="text/javascript" src="<%=basePath %>static/rili/js/jquery.form.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".datepicker").datepicker();
	$("#isallday").click(function(){
		if($("#sel_start").css("display")=="none"){
			$("#sel_start,#sel_end").show();
		}else{
			$("#sel_start,#sel_end").hide();
		}
	});
	
	$("#isend").click(function(){
		if($("#p_endtime").css("display")=="none"){
			$("#p_endtime").show();
		}else{
			$("#p_endtime").hide();
		}
		$.fancybox.resize();//调整高度自适应
	});
	
	//提交表单
	$('#add_form').ajaxForm({
		beforeSubmit: showRequest, //表单验证
        success: showResponse //成功返回
    }); 
});

function showRequest(){
	var events = $("#event").val();
	if(events==''){
		alert("请输入日程内容！");
		$("#event").focus();
		return false;
	}
}

function showResponse(responseText, statusText, xhr, $form){
	if(statusText=="success"){	
		if(responseText==1){
			$.fancybox.close();
			$('#calendar').fullCalendar('refetchEvents'); //重新获取所有事件数据
		}else{
			alert(responseText);
		}
	}else{
		alert(statusText);
	}
}
</script>