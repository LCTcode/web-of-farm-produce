<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!doctype html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>我的信农</title>
		<link rel="stylesheet" href="tt.css/base.min.css">
		<link rel="stylesheet" href="tt.css/bottomanimate.min.css">
		<link rel="stylesheet" href="tt.css/common.min.css">
		<link rel="stylesheet" href="tt.css/personal/common_1.css">
		<link rel="stylesheet" href="tt.css/personal/frame.css">
		<link rel="stylesheet" href="tt.css/index.css">
		<link rel="stylesheet" href="tt.css/left_1.css" />
	</head>
	<body>

		<!-- <div></div> -->
		<!--整行替换成网站头部-->

		<div class="topbar">
			<div class="container clearfix">
				<ul class="top-login fl">
					<li>
						<ul class="fl">
							<li class="label orange">您好，欢迎来到信农网</li>
						</ul>
					</li>
				</ul>
				<ul class="top-nav fr">
					<li class="pngfix" id="hn_home_id">
						<div class="label">
							<a href="#" target="_blank">网站首页</a>
						</div>
					</li>
					<li class="pngfix" id="hn_home_id">
						<div class="label">
							<a href="#" target="_blank">触屏版</a>
						</div>
					</li>
					<li class="dropdown pngfix">
						<div class="dropdown-label"><i>&nbsp;</i><span><a href="#" target="_blank" rel="nofollow">手机信农</a></span></div>
						<div class="dropdown-layer dd-hn-qrcode">
							<div class="qrcode"><img src="#" alt="手机版网站">
								<p><span>扫一扫下载</span><span>手机APP</span></p>
							</div>
						</div>
					</li>
					<li class="dropdown pngfix">
						<div class="dropdown-label"><i>&nbsp;</i><span>关注</span></div>
						<div class="dropdown-layer dd-hn-qrcode">
							<div class="qrcode"><img src="#" alt="官方微信">
								<p><span>扫码关注</span><span>官方微信</span></p>
							</div>
						</div>
					</li>
					<li class="dropdown pngfix">
						<div class="dropdown-label"><i>&nbsp;</i><span><a href="#" target="_blank" rel="nofollow">帮助中心</a></span></div>
						<div class="dropdown-layer dd-help-center">
							<p>
								<a href="#" target="_blank" rel="nofollow">常见问题</a>
								<a href="#" target="_blank" rel="nofollow">联系客服</a>
							</p>
						</div>
					</li>
				</ul>
			</div>
		</div>

		<div class="header">
			<div class="wrap">
				<a href="#" target="_blank" class="logo"><img src="tt.img/userHoutai/logo_2.jpg" height="40px"/></a>
				<ul class="head-nav clearfix">
					<li id="sy">
						<a class="main-link" href="#">首页</a>
						<div class="sub-nav sub-nav-index clearfix">
							<dl>
								<dt>我的采购</dt>
								<dd>
									<a href="http://localhost:8080/nongye/purManagerServlet">采购管理</a>
								</dd>
								<dd>
									<a href="purchasingOrder.jsp">采购订单</a>
								</dd>
							</dl>
							<dl>
								<dt>我的供应</dt>
								<dd>
									<a href="supplyManagement.jsp">供应管理</a>
								</dd>
								<dd>
									<a href="supplyOrder.jsp">供应订单</a>
								</dd>
								<dd>
									<a href="storeInfo.jsp">店铺资料</a>
								</dd>
							</dl>
						</div>
						<span class="line"></span>
					</li>
					<li id="zh">
						<a class="main-link" href="#" module="2">帐号管理</a>
						<div class="sub-nav clearfix">
							<dl>
								<dd>
									<a href="personalAttestation.jsp">个人认证</a>
								</dd>
								<dd>
									<a href="businessAttestation.jsp">企业认证</a>
								</dd>
								<dd>
									<a href="personalInfo.jsp">个人资料</a>
								</dd>
								<!--<dd>
									<a href="#">账户中心</a>
								</dd>-->
							</dl>
						</div>
						<span class="line"></span>
					</li>
		
				</ul>
				<div class="custom-service">
					<a class="btn-qq" target="_blank" href="#">和我联系</a>
					<div class="tel">
						<h3>客服热线：</h3>
						<span>100-000-000</span>
					</div>
				</div>
			</div>
		</div>

		<!-- main -->
		<div class="main wrap frame-main">
			<!-- frame-menu -->
			<div class="frame-menu" id="frame-menu">
				<!--	左侧导航-->
	
		
		<div id="menu_F">
			<div id="menu">
			<li>
				<h1>我的信农 	&equiv;</h1>
				<h2>买家中心</h2>
				<ul class="list" >
					<a href="lssueProcurement.jsp"><li>发布采购</a></li>
					<li><a href="http://localhost:8080/nongye/purManagerServlet">采购管理</a></li>
					<li><a href="http://localhost:8080/nongye/purHallServlet">采购大厅</a></li>
					<li><a href="#">可拓展的内容</a></li>
				</ul>
			</li>
			<li>
				<h2>卖家中心</h2>
				<ul class="list">
					<li><a href="lssueSupply.jsp">发布供应</a></li>
					<li><a href="#">供应订单</a></li>
					<li><a href="#">店铺资料</a></li>
				</ul>
			</li>
				<li>
				<h2>个人设置</h2>
				<ul class="list">
					<li><a href="personalAttestation.jsp">个人认证</a></li>
					<li><a href="businessAttestation.jsp">企业认证</a></li>
					<li><a href="personalInfo.jsp">个人资料</a></li>
					<li><a href="#">可拓展功能栏</a></li>
				</ul>
			</li>
		</div>
	</div>
	</div>
			<!-- frame-menu /-->

			<!-- frame-container -->
			<div class="frame-container">
				<div class="mainC">
					<!-- info -->

					<div class="info">
						<div class="userAvt">
							<em> 
				
				
					<img src="tt.img/userHoutai/myhn-sclogo.jpg"
						alt="上传logo" width="66" height="66" id="userPic" />
				
			
							</em> <span>个人信息</span>
						</div>
						<div class="userinfo">
							<div class="text">
								<div class="name">
									<strong>欢迎您！ </strong>
								</div>
							</div>
						</div>
						<div class="userstate">
							<span>
			
			
				
					<a href="javascript:void(0);"><img alt="企业资质"
						title="企业资质" src="tt.img/userHoutai/enterprise-no.png"
						id="logos_logo"></a>
				
					<a href="javascript:void(0);"><img alt="实名认证"
						title="实名认证" src="tt.img/userHoutai/personal-no.png"
						id="logos_logo"></a>
				
					<a href="javascript:void(0);"><img alt="手机认证"
						title="手机认证" src="tt.img/userHoutai/phone-yes.png"
						id="logos_logo"></a>
				
					<a href="javascript:void(0);"><img alt="邮箱认证"
						title="邮箱认证" src="tt.img/userHoutai/email-no.png"
						id="logos_logo"></a>
				
			
		</span>
						</div>
						<div class="clear"></div>

						<div class="userprofile">
							<span class="mr5">用户</span>
						</div>

						<div class="myshop">
							<!--<a class="url" href="http://www.cnhnb.com/homepage/1842529" target="_blank">http://www.cnhnb.com/homepage/1842529</a>
							<div class="ewm-ico">
								<div class="ewm">
									<div class="ewm-img">
									</div>
								</div>
								<img src="http://static.cnhnb.com/4.0/images/personal/home/ewm-ico-alt.png" />
							</div>
							<div class="bdshare">
								<div class="text">分享：</div>
								<div class="bdsharebuttonbox" data-tag="share_1">
									<a class="bds_weixin" data-cmd="weixin"></a>
									<a class="bds_qzone" data-cmd="qzone" href="javascript:void(0);"></a>
									<a class="bds_tsina" data-cmd="tsina"></a>
								</div>
							</div>-->
						</div>
						<div class="clear"></div>
						<div class="userbind">
							<ul class="clearfix">
								<!--<li><span>帐号：<b>m15177866225</b></span></li>
								<li class="phone"><span>手机号码：<a href="javascript:void(0);">151****6225(修改)</a></span></li>
								<li class="account x"><span><a href="javascript:dAlert('bg6');">我的银行卡（0）</a></span></li>-->
							</ul>
						</div>
					</div>
					
					<!-- info /-->

					<!-- <div class="wrapBox mb15">
						<div class="header"> <span>我的交易动态</span> </div>
						<div class="trading-list">
							<dl class="clearfix" id="purchase">
								<dt>采购</dt>
								<dd>
									<a href="#" targe="_bank">待付款（<b id="pwaitpay">0</b>）</a>
								</dd>
								<dd>
									<a href="#" targe="_bank">待卖家发货（<b id="psending">0</b>）</a>
								</dd>
								<dd>
									<a href="#" targe="_bank">待收货（<b id="precevice">0</b>）</a>
								</dd>
								<dd>
									<a href="#" targe="_bank">待评价（<b id="pevaluateing">0</b>）</a>
								</dd>
							</dl>
						</div>
					</div> -->
					<div class="picbox mb15">

						<a href="#" targe="_bank"><img src="tt.img/userHoutai/4019DCA548ChRkRlegy86AEd5fAAA2TJZlX5Q573_meitu_2.jpg" width="720" /></a>

					</div>
				</div>
				<div class="mainR">

					<!-- links -->
					<div class="links">
						<div class="btns">
							<a class="purchase" href="lssueProcurement.jsp" target="_bank">发布采购 <i class="icon"></i></a>
							<a class="supply" href="lssueSupply.jsp" target="_bank">发布供应 <i class="icon"></i></a>
						</div>
					</div>
					<!-- links /-->
					<!-- server -->
					<div class="server">
						<div class="title">
							<h2>用户指南</h2></div>
						<ul>

							<li>
								<a href="#" title="【信农学堂】点击这里，开始学习" target="_bank">【开心学堂】点击这里，开始学习</a>
							</li>

							<li>
								<a href="#" title="【开店入门】在开店的人必需掌握" target="_bank">【开店入门】在开店的人必需掌握</a>
							</li>

							<li>
								<a href="#" title="【运营提升】想盈利的人需要明白" target="_bank">【运营提升】想盈利的人需要明白</a>
							</li>

							<li>
								<a href="#" title="【营销推广】为了比别人做得更好" target="_bank">【营销推广】为了比别人做得更好</a>
							</li>

							<li>
								<a href="#" title="【发布指导】新版供应发布指南" target="_bank">【发布指导】新版供应发布指南</a>
							</li>

						</ul>
					</div>
					<!-- server /-->
					<!-- ad-1 -->
					<div class="ad-1">

						<a href="#" targe="_bank"><img src="tt.img/userHoutai/D948ABI9CAChRkRli076iAUYiSAAFB7syfw48190.jpg" width="243" /></a>

					</div>
					<!-- ad-1 /-->
				</div>
			</div>
			<!-- frame-container /-->

		</div>
		<!-- main /-->
		<!-- bottom tips -->
		
	<script type="text/javascript" src="tt.js/left.js"></script>
		<div class="fl_open_wrap">
			<div class="fl_open_wrap_cntr" id="appd_wrap_open_cnt">
				<div>

					<img src="tt.img/userHoutai/FFB831CC5CChRkRlhKpveAD4ZMAAAQfMT-GEI352.gif">

				</div>
			</div>
		</div>
		<div class="fl_pop_wrap" id="appd_wrap_default">
			<div class="fl_pop_wrap_cntr" id="fl_pop_wrap_cntr">
				<div class="fl_pop_wrap_cntr_bg" id="fl_pop_wrap_cntr_bg">
				</div>
				<div class="fl_pop_box">
					<div class="fl_pop_pic">

						<img id="imgAll" src="tt.img/userHoutai/70A899H2BAChRkRliAHXKAGtkeAAGYr6NkolM550.png" border="0">

					</div>
					<div class="fl_pop_cnt">

						<div class="fl_pop_qrcode">

							<img src="tt.img/userHoutai/BF9C2BC370ChRkRlju03CAJSGxAAAa80Jn-Z4629.png" width="112" height="112" alt="">

						</div>
					</div>
					<a href="javascript:;" class="fl_wrap_close" title="关闭" id="appd_wrap_close">
						×
					</a>
				</div>
			</div>
		</div>

		<div class="footer">
			<div class="container">
				<div class="ptb20 clearfix">
					<div class="foot-qr clearfix">
						<div class="qrcode"><img src="tt.img/userHoutai/topbar-hn-app.gif" alt="手机信农网">
							<p><span>扫一扫下载</span><span>手机APP</span></p>
						</div>
						<div class="qrcode"><img src="tt.img/userHoutai/topbar-qrcode.gif" alt="信农官方微信">
							<p><span>扫码关注</span><span>信农官方微信</span></p>
						</div>
					</div>
					<ul class="foot-nav clearfix">
						<li>
							<a href="#" target="_blank" rel="nofollow">关于我们</a>
						</li>
						<li>
							<a href="#" target="_blank" rel="nofollow">法律声明</a>
						</li>
						<li>
							<a href="#" target="_blank" rel="nofollow">使用协议</a>
						</li>
						<li>
							<a href="#" target="_blank" rel="nofollow">版权隐私</a>
						</li>
						<li>
							<a href="#" target="_blank" rel="nofollow">友情链接</a>
						</li>
						<li>
							<a href="#" target="_blank" rel="nofollow">成功案例</a>
						</li>
						<li>
							<a href="#" target="_blank" rel="nofollow">大事记</a>
						</li>
						<li>
							<a href="#" target="_blank">产品库</a>
						</li>
						<li>
							<a href="#" target="_blank">网站地图</a>
						</li>
					</ul>
					<div class="copyright">
						<p> | 服务热线：1000-1000-1000</p>
						<p>互联网药品信息服务资格证书:(x)-经营性xxxxxx科技有限公司
							<a href="tt.img/userHoutai/HN-zhizhao.jpg" target="_blank">营业执照号</a>
						</p>
						<p>&copy;2011-2018 Cnhnb B2B SYSTEM All Rights Reserved</p>
						<p class="imgs">
							<a target="_blank" href="#" rel="nofollow"><img alt="45" src="tt.img/userHoutai/jhd_45.png"></a>
							<a target="_blank" href="#" rel="nofollow"><img alt="47" src="tt.img/userHoutai/jhd_47.png"></a>
							<a target="_blank" href="#" rel="nofollow"><img alt="55" src="tt.img/userHoutai/jhd_55.png"></a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="hidden">
			<!--<script id="hn_analytics_all" type="text/javascript" src="//static.cnhnb.com/js/analytics/analytics.cnhnb.com-min.js?version=20150809"></script>
			<script type="text/javascript" src="//hnlog.cnhnb.com/js/online.behavior.funnel.js?v=20170105"></script>-->
			<script>
				var _hmt = _hmt || [];
				(function() {
					var hm = document.createElement("script");
					hm.src = "https://hm.baidu.com/hm.js?91cf34f62b9bedb16460ca36cf192f4c";
					var s = document.getElementsByTagName("script")[0];
					s.parentNode.insertBefore(hm, s);
				})();
			</script>
			<!--[if lte IE 6]>
    <script type="text/javascript" src="//static.cnhnb.com/4.0/libs/DD_belatedPNG/DD_belatedPNG_0.0.8a-min.js"></script>
    <script type="text/javascript">DD_belatedPNG.fix('.pngfix, a.pngfix:hover');</script>
