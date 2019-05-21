<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成绩列表</title>
<!--  <style type="text/css">   
        table {  
            width:450px;  
            table-layout:fixed;  
        }  
        td {  
            white-space:nowrap;  
            overflow:hidden;  
			text-overflow: ellipsis;
        }  
    </style> -->
</head>
<body class="layui-anim layui-anim-up">
    <div class="x-nav">
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form id="queryForm" action="<%=basePath %>score/queryScoreList" method="post" class="layui-form layui-col-md12 x-so">
          <input autocomplete="off" class="layui-input" type="hidden" id="formPageNow" name="pageNow" value="${map.page.pageNow }"/>
		  <input autocomplete="off" class="layui-input" type="hidden" id="formDataCount" value="${map.page.dataCount }"/>
		  <input type="hidden" id="formPageCount"  value="${map.page.pageCount}"/>
		  <ul>
			<li>
				<a><input type="text" name="sname" value="${map.score.sname }" placeholder="请输入学生姓名" autocomplete="off" class="layui-input"></a> 
				<a><input type="text" name="cclass" value="${map.score.cclass }" placeholder="请输入班级" autocomplete="off" class="layui-input"></a>
				<a><input type="text" name="course" value="${map.score.course }" placeholder="请输入课程" autocomplete="off" class="layui-input"></a>
				<a><input type="text" name="examScore" value="${map.score.examScore }" placeholder="请输入考试分数" autocomplete="off" class="layui-input"></a>
				<a><input type="text" name="examTime" value="${map.score.examTime}" style="width: 150px;" placeholder="选择考试时间" class="layui-input" autocomplete="off" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" /></a>
				<a><button class="layui-btn" onclick="formSubmit()" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button></a>
			</li>
		  </ul>
        </form>
      </div>
      <xblock>
      	<a class="layui-btn" id="delMany">批量删除</a>
        <a class="layui-btn" href="<%=basePath %>score/bfAddOrUpdate"><i class="layui-icon"></i>添加</a>
      </xblock>
	      <table class="layui-table layui-form">
	        <thead>
	          <tr>
	          	<th>
	          		<div class="layui-unselect header layui-form-checkbox" lay-skin="primary">
						<i class="layui-icon">&#xe605;</i>
					</div>
				</th>
	            <th style="white-space:nowrap;overflow:hidden;text-overflow: ellipsis">学期</th>
	            <th>学生</th>
	            <th>班级</th>
	            <th>课程</th>
	            <th>分数</th>
	            <th>考试时间</th>
	            <th>状态</th>
	            <th>操作</th>
	          </tr>
	        </thead>
	        <tbody>
	        	<c:forEach items="${map.page.list }" var="score">
	        		<tr>
	        			<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='${score.scoreId}'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
	            		<td>${score.term }</td>
						<td>${score.sname}</td>
						<td>${score.cclass }</td>
						<td>${score.course }</td>
						<td>${score.examScore }</td>
						<td>${score.examTime}</td>
						<td>
	              			<input type="checkbox" value="${score.state }" name="switch"  lay-text="开启|停用"  checked="" lay-skin="switch">
	            		</td>
						<td class="td-manage">
	              			<a class="layui-btn-danger layui-btn layui-btn-xs" href="<%=basePath %>score/deleteScore?scoreId=${score.scoreId}" ><i class="layui-icon">&#xe640;</i>删除</a>
	              			<a class="layui-btn-danger layui-btn layui-btn-xs" href="<%=basePath %>score/bfAddOrUpdate?scoreId=${score.scoreId}" style="background-color: green"><i class="layui-icon">&#xe631;</i>修改</a>
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
        	url:"<%=basePath%>score/deleteManyScoreById",
        	type:"POST",
        	data:{'scoreIds':b},
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