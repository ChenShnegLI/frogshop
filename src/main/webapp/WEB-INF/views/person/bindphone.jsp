<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

<title>绑定手机</title>

<link href="<%=basePath %>AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css">
<link href="<%=basePath %>AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css">

<link href="<%=basePath %>css/personal.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath %>css/stepstyle.css" rel="stylesheet"
	type="text/css">

<script type="text/javascript"
	src="<%=basePath %>js/jquery-1.7.2.min.js"></script>
<script src="<%=basePath %>AmazeUI-2.4.2/assets/js/amazeui.js"></script>

</head>

<body>
	<!--头 -->
	<header> <article>
	<div class="mt-logo">
		<!--顶部导航条 -->
		<div class="am-container header">
<ul class="message-l">
				<div class="topMessage">
					<div class="menu-hd">
						<c:choose>
							<c:when test="${sessionScope.loginFlag}">
								<div class="am-dropdown" data-am-dropdown>
									<button class="am-btn am-round  am-dropdown-toggle"
										data-am-dropdown-toggle
										style="background:none;font-size:15px;">
										<i class="am-icon-user am-icon-fw"></i>${sessionScope.loginEntity.userName}
										<span class="am-icon-caret-down"></span>
									</button>
									<ul class="am-dropdown-content">
										<!--  <li class="am-dropdown-header">标题</li> -->
										<li><a href="<%=basePath %>person/index.html">账号管理</a></li>
										<li><a href="<%=basePath%>/logout">退出</a></li>
									</ul>
								</div>
								<input type="hidden" value="${sessionScope.loginEntity.id}"
									id="userId-input" />
							</c:when>
							<c:otherwise>
								<a href="<%=basePath %>login.html" target="_top">亲，请登录</a>
								<a href="<%=basePath %>register.html" target="_top">免费注册</a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</ul>
			<ul class="message-r">
				<div class="topMessage home">
					<div class="menu-hd">
						<a href="<%=basePath %>" target="_top" class="h">商城首页</a>
					</div>
				</div>
				<div class="topMessage my-shangcheng">
					<div class="menu-hd MyShangcheng">
						<a href="<%=basePath %>person/index.html" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a>
					</div>
				</div>
				<div class="topMessage mini-cart">
					<div class="menu-hd">
						<a id="mc-menu-hd" href="<%=basePath %>myCart/${sessionScope.loginEntity.id}" target="_top"><i
							class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span></a>
					</div>
				</div>
				<div class="topMessage favorite">
					<div class="menu-hd">
						<a href="<%=basePath %>collection.html" target="_top"><i
							class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a>
					</div>
			</ul>
		</div>


		<!--悬浮搜索框-->

		<div class="nav white">
			<div class="logoBig">
				<li><img src="<%=basePath %>images/logobig.png" /></li>
			</div>

			<div class="search-bar pr">
				<a name="index_none_header_sysc" href="#"></a>
				<form>
					<input id="searchInput" name="index_none_header_sysc" type="text"
						placeholder="搜索" autocomplete="off"> <input
						id="ai-topsearch" class="submit am-btn" value="搜索" index="1"
						type="submit">
				</form>
			</div>
		</div>

		<div class="clear"></div>
	</div>
	</div>
	</article> </header>
	<div class="nav-table">
		<div class="long-title">
			<span class="all-goods">全部分类</span>
		</div>
		<div class="nav-cont">
			<ul>
				<li class="index"><a href="#">首页</a></li>
				<li class="qc"><a href="#">闪购</a></li>
				<li class="qc"><a href="#">限时抢</a></li>
				<li class="qc"><a href="#">团购</a></li>
				<li class="qc last"><a href="#">大包装</a></li>
			</ul>
			<div class="nav-extra">
				<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利 <i
					class="am-icon-angle-right" style="padding-left: 10px;"></i>
			</div>
		</div>
	</div>
	<b class="line"></b>
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-danger am-text-lg">绑定手机</strong> / <small>Bind&nbsp;Phone</small>
					</div>
				</div>
				<hr />
				<!--进度条-->
				<div class="m-progress">
					<div class="m-progress-list">
						<span class="step-1 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">1<em class="bg"></em></i>
							<p class="stage-name">绑定手机</p>
						</span> <span class="step-2 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">2<em class="bg"></em></i>
							<p class="stage-name">完成</p>
						</span> <span class="u-progress-placeholder"></span>
					</div>
					<div class="u-progress-bar total-steps-2">
						<div class="u-progress-bar-inner"></div>
					</div>
				</div>
				<form class="am-form am-form-horizontal">
					<div class="am-form-group bind">
						<label for="user-phone" class="am-form-label">验证手机</label>
						<div class="am-form-content">
							<span id="user-phone">186XXXX0531</span>
						</div>
					</div>
					<div class="am-form-group code">
						<label for="user-code" class="am-form-label">验证码</label>
						<div class="am-form-content">
							<input type="tel" id="user-code" placeholder="短信验证码">
						</div>
						<a class="btn" href="javascript:void(0);"
							onclick="sendMobileCode();" id="sendMobileCode">
							<div class="am-btn am-btn-danger">验证码</div>
						</a>
					</div>
					<div class="am-form-group">
						<label for="user-new-phone" class="am-form-label">验证手机</label>
						<div class="am-form-content">
							<input type="tel" id="user-new-phone" placeholder="绑定新手机号">
						</div>
					</div>
					<div class="am-form-group code">
						<label for="user-new-code" class="am-form-label">验证码</label>
						<div class="am-form-content">
							<input type="tel" id="user-new-code" placeholder="短信验证码">
						</div>
						<a class="btn" href="javascript:void(0);"
							onclick="sendMobileCode();" id="sendMobileCode">
							<div class="am-btn am-btn-danger">验证码</div>
						</a>
					</div>
					<div class="info-btn">
						<div class="am-btn am-btn-danger">保存修改</div>
					</div>

				</form>

			</div>
			<!--底部-->
			<div class="footer">
				<div class="footer-hd">
					<p>
						<a href="#">恒望科技</a> <b>|</b> <a href="#">商城首页</a> <b>|</b> <a
							href="#">支付宝</a> <b>|</b> <a href="#">物流</a>
					</p>
				</div>
				<div class="footer-bd">
					<p>
						<a href="#">关于恒望</a> <a href="#">合作伙伴</a> <a href="#">联系我们</a> <a
							href="#">网站地图</a> <em>© 2015-2025 Hengwang.com 版权所有</em>
					</p>
				</div>
			</div>
		</div>

		<aside class="menu">
			<ul>
			<li class="person"><a href="<%=basePath %>person/index.html">个人中心</a></li>
			<li class="person"><a disabled="disabled" href="#">个人资料</a>
				<ul>
					<li><a href="information.html">个人信息</a></li>
					<li><a href="safety.html">安全设置</a></li>
					<li><a
						href="<%=basePath %>getAllAddresses?userId=${sessionScope.loginEntity.id}">收货地址</a></li>
				</ul></li>
			<li class="person"><a disabled="disabled" href="#">我的交易</a>
				<ul>
					<li class="active"><a href="order.html">订单管理</a></li>
					<li><a href="change.html">退款售后</a></li>
				</ul></li>
			<li class="person"><a disabled="disabled" href="#">我的资产</a>
				<ul>
					<li><a href="coupon.html">优惠券 </a></li>
					<li><a href="bonus.html">红包</a></li>
					<li><a href="bill.html">账单明细</a></li>
				</ul></li>

			<li class="person"><a disabled="disabled" href="#">我的小窝</a>
				<ul>
					<li><a href="<%=basePath %>collection.html">收藏</a></li>
					<li><a href="foot.html">足迹</a></li>
					<li><a href="comment.html">评价</a></li>
					<li><a href="news.html">消息</a></li>
				</ul></li>

		</ul>
		</aside>
	</div>

</body>

</html>