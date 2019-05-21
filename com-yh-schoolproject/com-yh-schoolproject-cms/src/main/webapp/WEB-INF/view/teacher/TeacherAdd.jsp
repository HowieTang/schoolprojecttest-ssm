<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="x-body">
       <form action="addTeacher" method="post" class="layui-form layui-form-pane">
        <div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>姓名
				</label>
				<div class="layui-input-inline">
					<input type="text" id="username" name="tname" required=""lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>请输入你的真实姓名
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>性别</label>
				<div class="layui-input-inline">
                  <select id="shipping" name=sex class="valid">
                    <option value="男">男</option>
                    <option value="女">女</option>
                  </select>
                </div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>年龄
				</label>
				<div class="layui-input-inline">
					 <input type="text" id="L_repass" name="age" required=""
						lay-verify="repass" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>email
				</label>
				<div class="layui-input-inline">
					<input type="text" id="L_repass" name="email" required=""
						lay-verify="repass" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>电话
				</label>
				<div class="layui-input-inline">
					<input type="text" id="L_repass" name="tel" required=""
						lay-verify="repass" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>任教科目
				</label>
				<div class="layui-input-inline">
					<select id="shipping" name="teach" class="valid">
						<option value="js">js</option>
						<option value="jq">jq</option>
						<option value="cms">cms</option>
						<option value="java">java</option>
						<option value="前端综合">前端综合</option>
						<option value="后端综合">后端综合</option>
					</select>
				</div>
			</div>

		<!-- 	<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span class="x-red">*</span>职务
				</label>
				<div class="layui-input-inline">
					<select id="shipping" name="positonId" class="valid">
						<option value="shentong">校长</option>
						<option value="shunfeng">教导主任</option>
						<option value="shentong">普通任教</option>
						<option value="shunfeng">班主任</option>
					</select>
				</div>
			</div> -->
		 <div class="layui-form-item">
		<label class="layui-form-label"><span class="x-red">*</span>职务</label>
		<div class="layui-input-inline">
                <select id="shipping" name="type" class="valid">
                  <c:forEach items="${result.dm}" var="dic">
				<option value="${dic.type}">${dic.type}</option>
			 </c:forEach>
                </select>
              </div>
	    </div>

			  <div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>绑定账户</label>
				<div class="layui-input-inline">
					<select id="accountId" name="accountId" class="valid" checked="checkded">
						<c:forEach items="${result.account }" var="account">
							<option value="${account.accountId}">${account.loginName}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="layui-form-item">
				<button class="layui-btn" lay-filter="add" >确认保存</button>
			</div>
		</form>
    </div>
  </body>
</html>
</html>