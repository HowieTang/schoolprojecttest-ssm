<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body class="layui-anim layui-anim-up" id="tab">
	<div class="x-nav">
		<a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form id="queryForm" action="<%=basePath %>newscons/queryStuNewsList"
				method="post" class="layui-form layui-col-md12 x-so">
				<input type="hidden" id="formPageNow" name="pageNow"
					value="${map.page.pageNow }" /> <input type="hidden"
					id="formDataCount" value="${map.page.dataCount }" /> <input
					type="hidden" id="formPageCount" value="${map.page.pageCount}" />
				<!-- 模糊查询 -->
				<input name="stuNewsType" type="text" placeholder="请输入类型"
					autocomplete="off" class="layui-input" value="${map.snms.stuNewsType }" />
				<input name="stuNewsId" type="text" placeholder="请输入id" autocomplete="off"
					class="layui-input" value="${map.snms.stuNewsId }" />
				<button class="layui-btn" lay-submit="" lay-filter="sreach"
					onclick="formSubmit()" value="查询" />
				<i class="layui-icon">&#xe615;</i>
				</button> 
			</form>
		</div>
		<%-- <xblock> <a class="layui-btn"
			href="<%=basePath %>dic/bfaddOrUpdate"><i class="layui-icon"></i>添加</a>
		 </xblock> --%>

		<table class="layui-table layui-form" id="tab2">
			<thead>
				<tr>
					
					<th>类型</th>
					<th>标题</th>
					
					<th>提交时间</th>
					<th>审批状态</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${map.page.list }" var="s">
					<tr>
						<td>${s.stuNewsType }</td>
						<td><a href="<%=basePath %>news/bfNewsLook?news_id=${s.stuNewsId }">${s.newsName }</a></td>
						<td><fmt:formatDate value="${s.subTime }" pattern="yyyy-MM-dd"/></td>
						<td>${s.state }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- 分页 -->
		<div class="pagin">
			<div>
				<ul class="page" maxshowpageitem="6"
					pagelistcount="${map.page.pageSize }" id="page"></ul>
			</div>
		</div>
</body>
<script>
	var GG = {
		"kk" : function(mm) {

			$("#formPageNow").val(mm);
			$("#queryForm").submit();
		}
	}
	$("#page").initPage($("#formDataCount").val(), $("#formPageNow").val(),
			GG.kk);
	function formSubmit() {
		$("#formPageNow").val(1);
		$("#queryForm").submit();
	}
</script>
</html>