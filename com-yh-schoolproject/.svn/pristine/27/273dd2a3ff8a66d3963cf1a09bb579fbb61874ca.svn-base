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
        <form id="queryForm" action="<%=basePath %>student/queryStudentList" method="post" class="layui-form layui-col-md12 x-so">
          <input autocomplete="off" class="layui-input" type="hidden" id="formPageNow" name="pageNow" value="${map.page.pageNow }"/>
		  <input autocomplete="off" class="layui-input" type="hidden" id="formDataCount" value="${map.page.dataCount }"/>
		  <input type="hidden" id="formPageCount"  value="${map.page.pageCount}"/>
		  <ul>
			<li>
				<a><input type="text" name="sname" value="${map.student.sname }" placeholder="请输入用户名" autocomplete="off" class="layui-input"></a>
				<a><input type="text" name="cclass" value="${map.student.cclass }" placeholder="请输入班级" autocomplete="off" class="layui-input"></a>
				<%-- <a><input type="date" name="createTime" value="${map.student.createTime}"  placeholder="请选择入校时间" class="layui-input" autocomplete="off" /></a> --%>
				<a><button class="layui-btn" onclick="formSubmit()" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button></a>
			</li>
		  </ul>
        </form>
      </div>
       <blockquote class="layui-elem-quote">点击学生姓名查看学生全部信息<i class="layui-icon x-show" status='true'>&#xe623;</i></blockquote>
      <xblock>
      	<a class="layui-btn" id="delMany">批量删除</a>
        <a class="layui-btn" href="<%=basePath %>student/bfAddStudent"><i class="layui-icon"></i>添加</a>
      </xblock>
	      <table class="layui-table layui-form">
	        <thead>
	          <tr>
	          	<th>
					<div class="layui-unselect header layui-form-checkbox" lay-skin="primary">
						<i class="layui-icon">&#xe605;</i>
					</div>
				</th>
	            <th>姓名</th>
	            <th>性别</th>
	            <th>年龄</th>
	            <!-- <th>邮箱</th>
	            <th>电话</th>
	            <th>紧急联系人电话</th> -->
	            <th>班级</th>
	           <!--  <th>入校时间</th>
	            <th>修改时间</th> -->
	            <th>状态</th>
	            <th>操作</th>
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
						<%-- <td>${student.email }</td>
						<td>${student.tel }</td>
						<td>${student.parentTel }</td> --%>
						<td>${student.cclass }</td>
						
						<%-- <td>
							<fmt:formatDate value="${student.createTime }" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<td>
							<fmt:formatDate value="${student.updateTime }" pattern="yyyy-MM-dd HH:mm:ss" />
						</td> --%>
						<td>
	              			<input type="checkbox" value="${student.state }" name="state"  lay-text="开启|停用"  checked="" lay-skin="switch">
	            		</td>
						<td class="td-manage">
	              			<a class="layui-btn-danger layui-btn layui-btn-xs" href="<%=basePath %>student/deleteStudent?studentId=${student.studentId }" ><i class="layui-icon">&#xe640;</i>删除</a>
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

<!-- 批量删除 -->
$("#delMany").click(function (){
	var a = tableCheck.getData();
	var b = a.join(",");
	$.ajax({
        	url:"<%=basePath%>student/deleteManyStudentById",
        	type:"POST",
        	data:{'studentIds':b},
        	success: function(){
        		window.location.reload();
        	}
        	
        });
	
});

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