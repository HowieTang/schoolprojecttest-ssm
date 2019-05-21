<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../base/base.jsp"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单列表</title>
</head>
<body>
		<!-- 添加box -->
		  <xblock>
	        <a class="layui-btn" href="<%=basePath %>menu/bfAddOrUpdate"><i class="layui-icon"></i>添加</a>
	      </xblock>
	    <!-- 菜单列表 -->
		<form  id="queryForm" action="<%=basePath %>menu/queryMenuList" method="post">
		   <table class="layui-table layui-form">
		    	<thead>
			    	<tr>
				        <th style="padding-left:10px ">菜单名称</th>
				        <th>链接</th>
				        <th>描述</th>
				        <th>操作</th>
			        </tr>
		        </thead>
		        <tbody id = "menutbody">
		        	<tr>
		        	</tr>	
		        </tbody>
		    </table>
		 </form>
</body>
<script>

function submitBut(){
	
	$("#formPageNow").val("1");
	$("#queryForm").submit();
	
	
}

$(function (){
	var GG = {
	        "kk":function(mm){
	        	$("#formPageNow").val(mm);
	        	$("#queryForm").submit();
	        	
	        }
	    }
	$("#page").initPage($("#formDataCount").val(),$("#formPageNow").val(),GG.kk);
})



$(function (){
	var mList = ${mList};
	$(mList).each(function(){
		menuTree(this,0,0);
	});
})

/* 获取id来进行菜单遍历 */
function menuTree (ele,i,menu_id){
	if(ele){
		var htmlstr= "<tr ondblclick = 'hidec(this)' id='"+ele.menu_id+"' class='"+menu_id+"'>";
		if(ele.cmenus.length>0){
			htmlstr+="<td  style='padding-left:"+i+"px'><i class='tdi'>▲</i>"+ele.menu_name+"</td>";
		}else{
			htmlstr+="<td id='"+ele.menu_id+"' class='"+menu_id+"' style='padding-left:"+i+"px'>"+ele.menu_name+"</td>";
		}
		htmlstr+="<td>"+ele.path+"</td>";
		htmlstr+="<td>"+ele.menuDescribe+"</td>";
		htmlstr+="<td><a>添加/删除</a></td>";
		htmlstr+= "</tr>";
		$("#menutbody").append(htmlstr);
		
		$(ele.cmenus).each(function (){
			menuTree(this,i+10,ele.menu_id);
		})
	}
}

function hidec(ele){//tr
	var eid =  $(ele).attr("id");
	if($("."+eid).is(':hidden')){
		$("."+eid).show();
		$(ele).find(".tdi").text("▲");
	}else{
		$("."+eid).hide();
		$(ele).find(".tdi").text("▼");
	}
	$("."+eid).each(function(){
		hidec(this);
	})
}
</script>
</html>