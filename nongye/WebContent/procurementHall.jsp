<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta name="baidu-site-verification" content="xFYTaJtNeK" />
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="applicable-device" content="pc">
	<meta name="mobile-agent"
		content="format=html5;url=http://m.cnhnb.com/purchase/">
		<link rel="alternate" media="only screen and (max-width: 640px)"
			href="http://m.cnhnb.com/purchase/">
			<link rel="canonical" href="#/" />
			<title>采购大厅</title>
			<meta name="keywords" content="农产品求购信息,农产品求购信息网,农副产品供求信息,农产品采购" />
			<meta name="description"
				content="信农网采购大厅是专业的农产品采购信息平台, 提供各地真实的采购商最新采购求购信息、以及采购商详细信息，帮你发现商机。农产品交易就上信农网。" />
			<link rel="stylesheet" href="tt.css/supply/search/base.css" />
			<link rel="stylesheet" href="tt.css/supply/search/style.css" />
			<link rel="stylesheet" href="tt.css/supply/search/reset.css" />
			<link rel="stylesheet" href="tt.css/base.css" />
			<link rel="stylesheet" href="tt.css/common.css" />
			<link rel="stylesheet" href="tt.css/purchase/index.css" />
			<link rel="shortcut icon" type="image/x-icon"
				href="tt.img/Procurement hall/Procurement_Main/favicon.ico" />
			<script type="text/javascript" src="tt.js/jquery-1.7.2.min.js"></script>
