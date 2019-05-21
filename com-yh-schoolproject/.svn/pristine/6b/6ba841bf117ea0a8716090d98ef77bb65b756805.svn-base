<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@include file="../base/base.jsp"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>投票页面</title>
  <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
</head>
<body>

<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">演示</a>
        <a>
          <cite>导航元素</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:40px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form id="queryForm" action="<%=basePath%>vote/queryVoteList" method="post" class="layui-form layui-col-md12 x-so">
          <input type="hidden" id="formPageNow" name="pageNow" value="${map.page.pageNow }"/>
			  <input type="hidden" id="formDataCount" value="${map.page.dataCount }"/>
			  <input type="hidden" id="formPageCount"  value="${map.page.pageCount}"/>
			  <!-- 查询的搜索框 -->
          <%-- <input type="text" name="voteTitle"  placeholder="请输入标题" autocomplete="off" class="layui-input" value="${map.vote.voteTitle}" /> 
  			   <button class="layui-btn" onclick="formSubmit()"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>--%>


        </form>
        
        <xblock>
       <a class="layui-btn" href="<%=basePath%>vote/bfAddOrUpdate"><i class="layui-icon"></i>添加投票内容</a>
       <!-- <a id="delPart" class="layui-btn">批量删除</a> -->
        <span class="x-right" style="line-height:40px">共有数据：${map.page.dataCount}</span>
      </xblock>
        
      </div>
      <table class="layui-table">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${vote.voteId}'><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>标题</th>
	        <th>类型</th>
	        <th>开始时间</th>
	        <th>结束时间</th>
	        <th>操作</th> 
        </thead>
        <tbody>
        <c:forEach items="${map.page.list}" var="vote">
          <tr>
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${vote.voteId}'><i class="layui-icon">&#xe605;</i></div>
            </td><!-- 字段是model里面的 -->
			<td>${vote.voteTitle }</td>
	        <td>${vote.voteType }</td>
	        <td><fmt:formatDate value="${vote.voteEtime}" pattern="yyyy-MM-dd"/></td>
			<td><fmt:formatDate value="${vote.voteStime}" pattern="yyyy-MM-dd"/></td>
	        <%-- <td>${vote.vresult }${vote.isjoin}</td> --%>
             
            <%--  <td>
				<c:if test="" >${vote.isjoin == 1}
				    <a href="vote/vote_bfjoin?vm.vid=${vote.voteId }" class="tablelink">参与</a>     
		         </c:if>
			     <c:if test="">${vote.isvote ==0 || empty vote.isvote }
			      	 <a href="#" class="tablelink"> 不参与</a>
			     </c:if>
			</td> --%>
			
			<td class="td-manage">
              <a title="参与"  onclick="x_admin_show('参与','xxx.html')" href="<%=basePath %>vote/queryCanYu">
                <i class="layui-icon">&#xe642;</i>
              </a>
              <a title="删除" onclick="member_del(this,'要删除的id')" href="<%=basePath %>stuLetter/stuLetterdelete?stuLetterId=${letter.stuLetterId}">
		                <i class="layui-icon">&#xe640;</i>
		       </a>
            </td>
          </tr>
          </c:forEach>
        </tbody>
      </table>
      
      <!-- 分页 -->
       <div class="pagin" >
		    	<div><ul class="page" maxshowpageitem="3" pagelistcount="${map.page.pageSize }"  id="page"></ul></div>
	   	 </div>
	   	 
    </div>
    

	<script>
	
	$("#delPart").click(function (){
		var a = tableCheck.getData();
		var b = a.join(",");
		$.ajax({
	        	url:"<%=basePath%>vote/deletePartVoteById",
	        	type:"POST",
	        	data:{'tnids':b},
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