<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp" %> 
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  </head>
  
  <body class="layui-anim layui-anim-up">
    <div class="x-nav">
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form id="queryForm" class="layui-form layui-col-md12 x-so" action="<%=basePath %>studentWrite/queryStuWriteList" method="post">
              <input type="hidden" id="formPageNow" name="pageNow" value="${map.page.pageNow }"/>
			  <input type="hidden" id="formDataCount" value="${map.page.dataCount }"/>
			  <input type="hidden" id="formPageCount"  value="${map.page.pageCount}"/>
		  <!-- 模糊查询 -->  
          <input  name="addressee" type="text"  placeholder="请输入收件人姓名" autocomplete="off" class="layui-input" value="${map.stuWrite.addressee }"/>
		  <input  name="writeId" type="text"  placeholder="请输入id名" autocomplete="off" class="layui-input" value="${map.stuWrite.writeId }"/>
		  <input  name="sendTime" type="text"  placeholder="请输入发送时间" autocomplete="off" class="layui-input" value="${map.stuWrite.sendTime }" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
		  <button class="layui-btn"  lay-submit="" lay-filter="sreach" onclick="formSubmit()" value="查询"/><i class="layui-icon">&#xe615;</i></button>
        </form>
      </div>
     <!--账户添加跳转  -->
      <xblock>
      <a class="layui-btn" href="<%=basePath %>studentWrite/bfaddOrUpdate"><i class="layui-icon"></i>写信</a>
     	<a class="layui-btn" id="delMany">批量删除</a>
      </xblock>
      <table class="layui-table layui-form">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            
            <th>写信人</th>
            <th>收件人</th>
            <th>发送时间</th>
            <!-- <th>状态</th> -->
            <th>操作</th>
         </tr>
        </thead>
        <tbody>
          <c:forEach items="${map.page.list}" var="stuWrite">
		        <tr>
		         <td>
	              	<div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${stuWrite.writeId}'><i class="layui-icon">&#xe605;</i></div>
	            </td>
			        <td><a href="<%=basePath %>studentWrite/bfLook?writeId=${stuWrite.writeId}">${stuWrite.letterWriter}</a></td>
			        <td>${stuWrite.addressee}</td>
			        <td>${stuWrite.sendTime}</td>
	            	<td class="td-manage">
						<a href="<%=basePath %>studentWrite/delete?writeId=${stuWrite.writeId}" class="layui-btn-danger layui-btn layui-btn-xs">删除</a>     
	                </td>   
		        </tr>
	        </c:forEach>
           </tbody>
         </table>
          <!-- 分页 -->
        <div class="pagin" >
		    	<div><ul class="page" maxshowpageitem="6" pagelistcount="${map.page.pageSize }"  id="page"></ul></div>
	   	 </div>
	   	 </div>
	 <script>
		$("#delMany").click(function (){
			var a = tableCheck.getData();
			var b = a.join(",");
			$.ajax({
	            	url:"<%=basePath %>studentWrite/deleteMany",
	            	type:"POST",
	            	data:{'writeids':b},
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