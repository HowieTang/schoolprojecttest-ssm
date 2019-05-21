<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公告添加</title>
</head>
<body>
	<div class="x-body">
		<form action="<%=basePath %>circular/addOrUpdate" method="post" class="layui-form">
			<input type="hidden" value="${result.circular.circularId}" id="circularId" name="circularId" />
			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>类型</label>
				<div class="layui-input-inline">
                  <select id="shipping" name="type" class="valid">
                    <c:forEach items="${result.dm}" var="dic">
						<option value="${dic.type}">${dic.type}</option>
					 </c:forEach>
                  </select>
                </div>
			</div>

			<div class="layui-form-item">
              <label class="layui-form-label"><span class="x-red">*</span>通知范围</label>
              <div class="layui-input-block">
                <input type="checkbox" name="like1[write]" lay-skin="primary" title="所有老师" >
                <input type="checkbox" name="like1[read]" lay-skin="primary" title="所有学生" >
                <input type="checkbox" name="like1[write]" lay-skin="primary" title="新闻官网轮播" >
              </div>
            </div>

			<div class="layui-form-item">
				<label for="leaveDays" class="layui-form-label"> <span
					class="x-red">*</span>标题
				</label>
				<div class="layui-input-inline">
					<input type="text" value="${result.circular.title}" name="title"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			
			<div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">内容</label>
                <div class="layui-input-inline">
      				<textarea rows="" cols="" name="content"></textarea>
				</div>
            </div>

			<div class="layui-form-item">
					<label for="L_repass" class="layui-form-label"> </label>
					<button class="layui-btn" type="submit">提交</button>
			</div>
		</form>
	</div>

</body>

</html>