</head>
<body>
	<div class="topbar">
		<div class="container clearfix">
			<ul class="top-login fl">
				<li>
					<ul class="fl">
						<li class="label orange">您好，欢迎来到信农网</li>
					</ul></li>
			</ul>
			<ul class="top-nav fr">
				<li class="pngfix" id="hn_home_id">
					<div class="label">
						<a href="#" target="_blank">网站首页</a>
					</div></li>
				<li class="pngfix" id="hn_home_id">
					<div class="label">
						<a href="http://m.cnhnb.com" target="_blank">触屏版</a>
					</div></li>
				<li class="dropdown pngfix">
					<div class="dropdown-label">
						<i>&nbsp;</i><span><a href="#" target="_blank"
							rel="nofollow">手机信农</a>
						</span>
					</div>
					<div class="dropdown-layer dd-hn-qrcode">
						<div class="qrcode">
							<img
								src="http://static.cnhnb.com/4.0/images/common/topbar-hn-app.gif"
								alt="手机信农网">
								<p>
									<span>扫一扫下载</span><span>手机APP</span>
								</p>
						</div>
					</div></li>
				<li class="dropdown pngfix">
					<div class="dropdown-label">
						<i>&nbsp;</i><span>关注信农</span>
					</div>
					<div class="dropdown-layer dd-hn-qrcode">
						<div class="qrcode">
							<img
								src="http://static.cnhnb.com/4.0/images/common/topbar-qrcode.gif"
								alt="信农官方微信">
								<p>
									<span>扫码关注</span><span>信农官方微信</span>
								</p>
						</div>
					</div></li>
				<li class="dropdown pngfix">
					<div class="dropdown-label">
						<i>&nbsp;</i><span><a href="#" target="_blank"
							rel="nofollow">帮助中心</a>
						</span>
					</div>
					<div class="dropdown-layer dd-help-center">
						<p>
							<a href="#" target="_blank" rel="nofollow">常见问题</a><a href="#"
								target="_blank" rel="nofollow">联系客服</a>
						</p>
					</div></li>
			</ul>
		</div>
	</div>
	<div id="J-global-toolbar">
		<div class="hn-toolbar-wrap">
			<div class="hn-toolbar">
				<div class="hn-toolbar-tabs">
					<div class="hn-toolbar-tab hn-tbar-tab-mine">
						<a target="_blank" href="#" rel="nofollow"><div
								class="tab-ico"></div>
							<em class="tab-text"> 我的信农</em>
						</a>
					</div>
					<div class="hn-toolbar-tab hn-tbar-tab-supply">
						<a target="_blank" href="#"
							rel="nofollow"><div class="tab-ico"></div>
							<em class="tab-text"> 发供应</em>
						</a>
					</div>
					<div class="hn-toolbar-tab hn-tbar-tab-purchase">
						<a target="_blank" href="#"
							rel="nofollow"><div class="tab-ico"></div>
							<em class="tab-text"> 发采购</em>
						</a>
					</div>
					<div class="hn-toolbar-tab hn-tbar-tab-service">
						<a target="_blank"
							href="#"
							rel="nofollow"><div class="tab-ico"></div>
							<em class="tab-text"> 在线客服</em>
						</a>
					</div>
					<div class="hn-toolbar-tab hn-tbar-tab-im">
						<div class="tab-ico"
							style="background: url(tt.img/procurementHall/Procurement_Main/mes_icon.png) 7px 50% no-repeat rgb(102, 102, 102);"></div>
						<em class="tab-text">在线咨询</em>
					</div>
				</div>
				<div class="hn-toolbar-footer">

					<div class="hn-toolbar-tab hn-tbar-tab-qrcode">
						<a href="#" target="_blank"><div class="tab-ico"></div>
							<div class="tab-text tab-expand pt10">
								<div class="qrcode mb5">
									<img
										src="tt.img/procurementHall/Procurement_Main/topbar-hn-app.gif"
										alt="手机信农网">
										<p>
											<span>扫一扫下载</span><span>手机APP</span>
										</p>
								</div>
								<div class="qrcode">
									<img
										src="tt.img/procurementHall/Procurement_Main/topbar-qrcode.gif"
										alt="信农官方微信">
										<p>
											<span>扫码关注</span><span>信农官方微信</span>
										</p>
								</div>
							</div>
						</a>
					</div>
					<div class="hn-toolbar-tab hn-tbar-tab-top">
						<a href="#"><div class="tab-ico"></div>
							<em class="tab-text">顶部</em>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--<script type="text/javascript" src="http://static9.cnhnb.com/static/js/supply/searchTips4.0.js"></script>-->
	<div class="header">
		<div class="container">
			<h1 class="site-name">信农网</h1>
			<div class="site-logo fl">
				<a href="#" target="_blank" title="首页"><img
					src="tt.img/procurementHall/Procurement_Main/logo_1.jpg" alt="信农网"
					width="388" height="123">
				</a>
			</div>
			<div class="site-search">
				<!--  <script type="text/javascript">(function(){document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E'));var bdcs = document.createElement('script');bdcs.type = 'text/javascript';bdcs.async = true;bdcs.src = 'http://znsv.baidu.com/customer_search/api/js?sid=10574831926042027212' + '&plate_url=' + encodeURIComponent(window.location.href) + '&t=' + Math.ceil(new Date()/3600000);var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(bdcs, s);})();</script>-->
			</div>
			<div class="clear"></div>
		</div>


		<div class="main-nav">
			<div class="container">
				<h2 class="hidden">信农市场</h2>
				<div class="quick-start">
					<a href="#" target="_blank" class="hn-app">手机信农</a>
					<div class="code-index-as" style="display: none;">
						<img
							src="tt.img/procurementHall/Procurement_Main/index-code.png"
							alt="">
							<div>扫一扫下载</div>
							<div>手机APP</div>
					</div>
				</div>
				<ul class="clearfix">





					<li><a href="#" target="_blank">首 页</a>
					</li>




					<li><a href="supplyHall.jsp" target="_blank">供应大厅</a>
					</li>




					<li class="current"><a href="http://localhost:8080/nongye/purHallServlet"
						target="_blank">采购大厅</a>
					</li>




					<li><a href="#" target="_blank">行情大厅</a>
					</li>




					<li><a href="#/" target="_blank">行业资讯</a>
					</li>




					<li><a href="#" target="_blank">产业带</a>
					</li>




					<li><a href="#" target="_blank">信农学堂</a>
					</li>


				</ul>
			</div>
		</div>


	</div>

	<hr class="hr01" />
	<div class="wapper-w1190 clearfix">
		<div class="ad1">
			<a href="#" target="_target"
				title="点击进入页面" rel="nofollow" phptag="CG01"> <img
				src="tt.img/procurementHall/Procurement_Main/banner_1.jpg"
				alt="这是一张广告的展示图片" width="1190" height="90" /> </a>
		</div>
		<div class="selfication mt_10">
			<div class="plr_20 list pt_15 pb_15">
				<div class="selfication-list clearfix "
					style="height: 24px">
					<div class="h2">热门商品：</div>
					<ul class="wapper-w945" id="">
						<li><h1>
								<a href="purHallRegServlet?purchase_name=鸡苗 ">鸡苗</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=西瓜 ">西瓜</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=苹果">苹果</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=羊">羊</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=牛">牛</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=玉米">玉米</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=甜瓜 ">甜瓜</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=小龙虾 ">小龙虾</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=榴莲 ">榴莲</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=鱼苗">鱼苗</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=猪">猪</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=鸡 ">鸡</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=玉米粒">玉米粒</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=鹅苗">鹅苗</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=香蕉">香蕉</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=芒果 ">芒果</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=葡萄">葡萄</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=大蒜">大蒜</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=白菜 ">白菜</a>
							</h1>
						</li>
						<li><h1>
								<a href="purHallRegServlet?purchase_name=鸡苗">西红柿</a>
							</h1>
						</li>
						
					</ul>
					
				</div>
				<div class="selfication-list clearfix selfication-list-hidden"
					id="selfProvince">
					<!-- 菜单拓展区1 -->
				</div>
			 <div class="selfication-list clearfix">
					<!-- 菜单拓展区2 -->
				</div> 
			</div>
		</div>
		<div style="width: 956px; float: left;">
			<input type="hidden" id="cateId" name="cateId" value="" /> <input
				type="hidden" id="time" name="time" value="" /> <input type="hidden"
				id="provinceId" name="provinceId" value="" />
			<div class="tabs">
				<ul class="tabs-list">
					<li class="" onclick="javascript:changeShowType('0');"><a>最新采购</a>
					</li>
				</ul>
				<div class="tabs-msg">
					<a></a>
				</div>
			</div>
			<div class="pro-list mb_10">
				<ul class="pro-list-title pt_15">
					<li class="l1"><h2>时间</h2>
					</li>
					<li class="l2"><h2>产品/品种</h2>
					</li>
					<li class="l3">所在地区</li>
					<li class="l4">联系人</li>
				</ul>
				<ul>
					<%-- 留着做对比例子 <li class="text-list"><a href="procurementDetails.jsp"
						target="_blank"><span class="l1"> 2分钟前 </span><span class="l2">
								<%=request.getAttribute("list.purchase_name")%>><i>/大五星</i> </span><span
							class="l3"> 四川省成都市 </span><span class="l4"> 何成洪 </span> <span
							class="l5"> <img
								src="tt.img/Procurement hall/Procurement_Main/personal-yes_big.png"
								title="实名认证" width="28" height="28" />&nbsp; </span> <span class="l6"><em
								class="text-list-view alt">查看详情</em>
						</span> </a>
					</li>
 --%>

					<c:choose>
						<c:when test="${empty list}">
									 <!-- <h1></h1> -->
						</c:when>
						<c:otherwise>
							<c:forEach items="${list }" var="purchase"
								varStatus="i">

								<li class="text-list"><a href="http://localhost:8080/nongye/purDetails_HallServlet?user_name=${purchase.user_name }&type=${purchase.type }&purchase_name=${purchase.purchase_name }&address=${purchase.address }&ontime=${purchase.ontime }&offtime=${purchase.offtime }&text=${purchase.text }
								&purchase_number=${purchase.purchase_number }&expected_price=${purchase.expected_price }&tel_number=${purchase.tel_number }" target="_blank"><span class="l1"> ${purchase.ontime } </span>
								<span class="l2">
								<i>${purchase.purchase_name}/${purchase.type }</i> </span>
								<span class="l3"> ${purchase.address } </span><span class="l4"> ${purchase.user_name } </span>
								 <span class="l5"> 
								<!--  <img src="tt.img/Procurement hall/Procurement_Main/personal-yes_big.png" title="实名认证" width="28" height="28" /> -->
								 &nbsp; </span> 
								 <span class="l6"><em class="text-list-view alt">查看详情</em>
						</span> </a>
					</li>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					
				
				</ul>

				<div class="clear"></div>
			</div>
			<div class="page ptb_10 mb_10 tr">
				<center>
				
					<%-- 当前页数:[${curPageNo}/${totalPageSize}]
					<a	href="/nongye/purHallServlet?curPageNo=1">首页</a>
					<a	href="/nongye/purHallServlet?curPageNo=${curPageNo-1}">上一页</a>
					<a	href="/nongye/purHallServlet?curPageNo=${curPageNo+1}">下一页</a> <!-- <span>跳到</span><span><input
						type="text" id="pageNumber" size="6" value="1" maxlength="6"
						 style="text-align: center;" />
					</span><span>页 </span><span> -->
					<a	href="/nongye/purHallServlet?curPageNo=${totalPageSize}">尾页</a>
					 --%>
					
					
					
					
					<c:choose>
                	<c:when test="${purchase_name_1 ==null }">
                	 当前页数:[${curPageNo}/${totalPageSize}]
            			<a	href="/nongye/purHallServlet?curPageNo=1">首页</a>
            			<a	href="/nongye/purHallServlet?curPageNo=${curPageNo-1}">上一页</a>
						<a	href="/nongye/purHallServlet?curPageNo=${curPageNo+1}">下一页</a>
						<a	href="/nongye/purHallServlet?curPageNo=${totalPageSize}">尾页</a>
                    </c:when>
                    <c:when test="${purchase_name_1 !=null}">
                    	当前页数:[${curPageNo}/${totalPageSize}]
                    <a href="purHallRegServlet?purchase_name=${purchase_name_1}&curPageNo=1 ">首页</a>
                    <a href="purHallRegServlet?purchase_name=${purchase_name_1}&curPageNo=${curPageNo-1}" >上一页</a>
                    <a href="purHallRegServlet?purchase_name=${purchase_name_1}&curPageNo=${curPageNo+1}">下一页</a>
                    <a	href="purHallRegServlet?purchase_name=${purchase_name_1}&curPageNo=${totalPageSize}">尾页</a> 
                    </c:when>
                   
                    
                </c:choose>
					
				</center>
			</div>
		</div>
		<div class="sides mt_15">
			<div class="ad2">
				<a href="#" target="_target"
					title="点击进入页面" rel="nofollow" phptag="CG02"> <img
					src="tt.img/procurementHall/procurementDetails/C426EBGE9EChRkRlpycvGANt0lAABCkgJ2LPA281.jpg"
					alt="这是一张橙子的展示图片" width="216" height="353" /> </a>
			</div>
			<div class="hot-purchase mtb_15">
				<div class="h2">最热采购</div>
				<ul class="hotwords clearfix">
					<li class="li_0 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="鸡苗">鸡苗</a>
					</li>
					<li class="li_1 li_color_1 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="西瓜">西瓜</a>
					</li>
					<li class="li_2 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="苹果">苹果</a>
					</li>
					<li class="li_3 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="羊">羊</a>
					</li>
					<li class="li_4 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="牛">牛</a>
					</li>
					<li class="li_5 li_color_1 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="耕整机械">耕整机械</a>
					</li>
					<li class="li_6 li_color_1 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="甜瓜">甜瓜</a>
					</li>
					<li class="li_7 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="小龙虾">小龙虾</a>
					</li>
					<li class="li_8 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="榴莲">榴莲</a>
					</li>
					<li class="li_9 li_color_1 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="鱼苗">鱼苗</a>
					</li>
					<li class="li_10 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="猪">猪</a>
					</li>
					<li class="li_11 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="鸡">鸡</a>
					</li>
					<li class="li_12 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="玉米粒">玉米粒</a>
					</li>
					<li class="li_13 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="鹅苗">鹅苗</a>
					</li>
					<li class="li_14 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="杜仲">杜仲</a>
					</li>
					<li class="li_15 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="芒果">芒果</a>
					</li>
					<li class="li_16 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="重楼">重楼</a>
					</li>
					<li class="li_17 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="大蒜">大蒜</a>
					</li>
					<li class="li_18 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="狗">狗</a>
					</li>
					<li class="li_19 li_color_0 button-slide"><a
						href="#" target="_blank"
						class="hotwords_li_a" title="西红柿">西红柿</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<input type="hidden" id="webHomeUrl" value="#" />
	<input type="hidden" id="pcUrl" value="#" />
	<div class="footer">
		<div class="container">
			<div class="ptb20 clearfix">
				<div class="foot-qr clearfix">
					<div class="qrcode">
						<img src="#"
							alt="手机信农网">
							<p>
								<span>扫一扫下载</span><span>手机APP</span>
							</p>
					</div>
					<div class="qrcode">
						<img src="#"
							alt="信农官方微信">
							<p>
								<span>扫码关注</span><span>信农官方微信</span>
							</p>
					</div>
				</div>
				<ul class="foot-nav clearfix">
					<li><a href="#"
						target="_blank" rel="nofollow">关于我们</a>
					</li>
					<li><a href="#"
						target="_blank" rel="nofollow">法律声明</a>
					</li>
					<li><a href="#"
						target="_blank" rel="nofollow">使用协议</a>
					</li>
					<li><a href="#"
						target="_blank" rel="nofollow">版权隐私</a>
					</li>
					<li><a href="#" target="_blank"
						rel="nofollow">友情链接</a>
					</li>
					<li><a href="#"
						target="_blank" rel="nofollow">成功案例</a>
					</li>
					<li><a href="#"
						target="_blank" rel="nofollow">信农大事记</a>
					</li>
					<li><a href="#"
						target="_blank">产品库</a>
					</li>
					<li><a href="#" target="_blank">网站地图</a>
					</li>
				</ul>
				<div class="copyright">
					<p>湘ICP备13007354号-1 | 服务热线：400-008-8688</p>
					<p>
						互联网药品信息服务资格证书:(湘)-经营性-2014-0005 湖南信农科技有限公司 <a
							href="#"
							target="_blank">营业执照号</a>
					</p>
					<p>&copy;2011-2016 Cnhnb B2B SYSTEM All Rights Reserved</p>
					<p class="imgs">
						<a target="_blank" href="#" rel="nofollow"><img
							alt="45" src="//static.cnhnb.com/myhn/message/images/jhd_45.png">
						</a><a target="_blank" href="http://www.beianbeian.com/"
							rel="nofollow"><img alt="47"
							src="//static.cnhnb.com/myhn/message/images/jhd_47.png">
						</a><a target="_blank" href="http://webscan.360.cn/" rel="nofollow"><img
							alt="55" src="//static.cnhnb.com/myhn/message/images/jhd_55.png">
						</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?91cf34f62b9bedb16460ca36cf192f4c";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
	<script type="text/javascript">
function enterPress(){ 
    if(event.keyCode==13){
    	url = '#/0-0-0-0-0-'+$('#pageNumber').val()+'/';
    	window.location.href = url;    	
    }
}
function gotoPurchasePage(url) {
	url = url.replace('pagenumber', $('#pageNumber').val());
	window.location.href = url;
}
</script>
	<!--<script src="http://static9.cnhnb.com/static/js/common/jquery.cookie.js"></script>
<script src="http://static9.cnhnb.com/static/js/common/reg-win.js"></script>
<script src="http://static9.cnhnb.com/static/js/common/store.js"></script>
<script src="http://static9.cnhnb.com/static/js/common/analysis.collector.js"></script>
<script src="http://static9.cnhnb.com/static/js/common/common.js"></script>
<script src="http://static9.cnhnb.com/static/js/common/comm.js"></script>
<script src="http://static9.cnhnb.com/static/js/supply/list.js"></scrip-->
	t>
</body>
</html>