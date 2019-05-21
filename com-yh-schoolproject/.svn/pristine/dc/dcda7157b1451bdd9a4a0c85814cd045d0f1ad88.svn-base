<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>桌面新闻</title>

<!-- css引用 -->
<link rel="stylesheet" href="<%=basePath %>static/plugin/News/css/bootstrap.css">
<link rel="stylesheet" href="<%=basePath %>static/plugin/News/css/style.css" type="text/css" media="all">
<!-- js引用 -->
<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/responsiveslides.min.js"></script>
<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/move-top.js"></script>
<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/easing.js"></script>


<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
</script>

<script>
		$(function() {
				$("#slider").responsiveSlides({
					auto: true,
					nav: true,
					speed: 500,
					namespace: "callbacks",
					pager: true,
				});
			});
</script>

<script type="text/javascript">
			jQuery(document).ready(function($) {
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
	<!--头部导航栏的样式-->
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
										<a href="<%=basePath %>news/bfAddOrUpdate"">校园新闻投稿</a>
									</li>
									<div class="clearfix"></div>
								</ul>
								
								<!--搜索模块div-->
								<div class="search">
									<!-- 开始搜索-->
									<div class="search-box">
										<div id="sb-search" class="sb-search">
											<form>
												<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
												<input class="sb-search-submit" type="submit" value="">
												<span class="sb-icon-search"> </span>
											</form>
										</div>
									</div>
									<!-- 搜索所用的js -->
									<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/classie.js"></script>
									<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/uisearch.js"></script>
									<script>
										new UISearch(document.getElementById('sb-search'));
									</script>
									<!-- 搜索所用的js结束 -->
								</div>
								<div class="clearfix"></div>
							</div>
						<!--导航条结束-->
					</nav>
		</div>
		<!-- 标题部分结束 -->
		
		<!--公告轮播开始-->
		<div class="wrap">
			<div class="move-text">
				<div class="breaking_news">
					<h4>校园热点</h4>
				</div>
				<!--轮播里的内容-->
				<div class="marquee">
				<!-- 轮播循环 -->
				<c:forEach items="${map.news7}" var="notice">
					<div class="marquee1">
						<a class="breaking" href="#">${notice.content }</a>
					</div>
				</c:forEach>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			
				<!--轮播所用js-->
				<script type="text/javascript" src="<%=basePath %>static/plugin/News/js/jquery.marquee.min.js"></script>
				<script>
					$('.marquee').marquee({
						pauseOnHover: true
					});
				</script>
			</div>
		</div>
		<!--轮播部分结束-->
		
		
		<!-- 内容部分在此声明 -->
		<div class="main-body">
			<div class="wrap">
				<div class="col-md-8 content-left">
					<!--图片轮播开始-->
					<div class="slider">
						<div class="callbacks_wrap">
							<ul class="rslides" id="slider">
								<li>
									<img src="<%=basePath %>static/plugin/News/images/3.jpg" alt="">
									<div class="caption">
										<a href="single.html">轮播图片新闻的大致描述</a>
									</div>
								</li>
								<li>
									<img src="<%=basePath %>static/plugin/News/images/2.jpg" alt="">
									<div class="caption">
										<a href="single.html">轮播图片新闻的大致描述</a>
									</div>
								</li>
								<li>
									<img src="<%=basePath %>static/plugin/News/images/1.jpg" alt="">
									<div class="caption">
										<a href="single.html">轮播图片新闻的大致描述</a>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!--图片轮播结束-->
					
					<!--新闻内容开始-->
					<div class="articles">
						<!--大标题-->
						<header>
							<h3 class="title-head">校园新闻</h3>
						</header>
						
				
					<!--第一个新闻块div-->					
					 <c:forEach items="${map.news}" var="newss">
						<div class="article">
							<!--页面展示出新闻内容中图片-->
					
							<div class="article-left">
								<a href="<%=basePath %>news/lookCampusTrends?news_id=${newss.news_id}"><img src="<%=basePath %>static/plugin/News/images/article1.jpg"></a>
							</div>
							<div class="article-right">
								<!--日期 评论 浏览数 点赞数-->
								 <div class="article-title">
									<p>	
										<fmt:formatDate value="${newss.create_time }" pattern="yyyy-MM-dd HH:mm:ss" />
										<a class="span_link" href="<%=basePath %>news/lookCampusTrends?news_id=${newss.news_id}"><span class="glyphicon glyphicon-eye-open"></span>${newss.page_view}</a>
										<a class="span_link" href="<%=basePath %>news/lookCampusTrends?news_id=${newss.news_id}"><span class="glyphicon glyphicon-thumbs-up"></span>${newss.likenum_int}</a>
									</p>
										<a class="title" href="<%=basePath %>news/lookCampusTrends?news_id=${newss.news_id}">${newss.title}</a>
								</div>
	
								<div class="article-text"> 
									<a href="single.html"><img src="<%=basePath %>static/plugin/News/images/more.png" alt="" /></a>
								</div>
							</div>
						</div>
							<div class="clearfix"></div>
					</c:forEach>
					</div>
				<!--新闻块结束-->
						
						
					<!--校园前沿-->
					<div class="life-style">
						<header>
							<h3 class="title-head">校园前沿</h3>
						</header>
						<!--第一块-->
					<c:forEach items="${map.news2}" var="newss2">
						<div class="life-style-grids">
							<div class="life-style-left-grid">
								<a href="#"><img src="<%=basePath %>static/plugin/News/images/l1.jpg" alt="" /></a>
							</div>
							
							<div class="article-title">
									<p>	
										<fmt:formatDate value="${newss2.create_time }" pattern="yyyy-MM-dd HH:mm:ss" />
										<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>${newss2.page_view}</a>
										<a class="span_link" href="#"><span class="glyphicon glyphicon-thumbs-up"></span>${newss2.likenum_int}</a>
									</p>
										<a class="title" href="#">${newss2.title}</a>
							</div>
									
							<div class="clearfix"></div>
						</div>
					</c:forEach>
					</div>
					<!--校园前沿结束-->
					
					<!--笔记部分开始-->
					<div class="sports-top">
						<!--教师笔记部分-->
						<div class="s-grid-left">
							<div class="cricket">
								<header>
									<h3 class="title-head">教师笔记</h3>
								</header>
							
							<!--第一块教师笔记-->
							<c:forEach items="${map.news3}" var="newss3">
								<div class="s-grid-small">
									<div class="c-image">
										<a href="#"><img src="<%=basePath %>static/plugin/News/images/bus1.jpg" alt="" /></a>
									</div>
									<div class="c-text">
										<a class="power" href="#">${newss3.title }</a>
											<p class="date"><fmt:formatDate value="${newss3.create_time }" pattern="yyyy-MM-dd HH:mm:ss" /></p>
										<p>	
											<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>${newss3.page_view}</a>
											<a class="span_link" href="#"><span class="glyphicon glyphicon-thumbs-up"></span>${newss3.likenum_int}</a>
										</p>
										<a class="reu" href="#"><img src="<%=basePath %>static/plugin/News/images/more.png" alt="" /></a>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
								</div>
							</c:forEach>	
							<!--第一块教师笔记结束-->
							</div>
						</div>
						<!--教师笔记部分结束-->
						
						
						<!--学生笔记部分-->
						<div class="s-grid-right">
							<div class="cricket">
								<header>
									<h3 class="title-popular">学生笔记</h3>
								</header>
								
							<!--第一块学生笔记-->
							<c:forEach items="${map.news4}" var="newss4">
								<div class="s-grid-small">
									<div class="c-image">
										<a href="#"><img src="<%=basePath %>static/plugin/News/images/bus1.jpg" alt="" /></a>
									</div>
									<div class="c-text">
										<a class="power" href="#">${newss4.title }</a>
											<p class="date"><fmt:formatDate value="${newss4.create_time }" pattern="yyyy-MM-dd HH:mm:ss" /></p>
										<p>	
											<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>${newss4.page_view}</a>
											<a class="span_link" href="#"><span class="glyphicon glyphicon-thumbs-up"></span>${newss4.likenum_int}</a>
										</p>
										<a class="reu" href="#"><img src="<%=basePath %>static/plugin/News/images/more.png" alt="" /></a>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
								</div>
							</c:forEach>	
							<!--第一块学生笔记结束-->
							</div>
						</div>
						</div>
						</div>
				
				
				<!--右侧部分开始-->
				<div class="col-md-4 side-bar">
					<h2>专区</h2>
					<div class="first_half">
						<div class="list_vertical">
							<section class="accordation_menu">
								<!--第一大块-->
								<div>
									<input id="label-1" name="lida" type="radio" checked/>
									<label for="label-1" id="item1"><i class="ferme"> </i>校园通告<i class="icon-plus-sign i-right1"></i><i class="icon-minus-sign i-right2"></i></label>
									<div class="content" id="a1">
										<div class="scrollbar" id="style-2">
											<div class="force-overflow">
												<div class="popular-post-grids">
													<!--第一块校园通告-->
												<c:forEach items="${map.news5}" var="newss5">
													<div class="popular-post-grid">
														<div class="post-img">
															<a href="#"><img src="<%=basePath %>static/plugin/News/images/bus2.jpg" alt="" /></a>
														</div>
														<div class="post-text">
															<a class="pp-title" href="#">${newss5.title }</a>
															<!--时间 评论 浏览量-->
																<p class="date"><fmt:formatDate value="${newss5.create_time }" pattern="yyyy-MM-dd HH:mm:ss" /></p>
															<p>
																<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>${newss5.likenum_int }</a>
																<a class="span_link" href="#"><span class="glyphicon glyphicon-thumbs-up"></span>${newss5.page_view }</a>
															</p>
														</div>
														<div class="clearfix"></div>
													</div>
												</c:forEach>
													<!--第一块校园通告结束-->
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--第一大块结束-->
								
								<!--第二大块-->
								<div>
									<input id="label-2" name="lida" type="radio" />
									<label for="label-2" id="item2"><i class="icon-leaf" id="i2"></i>校园成绩通告<i class="icon-plus-sign i-right1"></i><i class="icon-minus-sign i-right2"></i></label>
									<div class="content" id="a2">
										<div class="scrollbar" id="style-2">
											<div class="force-overflow">
												<div class="popular-post-grids">
													<!--第一块通报批评-->
												<c:forEach items="${map.news6}" var="newss6">
													<div class="popular-post-grid">
														<div class="post-img">
															<a href="#"><img src="<%=basePath %>static/plugin/News/images/tec2.jpg" alt="" /></a>
														</div>
														<div class="post-text">
															<a class="pp-title" href="#">${newss6.title }</a>
															<!--时间 评论 浏览量-->
															<p>
																<fmt:formatDate value="${newss6.create_time }" pattern="yyyy-MM-dd HH:mm:ss"/>
																<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>${newss6.likenum_int }</a>
																<a class="span_link" href="#"><span class="glyphicon glyphicon-thumbs-up"></span>${newss6.page_view }</a>
															</p>
														</div>
														<div class="clearfix"></div>
													</div>
												</c:forEach>
													<!--第一块通报批评结束-->
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--第二大块结束-->
								
								<!--第三大块-->
								<div>
									<input id="label-3" name="lida" type="radio" />
									<label for="label-3" id="item3"><i class="icon-trophy" id="i3"></i>热门评论<i class="icon-plus-sign i-right1"></i><i class="icon-minus-sign i-right2"></i></label>
									<div class="content" id="a3">
										<div class="scrollbar" id="style-2">
											<div class="force-overflow">
												<div class="response">
													<div class="media response-info">
														<div class="media-left response-text-left">
															<a href="#">
																<img class="media-object" src="<%=basePath %>static/plugin/News/images/icon1.png" alt="" />
															</a>
															<h5><a href="#">Username</a></h5>
														</div>
														<div class="media-body response-text-right">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
															<ul>
																<li>MARCH 21, 2015</li>
																<li>
																	<a href="#">Reply</a>
																</li>
															</ul>
														</div>
														<div class="clearfix"> </div>
													</div>
													<div class="media response-info">
														<div class="media-left response-text-left">
															<a href="#">
																<img class="media-object" src="<%=basePath %>static/plugin/News/images/icon1.png" alt="" />
															</a>
															<h5><a href="#">Username</a></h5>
														</div>
														<div class="media-body response-text-right">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
															<ul>
																<li>MARCH 26, 2015</li>
																<li>
																	<a href="#">Reply</a>
																</li>
															</ul>
														</div>
														<div class="clearfix"> </div>
													</div>
													<div class="media response-info">
														<div class="media-left response-text-left">
															<a href="#">
																<img class="media-object" src="<%=basePath %>static/plugin/News/images/icon1.png" alt="" />
															</a>
															<h5><a href="#">Username</a></h5>
														</div>
														<div class="media-body response-text-right">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
															<ul>
																<li>MAY 25, 2015</li>
																<li>
																	<a href="#">Reply</a>
																</li>
															</ul>
														</div>
														<div class="clearfix"> </div>
													</div>
													<div class="media response-info">
														<div class="media-left response-text-left">
															<a href="#">
																<img class="media-object" src="<%=basePath %>static/plugin/News/images/icon1.png" alt="" />
															</a>
															<h5><a href="#">Username</a></h5>
														</div>
														<div class="media-body response-text-right">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
															<ul>
																<li>FEB 13, 2015</li>
																<li>
																	<a href="#">Reply</a>
																</li>
															</ul>
														</div>
														<div class="clearfix"> </div>
													</div>
													<div class="media response-info">
														<div class="media-left response-text-left">
															<a href="#">
																<img class="media-object" src="<%=basePath %>static/plugin/News/images/icon1.png" alt="" />
															</a>
															<h5><a href="#">Username</a></h5>
														</div>
														<div class="media-body response-text-right">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
															<ul>
																<li>JAN 28, 2015</li>
																<li>
																	<a href="#">Reply</a>
																</li>
															</ul>
														</div>
														<div class="clearfix"> </div>
													</div>
													<div class="media response-info">
														<div class="media-left response-text-left">
															<a href="#">
																<img class="media-object" src="<%=basePath %>static/plugin/News/images/icon1.png" alt="" />
															</a>
															<h5><a href="#">Username</a></h5>
														</div>
														<div class="media-body response-text-right">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
															<ul>
																<li>APR 18, 2015</li>
																<li>
																	<a href="#">Reply</a>
																</li>
															</ul>
														</div>
														<div class="clearfix"> </div>
													</div>
													<div class="media response-info">
														<div class="media-left response-text-left">
															<a href="#">
																<img class="media-object" src="<%=basePath %>static/plugin/News/images/icon1.png" alt="" />
															</a>
															<h5><a href="#">Username</a></h5>
														</div>
														<div class="media-body response-text-right">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
															<ul>
																<li>DEC 25, 2014</li>
																<li>
																	<a href="#">Reply</a>
																</li>
															</ul>
														</div>
														<div class="clearfix"> </div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--第三大块结束-->
							</section>
						</div>
						<!--通告部分结束-->
						
						
						<!--带图片的第一个新闻内容-->
						<div class="side-bar-articles">
							<div class="side-bar-article">
								<a href="#"><img src="<%=basePath %>static/plugin/News/images/sai.jpg" alt="" /></a>
								<div class="side-bar-article-title">
									<a href="#">新闻内容描述...</a>
								</div>
							</div>
							<div class="side-bar-article">
								<a href="#"><img src="<%=basePath %>static/plugin/News/images/sai2.jpg" alt="" /></a>
								<div class="side-bar-article-title">
									<a href="single.html">新闻内容描述...</a>
								</div>
							</div>
							<div class="side-bar-article">
								<a href="#"><img src="<%=basePath %>static/plugin/News/images/sai3.jpg" alt="" /></a>
								<div class="side-bar-article-title">
									<a href="#">新闻内容描述...</a>
								</div>
							</div>
						</div>
						<!--结束-->
					</div>
					
					<!--根据新闻标签查询-->
					<div class="secound_half">
						<div class="tags">
							<header>
								<h3 class="title-head">新闻标签</h3>
							</header>
							<p>
								<a class="tag1" href="single.html">At vero eos</a>
								<a class="tag2" href="single.html">doloremque</a>
								<a class="tag3" href="single.html">On the other</a>
								<a class="tag4" href="single.html">pain was</a>
								<a class="tag5" href="single.html">rationally encounter</a>
								<a class="tag6" href="single.html">praesentium voluptatum</a>
								<a class="tag7" href="single.html">est, omnis</a>
								<a class="tag8" href="single.html">who are so beguiled</a>
								<a class="tag9" href="single.html">when nothing</a>
								<a class="tag10" href="single.html">owing to the</a>
								<a class="tag11" href="single.html">pains to avoid</a>
								<a class="tag12" href="single.html">tempora incidunt</a>
								<a class="tag13" href="single.html">pursues or desires</a>
								<a class="tag14" href="single.html">Bonorum et</a>
								<a class="tag15" href="single.html">written by Cicero</a>
								<a class="tag16" href="single.html">Ipsum passage</a>
								<a class="tag17" href="single.html">exercitationem ullam</a>
								<a class="tag18" href="single.html">mistaken idea</a>
								<a class="tag19" href="single.html">ducimus qui</a>
								<a class="tag20" href="single.html">holds in these</a>
							</p>
						</div>
						<!--新闻标签查找结束-->
						
						<!---->
						<div class="popular-news">
							<header>
								<h3 class="title-popular">校园成绩通报</h3>
							</header>
							<div class="popular-grids">
								<div class="popular-grid">
									<a href="#"><img src="<%=basePath %>static/plugin/News/images/popular-4.jpg" alt="" /></a>
									<a class="title" href="#">校园成绩通报内容...</a>
									<!--时间 评论 浏览量 点赞-->
									<p>On Aug 31, 2015
										<a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a>
										<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>250 </a>
										<a class="span_link" href="#"><span class="glyphicon glyphicon-thumbs-up"></span>68</a>
									</p>
								</div>
								
								<div class="popular-grid">
									<a href="#"><img src="<%=basePath %>static/plugin/News/images/popular-1.jpg" alt="" /></a>
									<a class="title" href="#">校园成绩通报内容...</a>
									<!--时间 评论 浏览量 点赞-->
									<p>On Mar 14, 2015
										<a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a>
										<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>250 </a>
										<a class="span_link" href="#"><span class="glyphicon glyphicon-thumbs-up"></span>68</a>
									</p>
								</div>
								
								<div class="popular-grid">
									<iframe width="100%" src="#" frameborder="0" allowfullscreen></iframe>
									<a class="title" href="#">校园成绩通报内容...</a>
									<!--时间 评论 浏览量 点赞-->
									<p>On Mar 14, 2015
										<a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a>
										<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>250 </a>
										<a class="span_link" href="#"><span class="glyphicon glyphicon-thumbs-up"></span>68</a>
									</p>
								</div>
								
								<div class="popular-grid">
									<a href="#"><img src="<%=basePath %>static/plugin/News/images/popular-3.jpg" alt="" /></a>
									<a class="title" href="#">校园成绩通报内容...</a>
									<!--时间 评论 浏览量 点赞-->
									<p>On Mar 14, 2015
										<a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a>
										<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>250 </a>
										<a class="span_link" href="#"><span class="glyphicon glyphicon-thumbs-up"></span>68</a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!--右侧部分结束-->
				<div class="clearfix"></div>
			</div>
		</div>
		
		<!-- 内容部分结束 -->
		
		<script type="text/javascript">
			$(document).ready(function() {
				$().UItoTop({
					easingType: 'easeOutQuart'
				});
			});
		</script>
		<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</body>
</html>