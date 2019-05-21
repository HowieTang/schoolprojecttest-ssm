<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
 <meta name="format-detection" content="telephone=no" />
 <meta name="apple-mobile-web-app-capable" content="yes" />
 <meta name="apple-mobile-web-app-status-bar-style" content="black">
 <meta http-equiv="pragma" content="no-cache" />
 <style>
        *{margin:0;padding:0;}
        img{border:0 none;}
        body{background:#eee;}
        .m-box{width:800px;margin:0 auto;padding:20px;background:#fff;}
        .m-box p{margin:0 0 10px;}
        .m-box .icn a{display:block;width:55px;height:35px;background:url('http://l.bst.126.net/rsc/img/weibo.png?035') no-repeat;}
        .m-box .icn .wb1{background-position:10px -216px;}
        .m-box .icn .wb2{background-position:-190px -216px;}
        .m-box .icn .wb3{background:url(http://l.bst.126.net/rsc/img/postshare/tieba24.png) 15px 0 no-repeat;}
        .m-box .icn .wb4{background-position:-88px -215px;}
        .m-box .icn .wb5{background-position:-138px -216px;}
        .m-box .icn .wb6{background-position:-245px -216px;}
        .m-box .icn .wb7{background-position:-300px -216px;}
        .m-box .icn .wb8{background-position:-355px -216px;}
        .m-box .icn .wb9{background-position:-415px -215px;}
 </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校园新闻热点页面</title>
<!-- css引用 -->
<link rel="stylesheet" href="<%=basePath %>static/plugin/News/css/bootstrap.css">
<link rel="stylesheet" href="<%=basePath %>static/plugin/News/css/style.css">
<link rel="stylesheet" href="<%=basePath %>static/plugin/News/css/demo.css">

<!-- js引用 -->
<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/move-top.js"></script>
<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/easing.js"></script>
<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/jquery-1.8.3.min.js"></script>


<script type="application/x-javascript">addEventListener("load", function() {
	setTimeout(hideURLbar, 0);
}, false);

function hideURLbar() {
	window.scrollTo(0, 1);
}</script>

<script type="text/javascript">jQuery(document).ready(function($) {
	$(".scroll").click(function(event) {
		event.preventDefault();
		$('html,body').animate({
			scrollTop: $(this.hash).offset().top
		}, 900);
	});
});
</script>

</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<!--导航页开始-->
						<ul class="nav navbar-nav">
							<li class="active">
								<a href="<%=basePath %>news/queryCampusTrends">主页面</a>
							</li>
							<li>
								<a href="<%=basePath %>news/AllCampusTrends">校园热点</a>
							</li>
							<li>
								<a href="#">教师笔记</a>
							</li>
							<li>
								<a href="#">学生笔记</a>
							</li>
							<li>
								<a href="#">校园前沿</a>
							</li>
							<li>
								<a href="#">校园通告</a>
							</li>
							<li>
								<a href="#">校园成绩通报</a>
							</li>
							<li>
								<a href="<%=basePath %>news/bfAddOrUpdate">校园新闻投稿</a>
							</li>
							<div class="clearfix"></div>
						</ul>
	</div>
							<div class="clearfix"></div>
</nav>
	
	<div class="main-body">
		<div class="wrap">
			<div class="single-page">
			<!--左侧边框-->
			<div class="col-md-2 share_grid">
					<div class="m-box">
					    <div class="icn"><a  class="wb1" onclick="shareToSinaWB(event)" title="分享到微博"></a></div>
					</div>
					
					<div class="m-box">
					    <div class="icn"><a  class="wb2" onclick="shareToQzone(event)" title="分享到QQ空间"></a></div>
					</div>
					
					<div class="m-box">
					    <div class="icn"><a  class="wb3" onclick="shareToTieba(event)" title="分享到百度贴吧"></a></div>
					</div>
					
					<div class="m-box">
					    <div class="icn"><a  class="wb4" onclick="shareToDouban(event)" title="分享到豆瓣"></a></div>
					</div>
					
					<div class="m-box">
					    <div class="icn"><a  class="wb5"  onclick="shareToQQwb(event)" title="分享到腾讯微博"></a></div>
					</div>
					
					<div class="m-box">
					    <div class="icn"><a  class="wb6" onclick="shareToRenren(event)" title="分享到人人网"></a></div>
					</div>
					
					<div class="m-box">
					    <div class="icn"><a  class="wb7" onclick="shareToKaixin(event)" title="分享到开心网"></a></div>
					</div>
					
					<div class="m-box">
					    <div class="icn"><a  class="wb8" onclick="shareToFacebook(event)" title="分享到FaceBook"></a></div>
					</div>
					<div class="m-box">
					    <div class="icn"><a  class="wb9" onclick="shareToTwitter(event)" title="分享到Twitter"></a></div>
					</div>
			</div>
			
			<!--中间新闻内容-->
			<div class="col-md-6 content-left single-post">
				<input type="hidden" value="${result .newsModel.news_id}" id="news_id" name="news_id" />
				<div class="blog-posts">
					<!-- 新闻标题 -->
					<h1 class="post" name="title">${result.newsModel.title }</h1>
					<!-- 新闻内容 -->
					<div class="last-article">
						<p class="artext" name="content">${result.newsModel.contents }</p>
					</div>	
					
					<div class="clearfix"></div>
				</div>		
				
				<!-- 点赞部分 -->
				<div class="praise">
					<span id="praise"><img src="<%=basePath %>static/plugin/News/images/zan.png" id="praise-img"/></span>
					<span id="praise-txt">${result.newsModel.likenum_int }</span>
					<span id="add-num"><em>+1</em></span>
				</div>	
				<input type="hidden" id="dianzan" value="${result.newsModel.news_id }">
			</div>
			</div>
		</div>
	</div>
	

<script>
	/*
	 * 动态点赞
	*/
	$(function(){
		$("#praise").click(function(){
			var praise_img = $("#praise-img");
			var text_box = $("#add-num");
			var praise_txt = $("#praise-txt");
			//var news_id = $("#news_id");
			var num=parseInt(praise_txt.text());
			if(praise_img.attr("src") == ("<%=basePath %>static/plugin/News/images/yizan.png")){
				
				$(this).html("<img src='<%=basePath %>static/plugin/News/images/zan.png' id='praise-img' class='animation' />");
				praise_txt.removeClass("hover");
				text_box.show().html("<em class='add-animation'>-1</em>");
				$(".add-animation").removeClass("hover");
				num -=1;
				
				praise_txt.text(num);
				$.ajax({
	            	url:"<%=basePath%>news/dianzan?news_id=${result.newsModel.news_id}",
	            	type:"POST",
	            	data:{'likenum_int':num},
	            	success: function(){
	            	    
	            	}
	            	
	            });
			}else{
				$(this).html("<img src='<%=basePath %>static/plugin/News/images/yizan.png' id='praise-img' class='animation' />");
				praise_txt.addClass("hover");
				text_box.show().html("<em class='add-animation'>+1</em>");
				$(".add-animation").addClass("hover");
				num +=1;
				praise_txt.text(num);
				$.ajax({
	            	url:"<%=basePath%>news/dianzan?news_id=${result.newsModel.news_id}",
	            	type:"POST",
	            	data:{'likenum_int':num},
	            	success: function(){
	            	}
	            });
			}
		});
	})
</script>


<!-- 分享script -->
<script>
    var _title,_source,_sourceUrl,_pic,_showcount,_desc,_summary,_site,
            _width = 600,
            _height = 600,
            _top = (screen.height-_height)/2,
            _left = (screen.width-_width)/2,
            _url = 'www.baidu.com',
            _pic = ''; 


    //分享到新浪微博
    function shareToSinaWB(event){
        event.preventDefault();
        var _shareUrl = 'http://v.t.sina.com.cn/share/share.php?&appkey=895033136';     //真实的appkey，必选参数
        _shareUrl += '&url='+ encodeURIComponent(_url||document.location);     //参数url设置分享的内容链接|默认当前页location，可选参数
        _shareUrl += '&title=' + encodeURIComponent(_title||document.title);    //参数title设置分享的标题|默认当前页标题，可选参数
        _shareUrl += '&source=' + encodeURIComponent(_source||'');
        _shareUrl += '&sourceUrl=' + encodeURIComponent(_sourceUrl||'');
        _shareUrl += '&content=' + 'utf-8';   //参数content设置页面编码gb2312|utf-8，可选参数
        _shareUrl += '&pic=' + encodeURIComponent(_pic||'');  //参数pic设置图片链接|默认为空，可选参数
        window.open(_shareUrl,'_blank','width='+_width+',height='+_height+',top='+_top+',left='+_left+',toolbar=no,menubar=no,scrollbars=no, resizable=1,location=no,status=0');
    }

    //分享到QQ空间
    function shareToQzone(event){
        event.preventDefault();

        var _shareUrl = 'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?';
        _shareUrl += 'url=' + encodeURIComponent(_url||document.location);   //参数url设置分享的内容链接|默认当前页location
        _shareUrl += '&showcount=' + _showcount||0;      //参数showcount是否显示分享总数,显示：'1'，不显示：'0'，默认不显示
        _shareUrl += '&desc=' + encodeURIComponent(_desc||'分享的描述');    //参数desc设置分享的描述，可选参数
        _shareUrl += '&summary=' + encodeURIComponent(_summary||'分享摘要');    //参数summary设置分享摘要，可选参数
        _shareUrl += '&title=' + encodeURIComponent(_title||document.title);    //参数title设置分享标题，可选参数
        _shareUrl += '&site=' + encodeURIComponent(_site||'');   //参数site设置分享来源，可选参数
        _shareUrl += '&pics=' + encodeURIComponent(_pic||'');   //参数pics设置分享图片的路径，多张图片以＂|＂隔开，可选参数
        window.open(_shareUrl,'_blank','width='+_width+',height='+_height+',top='+_top+',left='+_left+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
    }

    //分享到百度贴吧
    function shareToTieba(event){
        event.preventDefault();

        var _shareUrl = 'http://tieba.baidu.com/f/commit/share/openShareApi?';
        _shareUrl += 'title=' + encodeURIComponent(_title||document.title);  //分享的标题
        _shareUrl += '&url=' + encodeURIComponent(_url||document.location);  //分享的链接
        _shareUrl += '&pic=' + encodeURIComponent(_pic||'');    //分享的图片
        window.open(_shareUrl,'_blank','width='+_width+',height='+_height+',left='+_left+',top='+_top+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
    }

    //分享到豆瓣
    function shareToDouban(event){
        event.preventDefault();

        var _shareUrl = 'http://shuo.douban.com/!service/share?';
        _shareUrl += 'href=' + encodeURIComponent(_url||location.href);    //分享的链接
        _shareUrl += '&name=' + encodeURIComponent(_title||document.title);    //分享的标题
        _shareUrl += '&image=' + encodeURIComponent(_pic||'');    //分享的图片
        window.open(_shareUrl,'_blank','width='+_width+',height='+_height+',left='+_left+',top='+_top+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
    }
    //分享到腾讯微博
    function shareToQQwb(event){
        event.preventDefault();

        var _shareUrl = 'http://v.t.qq.com/share/share.php?';
        _shareUrl += 'title=' + encodeURIComponent(_title||document.title);    //分享的标题
        _shareUrl += '&url=' + encodeURIComponent(_url||location.href);    //分享的链接
        _shareUrl += '&appkey=5bd32d6f1dff4725ba40338b233ff155';    //在腾迅微博平台创建应用获取微博AppKey
        _shareUrl += '&site=' + encodeURIComponent(_site||'');   //分享来源
        _shareUrl += '&pic=' + encodeURIComponent(_pic||'');    //分享的图片，如果是多张图片，则定义var _pic='图片url1|图片url2|图片url3....'
        window.open(_shareUrl,'_blank','width='+_width+',height='+_height+',left='+_left+',top='+_top+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
    }
    //分享到人人网
    function shareToRenren(event){
        event.preventDefault();

        var _shareUrl = 'http://share.renren.com/share/buttonshare.do?';
        _shareUrl += 'link=' + encodeURIComponent(_url||location.href);   //分享的链接
        _shareUrl += '&title=' + encodeURIComponent(_title||document.title);     //分享的标题
        window.open(_shareUrl,'_blank','width='+_width+',height='+_height+',left='+_left+',top='+_top+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
    }

    //分享到开心网
    function shareToKaixin(event){
        event.preventDefault();

        var _shareUrl = 'http://www.kaixin001.com/rest/records.php?';
        _shareUrl += 'url=' + encodeURIComponent(_url||location.href);    //分享的链接
        _shareUrl += '&content=' + encodeURIComponent('分享的文字');    //需要分享的文字，当文字为空时，自动抓取分享网址的title
        _shareUrl += '&pic=' + encodeURIComponent(_pic||'');     //分享的图片,多个使用半角逗号分隔
        _shareUrl += '&showcount=0';    //是否显示分享数，显示：'1'，不显示：'0'
        _shareUrl += '&style=11';      //显示的样式，必选参数
        _shareUrl += '&aid=' + encodeURIComponent(_site||'');    //显示分享来源
        window.open(_shareUrl,'_blank','width='+_width+',height='+_height+',left='+_left+',top='+_top+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
    }

    function shareToKaixin2(event){
        event.preventDefault();

        var _shareUrl = 'http://www.kaixin001.com/repaste/share.php?';
        _shareUrl += 'rtitle=' + encodeURIComponent(_title||document.title);   //分享的标题
        window.open(_shareUrl,'_blank','width='+_width+',height='+_height+',left='+_left+',top='+_top+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
    }

    //分享到facebook
    function shareToFacebook(event){
        event.preventDefault();

        var _shareUrl = 'http://www.facebook.com/sharer/sharer.php?';
        _shareUrl += 'u=' + encodeURIComponent(_url||location.href);    //分享的链接
        _shareUrl += '&t=' + encodeURIComponent(_title||document.title);    //分享的标题
        window.open(_shareUrl,'_blank','width='+_width+',height='+_height+',left='+_left+',top='+_top+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
    }
    //分享到facebook
    function shareToFacebook(event){
        event.preventDefault();

        var _shareUrl = 'http://www.facebook.com/sharer/sharer.php?';
        _shareUrl += 'u=' + encodeURIComponent(_url||location.href);    //分享的链接
        _shareUrl += '&t=' + encodeURIComponent(_title||document.title);    //分享的标题
        window.open(_shareUrl,'_blank','width='+_width+',height='+_height+',left='+_left+',top='+_top+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
    }

    //分享到Twitter
    function shareToTwitter(event){
        event.preventDefault();

        var _shareUrl = 'http://twitter.com/intent/tweet?';
        _shareUrl += 'url=' + encodeURIComponent(_url||location.href);    //分享的链接
        _shareUrl += '&text=' + encodeURIComponent(_title||document.title);    //分享的标题
        window.open(_shareUrl,'_blank','width='+_width+',height='+_height+',left='+_left+',top='+_top+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
    }
</script>
</body>
</html>