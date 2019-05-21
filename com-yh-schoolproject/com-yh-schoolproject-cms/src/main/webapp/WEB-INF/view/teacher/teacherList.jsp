<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
 <body class="layui-anim layui-anim-up">
    <div class="x-nav">
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form id="queryForm" action="<%=basePath %>teacher/queryTeacherList" method="post" class="layui-form layui-col-md12 x-so">
          <input type="hidden" id="formPageNow" name="pageNow" value="${map.page.pageNow }"/>
		  <input type="hidden" id="formDataCount" value="${map.page.dataCount }"/>
		  <input type="hidden" id="formPageCount"  value="${map.page.pageCount}"/>
		  <!-- 模糊查询 -->
		  <input  name="tname" type="text"  placeholder="请输入用户名" autocomplete="off" class="layui-input" value="${map.teacher.tname }"/>
		 <%--  <input  name="teacherId" type="text"  placeholder="请输入id名" autocomplete="off" class="layui-input" value="${map.teacher.teacherId }"/> --%>
		  <button class="layui-btn"  lay-submit="" lay-filter="sreach" onclick="formSubmit()" value="查询"/><i class="layui-icon">&#xe615;</i></button>
        </form>
      </div>
         <blockquote class="layui-elem-quote">点击教师姓名查看教师全部信息<i class="layui-icon x-show" status='true'>&#xe623;</i></blockquote>
      <xblock>
        <a class="layui-btn" href="<%=basePath %>teacher/bfAddTeacher"><i class="layui-icon"></i>添加</a>
        <a class="layui-btn" id="delMany">批量删除</a>
      </xblock>
	      <table class="layui-table layui-form">
	        <thead>
	          <tr>
	            <th>
	              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
	            </th>
	            <th>姓名</th>
	            <th>性别</th>
	            <th>年龄</th>
	            <th>入校时间</th>
	            <th>职务</th>
	            <th>任教课程</th>
	            <th>状态</th>
	            <th>操作</th>
	          </tr>
	        </thead>
	        <tbody>
	        	<c:forEach items="${map.page.list }" var="t">
	        		<tr>
	        			<td>
	              			<div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${t.teacherId} '><i class="layui-icon">&#xe605;</i></div>
	            		</td>
	        			<td><a href="<%=basePath %>teacher/bfLookTeacher?tid=${t.teacherId}">${t.tname }</a></td>
	        			<td>${t.sex }</td>
	        			<td>${t.age }</td>
	        			<td><fmt:formatDate value="${t.admissionTime }" pattern="yyyy-MM-dd"/></td>
	        			<td>${t.type }</td>
	        			<td>${t.teach }</td>
						<td class="td-manage">
							<input type="checkbox" name="switch"  lay-text="开启|停用"  checked="" lay-skin="switch" id="ccccc">
	            		</td>
						<td class="td-manage">
	            			<a href="<%=basePath %>teacher/deleteTeacherById?teacherId=${t.teacherId}" class="layui-btn-danger layui-btn layui-btn-xs"><i class="layui-icon">&#xe640;</i>删除</a> 
	            		</td>
	        		</tr>
	         </c:forEach>
	        </tbody>
	      </table>
        <!-- 分页 -->
	 	<div class="pagin" >
     		<div><ul class="page" maxshowpageitem="6" pagelistcount="${map.page.pageSize }"  id="page"></ul></div>
	 	</div>
<!-- 分页js -->	 	
<script>
/*  批量删除开始*/
$("#delMany").click(function (){
	var a = tableCheck.getData();
	var b = a.join(",");
	$.ajax({
        	url:"<%=basePath%>teacher/deleteManyTeacherById",
        	type:"POST",
        	data:{'tids':b},
        	success: function(){
        		window.location.reload();
        	}
        	
        });
	
});
/*批量删除结束  */



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
</script>
  </body>
</html>