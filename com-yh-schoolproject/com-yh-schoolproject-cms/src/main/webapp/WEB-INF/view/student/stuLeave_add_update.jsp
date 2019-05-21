<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div class="x-body">
		<form class="layui-form" action="<%=basePath%>student/AddOrUpdate"
			method="post">

		     <input type="hidden" value="${result.stuLeave.sleaveId}" id="sleaveId" name="sleaveId">

			<div class="layui-form-item">
				<label for="name" class="layui-form-label"> <span
					class="x-red">*</span>姓名
				</label>
				<div class="layui-input-inline">
					<input type="text" id="name" name="name"
						value="${result.stuLeave.name}" lay-verify="required" required=""
						autocomplete="off" class="layui-input">
			  	</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>将会成为您唯一姓名
				</div>
			</div>

			<div class="layui-form-item">
				<label for="leave_reason" class="layui-form-label"> <span
					class="x-red">*</span>请假原因
				</label>
				<div class="layui-input-inline">
					<input type="text" id="leaveReason" name="leaveReason"
						value="${result.stuLeave.leaveReason}" lay-verify="required" required=""
						autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux"></div>
			</div>


			<%-- <div class="layui-form-item">
				<label for="leaveDay" class="layui-form-label"> <span
					class="x-red">*</span>请假天数
				</label>
				<div class="layui-input-inline">
					<input type="text" name="leaveDay"
						value="${result.stuLeave.leaveDay}" lay-verify="required" required=""
						autocomplete="off" class="layui-input">
				</div>
			</div> --%>
          
           <div class="layui-form-item">
              <label for="leaveDay" class="layui-form-label"> <span
					class="x-red">*</span>请假开始时间
			</label>
			 <div class="layui-input-inline">
			    <input id="startTime" name="startTime" value="${result.stuLeave.startTime}" lay-verify="required" required=""
				   autocomplete="off" class="layui-input" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true,minDate:'%y-%M-%d %H:%m:%s'})" />
				
				</div>
			 </div>
					
				  <div class="layui-form-item">
                         <label for="leaveDay" class="layui-form-label"> <span
					         class="x-red">*</span>请假结束时间
			            </label>
			            <div class="layui-input-inline">
							   <input id="endTime" name="endTime" value="${result.stuLeave.endTime}"  lay-verify="required" required=""
							   autocomplete="off" class="layui-input" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true,minDate:'#F{$dp.$D(\'startTime\')}',startDate:'#F{$dp.$D(\'startTime\',{d:+1})}'})" />
				        </div>
			</div>	
          
			<div class="layui-form-item">
				<label  class="layui-form-label"> <span
					class="x-red">*</span>请假类型
				</label>
				<div class="layui-input-inline">
				<select id="aaa" name="type">
					<c:forEach items="${result.dic}" var="dic">
						<option value="${dic.type}">${dic.type}</option>
					 </c:forEach>
					</select>
				</div>
			</div>


			<div class="layui-form-item">
				<label  class="layui-form-label"> <span
					class="x-red">*</span>批假老师
				</label>
				<div class="layui-input-inline">
				<select id="teacherId" name="tname" checked="checkded"  >
					<c:forEach items="${result.teacher}" var="teacher">
						<option value="${teacher.tname}">${teacher.tname}</option>
					 </c:forEach>
					</select>
				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" type="submit">提交</button>
			</div>


		</form>
	</div>
</body>

 <script type="text/javascript">
    $(document).ready(function () {
      $('#aaa').select2();
 
    });
</script>

</html>