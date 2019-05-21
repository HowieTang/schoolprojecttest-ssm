<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
   <body>
    <div class="x-body">
        <form action="<%=basePath %>role/addOrUpdate" method="post" class="layui-form layui-form-pane">
        <input type="hidden" name="roleId" value="${result.role.roleId }"/>
                <div class="layui-form-item">
                    <label for="name" class="layui-form-label">
                        <span class="x-red">*</span>角色名
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" lay-verify="required" autocomplete="off" class="layui-input" name="roleName" value="${result.role.roleName }">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">
                        拥有权限
                    </label>
                    <table  class="layui-table layui-input-block">
                        <tbody>
                            <tr>
                                <td>
                                    <div class="layui-input-block">
                                       	<cite>
									    <c:forEach var="p" items="${result.powers }">
										    <input name="powerId" type="checkbox" value="${p.powerId}"/>${p.powerName}
									   	</c:forEach>
									    </cite>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label for="desc" class="layui-form-label">
                        描述
                    </label>
                    <div class="layui-input-block">
                   		<input placeholder="请输入内容" type="text" lay-verify="required" autocomplete="off"  class="layui-textarea" name="remark" value="${result.role.remark }">
                    </div>
                </div>
                	<div class="layui-form-item">
                		<input name="" type="submit" class="layui-btn"  value="确认保存"/>
             		 </div>
             </form>
   			 </div>
  </body>
</html>
