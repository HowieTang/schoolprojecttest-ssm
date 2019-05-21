<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师笔记列表</title>
</head>
<body class="layui-anim layui-anim-up">
    <div class="x-nav">
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form id="queryForm" action="<%=basePath %>teacherNotes/queryTeacherNotesList" method="post" class="layui-form layui-col-md12 x-so">
          <%-- <input type ="hidden" name="loginName" value="${map.teacherNotes.loginName }"> --%>
          <input autocomplete="off" class="layui-input" type="hidden" id="formPageNow" name="pageNow" value="${map.page.pageNow }"/>
		  <input autocomplete="off" class="layui-input" type="hidden" id="formDataCount" value="${map.page.dataCount }"/>
		  <input type="hidden" id="formPageCount"  value="${map.page.pageCount}"/>
		  <ul>
			<li>
				<input name="title" type="text"  placeholder="请输入新闻标题" autocomplete="off" class="layui-input" value="${map.newsModel.title }"/>
				<a><button class="layui-btn" onclick="formSubmit()" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button></a>
			</li>
		  </ul>
        </form>
      </div>
      <blockquote class="layui-elem-quote">点击标题查看教学笔记全部信息<i class="layui-icon x-show" status='true'>&#xe623;</i></blockquote>
      <xblock>
      	<a class="layui-btn" id="delMany">批量删除</a>
        <%-- <a class="layui-btn" href="<%=basePath %>teacherNotes/bfAdd?loginName=${map.teacherNotes.loginName }"><i class="layui-icon"></i>添加</a> --%>
         <a class="layui-btn" href="<%=basePath %>teacherNotes/bfAdd"><i class="layui-icon"></i>添加</a>
      </xblock>
	      <table class="layui-table layui-form">
	        <thead>
	          <tr>
	          	<th>
					<div class="layui-unselect header layui-form-checkbox" lay-skin="primary">
						<i class="layui-icon">&#xe605;</i>
					</div>
				</th>
				
	            <th>类型</th>
	            <!-- <th>编写人</th> --> 
	            <th>标题</th>
	           <!--  <th>内容</th> -->
	            <th>创建时间</th>
	            <!-- <th>提交时间</th> -->
	            <!-- <th>修改时间</th> -->
	           <!--  <th>状态</th> -->
	            <th>操作</th>
	          </tr>
	        </thead>
	        <tbody>
	        	<c:forEach items="${map.page.list }" var="teacherNotes">
	        		<tr>
	        			<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='${teacherNotes.news_id}'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
	            		<td>${teacherNotes.dic_id}</td>
	            		<%-- <td>${teacherNotes.loginName}</td> --%>
						<td>
							<a href="<%=basePath %>teacherNotes/bfTeacherNotesLook?news_id=${teacherNotes.news_id}">${teacherNotes.title}</a>
						</td>
						<%-- <td>${teacherNotes.content}</td> --%>
						<td>
							<fmt:formatDate value="${teacherNotes.create_time}" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						
						<%-- <td>
							<fmt:formatDate value="${teacherNotes.updateTime }" pattern="yyyy-MM-dd HH:mm:ss" />
						</td> --%>
						
						<td class="td-manage">
	              			<%-- <a class="layui-btn-danger layui-btn layui-btn-xs" href="<%=basePath %>teacherNotes/deleteTeacherNotes?teacherNotesId=${teacherNotes.teacherNotesId}&loginName=${map.teacherNotes.loginName}" ><i class="layui-icon">&#xe640;</i>删除</a> --%>
	            			<a class="layui-btn-danger layui-btn layui-btn-xs" href="<%=basePath %>teacherNotes/deleteTeacherNotes?news_id=${teacherNotes.news_id}" ><i class="layui-icon">&#xe640;</i>删除</a>
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
        	url:"<%=basePath%>teacherNotes/deleteManyTeacherNotesById",
        	type:"POST",
        	data:{'newsids':b},
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