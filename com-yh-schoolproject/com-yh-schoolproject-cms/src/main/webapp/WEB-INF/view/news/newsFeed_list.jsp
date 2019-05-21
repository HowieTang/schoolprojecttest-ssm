<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!-- 引用base -->
<%@include file="./../base/base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>新闻投稿审核</title>
</head>
<body class="layui-anim layui-anim-up">
<!-- 刷新div -->
<div class="x-nav">
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    <h2>点击标题查看详情</h2>
</div>

<div class="x-body">
    <div class="layui-row">
        <form id="queryForm" class="layui-form layui-col-md12 x-so" action="<%=basePath %>news/queryNewsFeedList"
              method="post">
            <input type="hidden" id="formPageNow" name="pageNow" value="${map.pages.pageNow }"/>
            <input type="hidden" id="formDataCount" value="${map.pages.dataCount }"/>
            <input type="hidden" id="formPageCount" value="${map.pages.pageCount}"/>

            <!-- 模糊查询 -->
            <input name="news_id" type="text" placeholder="请输入新闻id" autocomplete="off" class="layui-input"
                   value="${map.newsModel.news_id }"/>
            <input name="title" type="text" placeholder="请输入新闻标题" autocomplete="off" class="layui-input"
                   value="${map.newsModel.title }"/>
            <input name="dic_id" type="text" placeholder="请输入新闻类别" autocomplete="off" class="layui-input"
                   value="${map.newsModel.dic_id }"/>
            <button class="layui-btn" lay-submit="" lay-filter="sreach" onclick="formSubmit()" value="查询"/>
            <i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>

    <!-- 批量删除 -->
    <xblock>
        <a class="layui-btn" id="delMany">批量删除</a>
    </xblock>

    <table class="layui-table layui-form">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i
                        class="layui-icon">&#xe605;</i></div>
            </th>
            <th>新闻标题</th>
            <th>新闻作者</th>
            <th>新闻类别</th>
            <th>发布时间</th>
            <th>操作</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${map.pages.list}" var="news">
            <tr>
                <td>
                    <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${news.news_id }'><i
                            class="layui-icon">&#xe605;</i></div>
                </td>
                <td>
                    <a href="<%=basePath %>news/bfNewsFeedLook?news_id=${news.news_id}">${news.title}</a>
                </td>
                <td>${news.author}</td>
                <td>${news.dic_id}</td>
                <td>
                    <fmt:formatDate value="${news.create_time }" pattern="yyyy-MM-dd HH:mm:ss"/>
                </td>
                <td class="td-manage">
                    <a class="layui-btn-danger layui-btn layui-btn-xs"
                       href="<%=basePath %>news/delete?news_id=${news.news_id}"><i class="layui-icon">&#xe640;</i>删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <!-- 分页 -->
    <div class="pagin">
        <div>
            <ul class="page" maxshowpageitem="6" pagelistcount="${map.pages.pageSize }" id="page"></ul>
        </div>
    </div>
</div>

<script>
    function tt(dd) {
        //alert(dd);
    }

    var GG = {
        "kk": function (mm) {
            $("#formPageNow").val(mm);
            $("#queryForm").submit();
        }
    }
    $("#page").initPage($("#formDataCount").val(), $("#formPageNow").val(), GG.kk);

    function formSubmit() {
        $("#formPageNow").val(1);
        $("#queryForm").submit();
    }

    /* ajax */
    $("#delMany").click(function () {
        var a = tableCheck.getData();
        var b = a.join(",");
        $.ajax({
            url: "<%=basePath%>news/deleteNewsById",
            type: "POST",
            data: {'newsids': b},
            success: function () {
                window.location.reload();
            }
        });
    });
</script>
</body>
</html>