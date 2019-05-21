<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成绩添加修改</title>
</head>
<body>
	<div class="x-body">
		<form action="<%=basePath %>score/addOrUpdate" method="post" class="layui-form">
			<input type="hidden" name="scoreId" value="${result.score.scoreId}"  />
			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>学期</label>
				<div class="layui-input-inline">
                  <select id="shipping" name=term class="valid">
                    <option value="第一学期">第一学期</option>
                    <option value="第二学期">第二学期</option>
                    <option value="第三学期">第三学期</option>
                    <option value="第四学期">第四学期</option>
                    <option value="第五学期">第五学期</option>
                  </select>
                </div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>学生</label>
				<div class="layui-input-inline">
                  <select id="shipping" name="sname" class="valid">
                    <c:forEach items="${result.student}" var="student">
						<option value="${student.sname}">${student.sname}</option>
					 </c:forEach>
                  </select>
                </div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>班级</label>
				<div class="layui-input-inline">
                  <select id="shipping" name="cclass" value="${result.score.cclass}" class="valid">
                    <c:forEach items="${result.cclass}" var="cclass">
						<option value="${cclass.cclass}">${cclass.cclass}</option>
					 </c:forEach>
                  </select>
                </div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>课程</label>
				<div class="layui-input-inline">
                  <select id="shipping" name="course" value="${result.score.course} class="valid">
                     <c:forEach items="${result.coursemodel}" var="coursemodel">
						<option value="${coursemodel.course}">${coursemodel.course}</option>
					 </c:forEach> 
                  </select>
                </div>
			</div>
			
			<div class="layui-form-item">
				<label for="name" class="layui-form-label"> 
					<span class="x-red">*</span>分数
				</label>
				<div class="layui-input-inline">
					<input type="text" name="examScore" value="${result.score.examScore}"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label for="examTime" class="layui-form-label"> 
					<span class="x-red">*</span>考试时间
				</label>
				<div class="layui-input-inline">
					 <input id="examTime" name="examTime" value="${result.score.examTime}"  class="layui-input" style="width: 150px;" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true,minDate:'%y-%M-%d'})" />
				</div>
			</div>
			
			

			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>状态</label>
				<div class="layui-input-block">
					<input type="radio" name="state" value="${result.score.state }"
						lay-skin="primary" checked="" />启用 
					<input type="radio"
						name="state" value="${result.score.state }" lay-skin="primary" />禁用
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