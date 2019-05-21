<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公告添加修改</title>
</head>
 <body>
    <div class="x-body">
        <form action="<%=basePath %>course/addOrUpdate" method="post" class="layui-form">
        
         <input type="hidden" value="${result.course.courseId}" id="courseId" name="courseId"/>
          <div class="layui-form-item">
              <label for="name" class="layui-form-label">
                  <span class="x-red">*</span>课程科目
              </label>
              <div class="layui-input-inline">
                  <input type="text" name="course" value="${result.course.course}" required="" lay-verify="required" autocomplete="off" class="layui-input">
              </div>
             
          </div>
          <div class="layui-form-item">
              <label for="leaveDays" class="layui-form-label">
                  <span class="x-red">*</span>周几的日程
              </label>
              <div class="layui-input-inline">
                  <input type="text" value="${result.course.week}" name="week" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
              
          </div>
    <%--       <div class="layui-form-item">
              <label for="type" class="layui-form-label">
                  <span class="x-red">*</span>任课教师
              </label>
              <div class="layui-input-inline">
                  <input type="text" value="${result.course.teacherId}" id="type" name="teacherId" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div> --%>
          
          <div class="layui-form-item">
              <label for="type" class="layui-form-label">
                  <span class="x-red">*</span>时间范围
              </label>
              <div class="layui-input-inline">
						<input id="sdate" name="stateTime" value="${result.course.stateTime}" style="width: 150px;" class="layui-input" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true,minDate:'%y-%M-%d %H:%m:%s'})" />——
						<input id="edate" name="endTime" value="${result.course.endTime}" style="width: 150px;" class="layui-input" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true,minDate:'#F{$dp.$D(\'sdate\')}',startDate:'#F{$dp.$D(\'sdate\',{d:+1})}'})" />
              </div>
          </div>
         <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
              <button  class="layui-btn" type="submit">提交</button>
          </div>
      </form>
    </div>
   
  </body>
 

</html>