<![endif]-->
		</div>
		<script type="text/javascript" src="tt.js/jquery-1.7.2.min.js"></script>
	<!--	<script type="text/javascript" src="http://static.cnhnb.com/4.0/libs/lhgdialog/lhgdialog.min.js?self=true&skin=hn"></script>
		<script type="text/javascript" src="http://static.cnhnb.com/4.0/libs/superslide/jquery.SuperSlide.2.1.1.source.js"></script>
		<script type="text/javascript" src="http://static.cnhnb.com/4.0/libs/highcharts/highcharts.js"></script>
		<script type="text/javascript" src="http://static.cnhnb.com/4.0/libs/jqtabs/jqtabs.min.js"></script>
		<script type="text/javascript" src="http://static.cnhnb.com/myhn/js/core/top_foot.js?v=20170815"></script>-->
		<script type="text/javascript">
			var init = {
				userWebUrl: "http://hnuser.cnhnb.com/",
				email: "",
				mobile: "15177866225",
				userPic: "",
				imgUrl: "http://img.cnhnb.com/",
				shopUrl: "http://www.cnhnb.com/homepage/1842529",
				shopName: "普通会员",
				resoruceUrl: "http://static.cnhnb.com/",
				domain: "cnhnb.com",
				guides: "",
				hnpayUrl: "https://hnbpay.cnhnb.com/"
			}
		</script>
		<script type='text/javascript' src="http://static.cnhnb.com/newShopProduct/js/jquery.qrcode.min.js?v=30"></script>
		<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/personal/common/common.js?v=1"></script>
		<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/personal/home/index.js?v=2"></script>
		<script type="text/javascript" src="http://static.cnhnb.com/js/frame/hn.frame.util-0.1.js?v=1"></script>

		<script type="text/javascript" src="http://static.cnhnb.com/shopOrder/js/order/jquery.cookie.js"></script>
		<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/common/buttomAnimate.min.js"></script>
		<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/common/buttomCookie.min.js"></script>
		<script type="text/javascript">
			_key = "homeCk";
		</script>

		<script src="http://static.cnhnb.com/myhn/js/binding.js"></script>
		<script>
			/* 验证个数 */
			$(function() {
				$(".item-box ul input").click(function() {
					var s = $(".item-box ul input:checked").length;
					if(s > 3) {
						$(this).attr("checked", false);
						//$(".w-bg,.waring-box").fadeIn();
						$.dialog.tips('身份最多只能选择三个喔。', 1, '', function() {});
					}
				})

				if($('.item-out-box').length > 0) {
					$('.fl_pop_wrap').css('bottom', '-196px');
				}
				$(".canel,.close-a").click(function() {
					$(".w-bg,.item-out-box").fadeOut();
					$('.fl_pop_wrap').css('bottom', 0);
				})
				$(".ok").click(function() {
					//提交身份标签数据
					var s = $(".item-box ul input:checked");
					var businessid = "";
					s.each(function() {
						businessid += $(this).attr("id") + ",";
					});
					if(businessid.length == 0) {
						$.dialog.tips('请选择身份标签', 1, '', function() {});
						return;
					}
					$.ajax({
						type: "post",
						async: false,
						url: "updateExt",
						data: {
							bussinessId: businessid
						},
						dataType: "json",
						success: function(result) {
							$(".w-bg,.item-out-box").fadeOut();
						}
					});
				});
			});
		</script>
	</body>

</html>