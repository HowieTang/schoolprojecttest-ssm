<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生列表</title>
</head>
<body class="layui-anim layui-anim-up">
    <div class="x-nav">
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form id="queryForm" action="<%=basePath %>student/queryNoClassList" method="post" class="layui-form layui-col-md12 x-so">
         <input autocomplete="off" class="layui-input" type="hidden" id="formPageNow" name="pageNow" value="${map.page.pageNow }"/>
		  <input autocomplete="off" class="layui-input" type="hidden" id="formDataCount" value="${map.page.dataCount }"/>
		  <input type="hidden" id="formPageCount"  value="${map.page.pageCount}"/>
		  <ul>
			<li>
				<a><input type="text" name="sname" value="${map.student.sname }" placeholder="请输入姓名" autocomplete="off" class="layui-input"></a>
				<a><button class="layui-btn" onclick="formSubmit()" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button></a>
			</li>
		  </ul>
        </form>
      </div>
       <blockquote class="layui-elem-quote">点击学生姓名查看学生全部信息<i class="layui-icon x-show" status='true'>&#xe623;</i></blockquote>
      <xblock>
      	<a class="layui-btn" id="delMany"onclick="skip('${ctx}/ProjectTaskManager/submitAddTask/${ttcCaseKey}')">批量添加</a>
       <%--  <a class="layui-btn" href="<%=basePath %>student/bfAddStudent"><i class="layui-icon"></i>添加</a> --%>
      </xblock>
	      <table class="layui-table layui-form">
	        <thead>
	          <tr>
	          	<th>
					<div class="layui-unselect header layui-form-checkbox" lay-skin="primary" name="chk_sub_checkBox">
						<i class="layui-icon">&#xe605;</i>
						<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox"
	       value="${task.projectTaskID }" onclick="javascript:checkT_F()" />

					</div>
				</th>
	            <th>姓名</th>
	            <th>性别</th>
	            <th>年龄</th>
	            <th>班级</th>
	            <th>状态</th>
	          </tr>
	        </thead>
	        <tbody>
	        	<c:forEach items="${map.page.list }" var="student">
	        		<tr>
	        			<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='${student.studentId}'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
	            		<td>
	            			<a href="<%=basePath %>student/bfStudentLook?studentId=${student.studentId}">${student.sname }</a>
	            		</td>
						<td>${student.sex }</td>
						<td>${student.age }</td>
						<td>${student.cclass }</td>
						<td> 
	              			<input type="checkbox" value="${student.state }" name="state"  lay-text="开启|停用"  checked="" lay-skin="switch">
	            		</td>
	        		</tr>
	         </c:forEach>
	        </tbody>
	      </table>
        <!-- 分页 -->
	 	<div class="pagin" >
     		<div><ul class="page" maxshowpageitem="5" pagelistcount="${map.page.pageSize }"  id="page"></ul></div>
	 	</div>
<!-- 分页js -->	 	
<script>

function tt(dd){
       //alert(dd);
   }
	var GG = {
	        "kk":function(mm){
	            
	            $("#formPageNow").val(mm);
	            $("#queryForm").submit();
	        }
	 }
	$("#page").initPage($("#formDataCount").val(),$("#formPageNow").val(),GG.kk);

function formSubmit(){
$("#formPageNow").val(1);
$("#queryForm").submit();
}


function skip(controllerUrl, keyString) {
	var alertMessage = "您没有勾选要操作的记录，请先勾选！";
	//判断是否勾选复选框，如果没有勾选，提示alertMessage的信息
	var obj = document.getElementsByName("chk_sub_checkBox");
	var j = 0;
	for(var i=0;i<obj.length;i++) {
		if(obj[i].checked==true) {
			j ++;
			break;
		}
	}
	if(j < 1) {
		alert(alertMessage);
		return false;
	}
		var projectTaskIDs=document.getElementsByName("chk_sub_checkBox");
		var  keyString = "?keys=";  
	    for(var i=0;i<projectTaskIDs.length;i++){
	    	if(projectTaskIDs[i].checked && projectTaskIDs[i].value != ""){
	    		keyString+=projectTaskIDs[fi].value+=",";
	    	}
	    }
	  //controller对应的url加上传过去多条记录的主键keys
	  	document.forms[0].action =controllerUrl+keyString;
		document.forms[0].submit();
}
</script>

</body>
</html>