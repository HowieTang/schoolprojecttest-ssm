<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="base.jsp" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>用户注册</title>
    <meta name="description" content="">
    <meta http-equiv="cleartype" content="on">

<script src="<%=basePath%>static/js/jquery-2.1.0.min.js"></script>
<script src="<%=basePath%>static/js/easyform/easyform.js"></script>
<link rel="stylesheet" href="<%=basePath%>static/css/platform-1.css">
<link rel="stylesheet" href="<%=basePath%>static/js/easyform/easyform.css">
<link rel="stylesheet" href="<%=basePath%>static/css/tab.css">



</head>

<body>

<div class="page">

    <div class="header">

        <a class="link title-ani"  data-letters="萤火教育">萤火教育</a>
        <br>

      

    </div>
    


    <div class="form-div">
        <form id="reg-form" action="register" method="post">

            <table>
                 <tr>
                    <td>昵称</td>
                    <td><input name="name" type="text" id="nickname" data-easyform="length:2 16;real-time;"
                               data-easytip="class:easy-blue;position:bottom;"></td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td><input name="psw1" type="password" id="psw1" data-easyform="length:6 16;real-time;"
                               data-message="密码必须为6—16位"
                               data-easytip="class:easy-blue;"></td>
                </tr>
                <tr>
                    <td>确认密码</td>
                    <td><input name="pwd" type="password" id="psw2" data-easyform="length:6 16;equal:#psw1;real-time;"
                               data-message="两次密码输入要一致" data-easytip="class:easy-blue;"></td>
                </tr>
               
               
            </table>

            <div class="buttons" style="margin-top: 15px;">
                <input value="注 册" type="submit" style="margin-right:20px; margin-top:20px;">
               <input value="我有账号，我要登录" type="button" id="jump" style="margin-right:45px; margin-top:20px;">
            </div>

            <br class="clear">
        </form>
    </div>


<script>

    $(document).ready(function ()
    {
    	$("#jump").click(function(){
    		$(location).attr("href","<%=basePath %>/login/checkLogin");
    	});
        var v = $('#reg-form').easyform();

        $('#demo-form').easyform();

        v.is_submit = false;

        v.error = function (ef, i, r)
        {
            //console.log("Error事件：" + i.id + "对象的值不符合" + r + "规则");
        };

        v.success = function (ef)
        {
            //console.log("成功");
        };

        v.complete = function (ef)
        {
            console.log("完成");
        };

        $('#tip-test1').easytip();
        $('#tip-test2').easytip();
        $('#tip-test3').easytip();
        $('#tip-test4').easytip();


    });

    function ajax_demo(p)
    {
        $("#uid").trigger("easyform-ajax", true);
    }
    
   


</script>

</body>
</html>
