<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp" %>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师日志</title>
<meta name="keywords" content="日程安排,FullCalendar,日历,JSON,jquery实例">
<meta name="description" content="在线演示FullCalendar新建、修改和删除日程事件的示例。">
<link rel="stylesheet" type="text/css" href="<%=basePath %>static/plugin/rili/css/main.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>static/plugin/rili/css/fullcalendar.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>static/plugin/rili/css/fancybox.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>static/rili/css/jquery-ui.css">
<style type="text/css">
#calendar {
	width: 960px;
	margin: 20px auto 10px auto
}

.fancy {
	width: 450px;
	height: auto
}

.fancy h3 {
	height: 30px;
	line-height: 30px;
	border-bottom: 1px solid #d3d3d3;
	font-size: 14px
}

.fancy form {
	padding: 10px
}

.fancy p {
	height: 28px;
	line-height: 28px;
	padding: 4px;
	color: #999
}

.input {
	height: 20px;
	line-height: 20px;
	padding: 2px;
	border: 1px solid #d3d3d3;
	width: 100px
}

.btn {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	padding: 5px 12px;
	cursor: pointer
}

.btn_ok {
	background: #360;
	border: 1px solid #390;
	color: #fff
}

.btn_cancel {
	background: #f0f0f0;
	border: 1px solid #d3d3d3;
	color: #666
}

.btn_del {
	background: #f90;
	border: 1px solid #f80;
	color: #fff
}

.sub_btn {
	height: 32px;
	line-height: 32px;
	padding-top: 6px;
	border-top: 1px solid #f0f0f0;
	text-align: right;
	position: relative
}

.sub_btn .del {
	position: absolute;
	left: 2px
}
</style>
<script src='<%=basePath %>static/plugin/rili/js/jquery-1.9.1.js'></script>
<script src='<%=basePath %>static/plugin/rili/js/jquery-ui-1.10.3.custom.min.js'></script>
<script src='<%=basePath %>static/plugin/rili/js/fullcalendar.min.js'></script>
<script src='<%=basePath %>static/plugin/rili/js/jquery.fancybox-1.3.1.pack.js'></script>
<script type="text/javascript">
	$(function() {
		$('#calendar').fullCalendar({
			events: '<%=basePath%>teacherjournal/queryTeacherJournalList1', //事件数据源
			dayClick: function(date, allDay, jsEvent, view) {
				var selDate =$.fullCalendar.formatDate(date,'yyyy-MM-dd');//格式化日期
				 $.fancybox({//调用fancybox弹出层
					'type':'ajax',
					'href':'<%=basePath%>teacherjournal/bfaddOrUpdateJournal?action=add&date='+selDate
					
				});
	    	},
			
		eventClick: function(event, element) {  
	        event.title = "CLICKED!";  
	        //更新日程对象信息  
	        $('#calendar').fullCalendar('updateEvent', event);  
	    }  
		});
		
	});
	
	/* 弹出框 */
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
</head>

<body>

<div id="main" style="width:1060px;z-index: 0;">
   <div id='calendar'></div>
</div>
</body>
</html>
