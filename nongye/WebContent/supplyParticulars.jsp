<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1">
		<meta name="renderer" content="webkit">
		<meta name="baidu-site-verification" content="xFYTaJtNeK" />
		<meta http-equiv="Cache-Control" content="no-transform" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<meta name="applicable-device" content="pc">
		<meta name="mobile-agent" content="format=html5;url=http://m.cnhnb.com/gongying/3134136/">
		<link rel="alternate" media="only screen and (max-width: 640px)" href="http://m.cnhnb.com/gongying/3134136/">
		<link rel="canonical" href="http://www.cnhnb.com/gongying/3134136/" />
		<title>供应商品单个详情案例</title>
		<meta name="keywords" content="突围桃批发,突围桃价格" />
		<meta name="description" content="信农网提供突围桃 70mm以上 4-5两批发，突围桃价格公道1.5元/斤，从湖北省荆门市京山县发出，欢迎在线咨询、突围桃供应商家何杰。" />
		<link rel="shortcut icon" type="image/x-icon" href="tt.img/supplyHall/supplyParticulars/favicon.ico" />
		<link rel="stylesheet" href="tt.css/base.css">
		<link rel="stylesheet" href="tt.css/common.css">
		<link rel="stylesheet" href="tt.css/supply/popup.css" />
		<link rel="stylesheet" href="tt.css/order/detail.css" />
		<link rel="stylesheet" href="tt.css/supply/free.css" />
		<script type="text/javascript" src="tt.js/jquery-1.7.2.min.js"></script>
		<script>
			var _hmt = _hmt || [];
			_hmt.push(['_setAccount', 'e34899ebe785ba2d1ad7fa67c68b108b']);
		</script>
		<style type="text/css">
			.mui-scroll-wrapper .mui-scroll .mui-content {
				padding-top: 0;
			}
			
			.w-bg {
				position: fixed;
				z-index: 9998;
				background-color: #000;
				left: 0;
				top: 0;
				width: 100%;
				height: 100%;
				opacity: 0.6;
				filter: alpha(opacity=60);
			}
			
			.reg-win {
				width: 500px;
				height: 245px;
				overflow: hidden;
				position: fixed;
				top: 50%;
				left: 50%;
				margin-top: -225px;
				margin-left: -225px;
				z-index: 9999;
			}
			
			.bg4 {
				background-color: #F5FBF2;
				border-top-left-radius: 16px;
				border-top-right-radius: 16px;
				border-bottom-left-radius: 16px;
				border-bottom-right-radius: 16px;
			}
			
			.reg-win-close {
				text-align: center;
				font-size: 35px;
				line-height: 35px;
				margin: 0px 0 0 255px;
				cursor: pointer;
				height: 30px;
				width: 30px;
				overflow: hidden;
			}
			
			.reg-win-con {
				width: 220px;
				float: left;
				height: 168px;
				padding: 10px 10px;
				margin: 165px 0 0 45px;
			}
			
			.reg-win-con-img {
				float: right;
				width: 123px;
				font-size: 14px;
				color: #fff;
				text-align: center;
				line-height: 18px;
				margin: 0px;
				font-family: "΢���ź�"
			}
			
			.reg-win-con-text {
				float: left;
				width: 440px;
				margin-top: 120px;
			}
			
			.reg-win-con-text ul {
				clear: both;
				width: 440px;
				display: block;
				list-style: outside none none;
				margin-left: 40px;
			}
			
			.reg-win-con-text ul li {
				float: left;
				width: 100px;
				margin: 0 20px;
				list-style: outside none none;
				font-family: "΢���ź�";
				font-size: 16px;
			}
			
			.reg-win-but {
				float: left;
				width: 189px;
				height: 120px;
				overflow: hidden;
				margin: 205px 34px 0 38px;
			}
			
			.reg-win-but a {
				width: 165px;
				text-align: center !important;
				height: 35px;
				display: block;
				overflow: hidden;
				font-family: "΢���ź�";
				color: #FFF;
				text-decoration: none;
				font-size: 20px;
				text-align: center;
				line-height: 35px;
				border-radius: 35px;
			}
			
			.reg-win-but-1 {
				background-color: #ea5504;
				border: solid 2px #fff;
			}
			
			.reg-win-but-1:hover {
				background-color: #ea5504;
			}
			
			.reg-win-but-2 {
				background-color: #940020;
				border: solid 2px #f22424;
				margin-top: 18px;
			}
			
			.reg-win-but-2:hover {
				background-color: #f22424;
			}
		</style>
	</head>

	<body>
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
							<div class="qrcode"><img src="tt.img/supplyHall/supplyParticulars/topbar-hn-app.gif" alt="手机信农网">
								<p><span>扫一扫下载</span><span>手机APP</span></p>
							</div>
						</div>
					</li>
					<li class="dropdown pngfix">
						<div class="dropdown-label"><i>&nbsp;</i><span>关注信农</span></div>
						<div class="dropdown-layer dd-hn-qrcode">
							<div class="qrcode"><img src="tt.img/supplyHall/supplyParticulars/topbar-qrcode.gif" alt="信农官方微信">
								<p><span>扫码关注</span><span>信农官方微信</span></p>
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
		<div id="J-global-toolbar">
			<div class="hn-toolbar-wrap">
				<div class="hn-toolbar">
					<div class="hn-toolbar-tabs">
						<div class="hn-toolbar-tab hn-tbar-tab-mine">
							<a target="_blank" href="http://hnuser.cnhnb.com/myhn/index" rel="nofollow">
								<div class="tab-ico"></div><em class="tab-text"> 我的信农</em></a>
						</div>
						<div class="hn-toolbar-tab hn-tbar-tab-supply">
							<a target="_blank" href="http://product.cnhnb.com/supply/release" rel="nofollow">
								<div class="tab-ico"></div><em class="tab-text"> 发供应</em></a>
						</div>
						<div class="hn-toolbar-tab hn-tbar-tab-purchase">
							<a target="_blank" href="http://buy.cnhnb.com/purchase/release" rel="nofollow">
								<div class="tab-ico"></div><em class="tab-text"> 发采购</em></a>
						</div>
						<div class="hn-toolbar-tab hn-tbar-tab-service">
							<a target="_blank" href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODAxNDQxNl80NDEzNTBfNDAwMDA4ODY4OF8yXw" rel="nofollow">
								<div class="tab-ico"></div><em class="tab-text"> 在线客服</em></a>
						</div>
						<div class="hn-toolbar-tab hn-tbar-tab-im">
							<div class="tab-ico" style="background: url(http://im.cnhnb.com/images/im/mes_icon.png) 7px 50% no-repeat rgb(102, 102, 102);"></div><em class="tab-text">在线咨询</em></div>
					</div>
					<div class="hn-toolbar-footer">

						<div class="hn-toolbar-tab hn-tbar-tab-qrcode">
							<a href="#" target="_blank">
								<div class="tab-ico"></div>
								<div class="tab-text tab-expand pt10">
									<div class="qrcode mb5"><img src="tt.img/supplyHall/supplyParticulars/topbar-hn-app.gif" alt="手机信农网">
										<p><span>扫一扫下载</span><span>手机APP</span></p>
									</div>
									<div class="qrcode"><img src="tt.img/supplyHall/supplyParticulars/topbar-qrcode.gif" alt="信农官方微信">
										<p><span>扫码关注</span><span>信农官方微信</span></p>
									</div>
								</div>
							</a>
						</div>
						<div class="hn-toolbar-tab hn-tbar-tab-top">
							<a href="#">
								<div class="tab-ico"></div><em class="tab-text">顶部</em></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="header">
			<div class="container">
				<h1 class="site-name">信农网</h1>
				<div class="site-logo fl">
					<a href="http://www.cnhnb.com" target="_blank" title="首页"><img src="tt.img/supplyHall/supplyParticulars/logo_1.jpg" alt="信农网" width="388" height="123"></a>
				</div>
				<div class="site-search">
					<script type="text/javascript">
						(function() {
							document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E'));
							var bdcs = document.createElement('script');
							bdcs.type = 'text/javascript';
							bdcs.async = true;
							bdcs.src = 'http://znsv.baidu.com/customer_search/api/js?sid=10574831926042027212' + '&plate_url=' + encodeURIComponent(window.location.href) + '&t=' + Math.ceil(new Date() / 3600000);
							var s = document.getElementsByTagName('script')[0];
							s.parentNode.insertBefore(bdcs, s);
						})();
					</script>
				</div>
				<div class="clear"></div>
			</div>

			<div class="main-nav">
				<div class="container">
					<h2 class="hidden">信农市场</h2>
					<div class="quick-start">
						<a href="http://www.cnhnb.com/app/download/" target="_blank" class="hn-app">手机信农</a>
						<div class="code-index-as" style="display: none;">
							<img src="tt.img/supplyHall/supplyParticulars/index-code.png" alt="">
							<div>扫一扫下载</div>
							<div>手机APP</div>
						</div>
					</div>
					<ul class="clearfix">

						<li>
							<a href="http://www.cnhnb.com" target="_blank">首 页</a>
						</li>

						<li class="current">
							<a href="http://www.cnhnb.com/supply/" target="_blank">供应大厅</a>
						</li>

						<li>
							<a href="http://www.cnhnb.com/purchase/" target="_blank">采购大厅</a>
						</li>

						<li>
							<a href="http://www.cnhnb.com/hangqing/" target="_blank">行情大厅</a>
						</li>

						<li>
							<a href="http://news.cnhnb.com/" target="_blank">行业资讯</a>
						</li>

						<li>
							<a href="http://www.cnhnb.com/chanyedai/" target="_blank">产业带</a>
						</li>

						<li>
							<a href="http://www.cnhnb.com/xt/" target="_blank">信农学堂</a>
						</li>

					</ul>
				</div>
			</div>

		</div>

		<div class="container">
			<div class="position">
				<span>您所在的位置：</span>
				<a href="http://www.cnhnb.com">信农网</a><span>&gt;</span>
				<a href="http://www.cnhnb.com/p/maotao/" target="_blank">毛桃</a><span>&gt;</span><span class="proname">突围桃 70mm以上 4-5两</span>
			</div>
			<div class="main-left">
				<div class="pro-info clearfix">
					<div class="pro-info-pic">
						<div id="prdGallery" class="gallery">
							<div class="main-pic">

								<a class="jqzoom" href="tt.img/supplyHall/supplyParticulars/af6857a3df374d56a7a0498fdc19ad40.jpg?imageView2/0/w/650/h/650/q/75/ignore-error/1" target="_blank" title="" rel="gallery"> <img src="tt.img/supplyHall/supplyParticulars/af6857a3df374d56a7a0498fdc19ad40.jpg" jqimg="tt.img/supplyHall/supplyParticulars/af6857a3df374d56a7a0498fdc19ad40.jpg?imageView2/0/w/650/h/650/q/75/ignore-error/1" width="350" height="350" />
								</a>

							</div>
							<ul class="thumb clearfix">

								<li class="" data-index="0">
									<div class="pic">
										<a class="zoomThumbActive" href='javascript:void(0);' rel="{gallery: 'gallery', smallimage: 'tt.img/supplyHall/supplyParticulars/af6857a3df374d56a7a0498fdc19ad40.jpg',largeimage: 'tt.img/supplyHall/supplyParticulars/af6857a3df374d56a7a0498fdc19ad40.jpg?imageView2/0/w/650/h/650/q/75/ignore-error/1'}"><img src="tt.img/supplyHall/supplyParticulars/af6857a3df374d56a7a0498fdc19ad40.jpg?imageView2/0/w/120/h/120/q/75/ignore-error/1" alt="突围桃 70mm以上 4-5两" /></a>
									</div>
								</li>

								<li class="" data-index="0">
									<div class="pic">
										<a class="" href='javascript:void(0);' rel="{gallery: 'gallery', smallimage: 'http://img.cnhnb.com/image/jpeg/head/2018/05/02/d13d18595aeb482692900c96ccfc52bb.jpeg',largeimage: 'http://img.cnhnb.com/image/jpeg/head/2018/05/02/d13d18595aeb482692900c96ccfc52bb.jpeg?imageView2/0/w/650/h/650/q/75/ignore-error/1'}"><img src="http://img.cnhnb.com/image/jpeg/head/2018/05/02/d13d18595aeb482692900c96ccfc52bb.jpeg?imageView2/0/w/120/h/120/q/75/ignore-error/1" alt="突围桃 70mm以上 4-5两" /></a>
									</div>
								</li>

								<li class="" data-index="0">
									<div class="pic">
										<a class="" href='javascript:void(0);' rel="{gallery: 'gallery', smallimage: 'tt.img/supplyHall/supplyParticulars/225e49c440554e2aa47927344ae4dd12.jpg',largeimage: 'tt.img/supplyHall/supplyParticulars/225e49c440554e2aa47927344ae4dd12.jpg?imageView2/0/w/650/h/650/q/75/ignore-error/1'}"><img src="tt.img/supplyHall/supplyParticulars/225e49c440554e2aa47927344ae4dd12.jpg?imageView2/0/w/120/h/120/q/75/ignore-error/1" alt="突围桃 70mm以上 4-5两" /></a>
									</div>
								</li>

							</ul>
							<a class="thumb-prev" href="#">&#10096;</a>
							<a class="thumb-next" href="#">&#10097;</a>
						</div>
					</div>
					<div class="pro-info-txt">
						<div class="tit clearfix">

							<h1>突围桃 70mm以上 4-5两</h1>

						</div>
						<div class="txt clearfix mt10">
							<span class="fl"><label>更新时间：</label>
			2018-05-02 11:08:09</span><span class="fr"><label>查看人数：</label>0</span>
						</div>

						<div class="txt clearfix">
							<span><label>发货地：</label>湖北
					荆门 京山县</span>
						</div>

						<div class="price clearfix">

							<p>
								<span class="mr5">价格：</span>

								<span class="red fs24 mr5"> 1.50
						</span>
								<span class="mr15">元/斤</span>
								<span class="mr5">20,000斤起批</span>

							</p>

						</div>

						<div class="breed clearfix">

							<span class="align-1"><label>品种：</label>突围桃</span>

							<span class="align-1"><label>果径：</label>70mm以上</span>

							<span class="align-1"><label>果肉颜色：</label>粉红</span>

							<span class="align-1"><label>货品包装：</label>筐装</span>

							<span class="align-1"><label>单颗重：</label>4-5两</span>

						</div>

						<div class="btn clearfix">

						</div>

						<div class="phonebrg" style="background-color: #F5FBF2;">
							<div class="txt clearfix">
								<label class="tips fl" style="color:red;padding-top: 5px;font-size: 20px;">*</label>
								<p class="tips fl">了解商家更多详细信息，跟商家免费通电话，请点击<span class="txtopen" style="cursor: pointer;color:red; font-size: 16px;">免费电话聊</span>。</p>
								<span style="clear:both;display:block;"></span>
								<label class="tips fl" style="color:red;padding-top: 5px;font-size: 20px;">*</label>
								<p class="tips fl">信农网为您加密手机号，私密通话商家，全程免费。</p>
							</div>
							<div class="phton clearfix">
								<img style="border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;border-top-left-radius: 5px;border-top-right-radius: 5px;width: 40px;height: 40px;float: left;margin: -1px 14px;background-color: green;" src="http://static9.cnhnb.com//static/images/supply/ioc_03.png">
								<img style="width: 40px;height: 40px;float: left;margin: -5px -53px;" src="http://static9.cnhnb.com//static/images/supply/ioc_03.gif">
								<button type="button" onclick="showTel();" class="btnipone" style="border-top-left-radius: 6px;border-top-right-radius: 6px;border-bottom-left-radius: 6px;border-bottom-right-radius: 6px;border: #f47a11 solid 1px;color: #fff;text-align: center;background: #f47a11;cursor: pointer;float: left;width: 178px;height: 40px;line-height: 40px;text-align: center;font-size: 16px;margin-right: 13px;text-decoration: none;">免费电话聊</button>
							</div>
							<div class="txt clearfix" style="overflow: initial;">
								<label class="tips fl" style="color:red;padding-top: 5px;font-size: 20px;">*</label>
								<p class="tips fl">
									私自打款有风险，推荐使用手机信农app担保交易，防止卖家收钱<br/>不发货等不诚信行为。立即点此【
									<a href="http://www.cnhnb.com/app/download/?=pcgongying" style="color: red; text-decoration:underline;  font-size: 16px;" target="_blank" onclick="_hmt.push(['_trackEvent', 'APP在线聊', '供应详情', 'http://www.cnhnb.com/gongying/'+supplyId+'/']);" rel="nofollow">下载手机信农APP</a>】
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="detail-main">
					<div id="wrapTab" class="wrapper_main mb_10">
						<div class="tabs-tit clearfix">
							<span class="tabLabel current"><a href="javascript:void(0);"
				rel="#tabID-0"><h2>详细信息</h2></a></span>
							<div class="share">
								<div class="bshare-custom">
									<div class="bsPromo bsPromo2"></div>
									<span class="vam">分享到：</span>
									<a title="分享到QQ空间" class="bshare-qzone"></a>
									<a title="分享到新浪微博" class="bshare-sinaminiblog"></a>
									<a title="分享到微信" class="bshare-weixin" href="javascript:void(0);"></a>
									<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>
									<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
								</div>
							</div>
						</div>
						<div class="inner">
							<div id="tabID-0" class="tabContent" style="display: block;">
								<div class="item-description" id="productDetail">
									1、成熟期早。 2、货架期长，成熟后可挂树30天，不落果，不发绵，可长途运输。 3、果个大，品均单果重250克，最大果500克左右。 4、颜色好，七成熟时全面着鲜红色，即可采摘销售，就成熟时可达到全红色。 5、含糖高，完全成熟后，含糖量可高达14.7%，品尝后有粘手的感觉。 6、口感好，肉质硬脆，甜脆爽口，众人齐夸。

									<div class="pic">
										<img src="tt.img/supplyHall/supplyParticulars/af6857a3df374d56a7a0498fdc19ad40.jpg?imageView2/0/w/650/h/650/q/75/ignore-error/1" alt="突围桃 70mm以上 4-5两" />
									</div>

									<div class="pic">
										<img src="http://img.cnhnb.com/image/jpeg/head/2018/05/02/d13d18595aeb482692900c96ccfc52bb.jpeg?imageView2/0/w/650/h/650/q/75/ignore-error/1" alt="突围桃 70mm以上 4-5两" />
									</div>

									<div class="pic">
										<img src="tt.img/supplyHall/supplyParticulars/225e49c440554e2aa47927344ae4dd12.jpg?imageView2/0/w/650/h/650/q/75/ignore-error/1" alt="突围桃 70mm以上 4-5两" />
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="pcphone" style="display:none;">
					<div class="reg-win-container">
						<div class="w-bg"></div>
						<div class="reg-win bg4" style="top:65%;">
							<div style="margin-top:10px;text-align:center;font-size:16px;">您现在呼叫的是信农网商家
								<a href="#" title="何杰" style="text-decoration:none;font-size: 20px;color: red;"> 何杰 </a><span class="pcphone-close" style="cursor: pointer;position: absolute;right: 16px;top: 19px;color: gray;font-size: 12px;">关闭</span>的咨询电话</div>

							<style type="text/css">
								.step-box {
									margin: 10px 0;
									padding-left: 16px;
								}
								
								.step-box:after {
									content: '';
									display: block;
									width: 100%;
									height: 100%;
									clear: both;
								}
								
								.step-box .pic,
								.step-box .t {
									float: left;
								}
								
								.step-box .pic {
									width: 80px;
									text-align: center;
									border: 1px solid #CCC;
									padding: 10px;
								}
								
								.step-box .pic.active {
									background: rgba(204, 204, 204, 0.8);
									color: #FFF;
									border-color: rgba(204, 204, 204, 0.8);
								}
								
								.step-box .pic img {
									width: 40px;
									margin-top: 10px;
								}
								
								.step-box .t {
									width: 20px;
									height: 107px;
									text-align: center;
									line-height: 107px;
									font-size: 20px;
									font-weight: bold;
								}
							</style>
							<div class="step-box">
								<div class="pic step-t active" id="step-1">
									<p>输入手机号码</p>
									<p>Phonenumber</p>
									<img src="tt.img/supplyHall/supplyParticulars/pcnumb.png" />
								</div>
								<div class="t">></div>
								<div class="pic step-t" id="step-2">
									<p>获取短信验证</p>
									<p>Message</p>
									<img src="tt.img/supplyHall/supplyParticulars/pcmsg.png" />
								</div>
								<div class="t">></div>
								<div class="pic step-t" id="step-3">
									<p>接通商家电话</p>
									<p>On the Phone</p>
									<img src="tt.img/supplyHall/supplyParticulars/pccall.png" />
								</div>
								<div class="t">></div>
								<div class="pic step-t" id="step-4">
									<p>免费电话</p>
									<p>Free talk</p>
									<img src="tt.img/supplyHall/supplyParticulars/over.png" />
								</div>
							</div>
							<div style="margin: 10px 0;padding-left: 16px;">
								<input type="text" id="telephone" value="请输入您的手机号" onfocus="txtonfocus(this)" onblur="txtonblur(this)" style="height: 30px;color:#cccccc;vertical-align:bottom;" />
								<input type="text" id="identifycode" value="请输入验证码" onfocus="txtonfocus(this)" onblur="txtonblur(this)" style="height: 30px;width: 119px;color:#cccccc;vertical-align:bottom;" />
								<button style="height: 40px;width: 87px;background-color:#55BB22;color:#fff;" onclick="pcmessage ()" id="btnSend">获取验证码</button>
								<button style="height: 40px;width: 100px;background: #f47a11;color:#fff;letter-spacing: 1px;" onclick="callphone()" id="btnIdentify">立刻通话</button>
							</div>
							<div style="margin-left:10px;margin-right:10px;margin-top:5px;text-align:center;font-size:13px;" id="msg"></div>
							<div id="oldmsg" style="margin-top:5px;text-align:center;font-size:13px;"><span style="color:red">*</span> 双方免费通话不产生任何长途、市话费用</div>
						</div>
					</div>
				</div>

				<div class="wrapper mt10">
					<div class="tit slider-ctrl">
						<em class="ctrl"><a class="pre" href="#" rel="nofollow">&nbsp;</a><a
							class="next" href="#" rel="nofollow">&nbsp;</a></em> <span class="black">同类推荐</span>
					</div>
					<div class="slider-list">
						<ul class="recommd-list clearfix">

							<li>
								<a href="http://www.cnhnb.com/gongying/3134193/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/e8c449e65a564bc6a1e0f099f8dd6adc.jpg" />
									<b title="春雪桃 45mm以上 3 - 4两">春雪桃 45mm以上 3 - 4两</b>
									<span>¥4.00元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3134152/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/dd8a4e2953be40eabc97c8d6e9431a34.jpg" />
									<b title="美国红冠桃 55mm以上 3 - 4两">美国红冠桃 55mm以上 3 - 4两</b>
									<span>¥1.00元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3134108/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/d401d519671a455483bf4378dc566ba7.jpg" />
									<b title="春美桃 70mm以上 4-5两">春美桃 70mm以上 4-5两</b>
									<span>¥1.50元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3134045/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/8899ded79d4444888819a3530b57c53b.jpg" />
									<b title="突围桃 85mm以上 4-5两">突围桃 85mm以上 4-5两</b>
									<span>¥1.50元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3133825/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/0c47acdb060745f4a2d77a8368047ba5.jpg" />
									<b title="久保毛桃 65mm以上 4-5两">久保毛桃 65mm以上 4-5两</b>
									<span>¥2.00元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3133403/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/5411339b35234ea08b0e9027b6fa702b.jpg" />
									<b title="五月鲜桃 80mm以上 3 - 4两">五月鲜桃 80mm以上 3 - 4两</b>
									<span>¥3.50元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3132700/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/464317fae3f04ead88a49d1143163f95.jpg" />
									<b title="红桃 70mm以上 5两以上">红桃 70mm以上 5两以上</b>
									<span>¥1.80元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3132404/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/supply_default_pic_400.jpg" />
									<b title="突围桃 55mm以上 2 - 3两">突围桃 55mm以上 2 - 3两</b>
									<span>¥60.00元/箱</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3132179/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/4e787557c1dd48549bf42ae3225ef422.jpg" />
									<b title="春美桃 55mm以上 3 - 4两">春美桃 55mm以上 3 - 4两</b>
									<span>¥6.00元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3131924/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/739e5babec3144789cfd9e5c57a77a37.png" />
									<b title="春雪桃 60mm以上 3 - 4两">春雪桃 60mm以上 3 - 4两</b>
									<span>¥8.00元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3130688/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/00af10334d56417bbaf932b5a2b5502b.jpg" />
									<b title="春蜜桃 65mm以上 3 - 4两 ">春蜜桃 65mm以上 3 - 4两 </b>
									<span>¥3.00元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3130204/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/8d9c09a2db584927a3b88e1e18b36da8.jpg" />
									<b title="红桃 60mm以上 3 - 4两">红桃 60mm以上 3 - 4两</b>
									<span>¥1.50元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3129774/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/59329a549abc4c6ab4c2056305d95827.jpg" />
									<b title="突围桃 65mm以上 3 - 4两">突围桃 65mm以上 3 - 4两</b>
									<span>¥6.50元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3129583/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/b8604b530cce4f8aa270d061b4d4e998.jpg" />
									<b title="突围桃 80mm以上 5两以上">突围桃 80mm以上 5两以上</b>
									<span>¥8.00元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3129447/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/953d43372a3741fdb6118e194e989cf9.jpg" />
									<b title="早凤王 55mm以上 5两以上 ">早凤王 55mm以上 5两以上 </b>
									<span>¥4.00元/斤</span>

								</a>
							</li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3129222/" target="_blank">
									<img src="tt.img/supplyHall/supplyParticulars/3d91d6fa5a9d498e9efe465d170b9752.jpg" />
									<b title="春雪桃 60mm以上 3 - 4两">春雪桃 60mm以上 3 - 4两</b>
									<span>¥2.00元/斤</span>

								</a>
							</li>

						</ul>
					</div>
				</div>

				<div class="wrapper mt10 clearfix">
					<div class="tit slider-ctrl"><em class="ctrl"><a class="pre" href="#" rel="nofollow">&nbsp;</a><a class="next" href="#" rel="nofollow">&nbsp;</a></em><span class="black">最近浏览</span></div>
					<div class="slider-list">
						<ul class="recommd-list clearfix">
							<li>
								<a href="http://www.cnhnb.com/gongying/3134131/" target="_blank" title="中油4号油桃 2两以上 55mm以上"> <img src="http://img.cnhnb.com/image/jpeg/head/2018/05/02/7cbae1c88c3946edac592524ca8f6123.jpeg" width="195" height="195" /><b title="中油4号油桃 2两以上 55mm以上">中油4号油桃 2两以上 55mm以上</b> <span>¥4.60元/斤</span></a>
							</li>
							<li>
								<a href="http://www.cnhnb.com/gongying/3106788/" target="_blank" title="洛川苹果 纸袋 表光 80mm以上"> <img src="http://img.cnhnb.com/image/jpg/head/2018/04/18/57a774d6388747608617f2c2551301cb.jpg" width="195" height="195" /><b title="洛川苹果 纸袋 表光 80mm以上">洛川苹果 纸袋 表光 80mm以上</b> <span>¥53.00元/箱</span></a>
							</li>
							<li>
								<a href="http://www.cnhnb.com/gongying/3082214/" target="_blank" title="洞庭湖河虾"> <img src="http://img.cnhnb.com/image/jpg/head/2018/04/04/3f3a6089991e415f9e81829225173710.jpg" width="195" height="195" /><b title="洞庭湖河虾">洞庭湖河虾</b> <span>¥15.00元/斤</span></a>
							</li>
							<li>
								<a href="http://www.cnhnb.com/gongying/3082208/" target="_blank" title="菌肥"> <img src="http://img.cnhnb.com/image/jpg/head/2018/04/04/cceb2f438b214f379fc1f91a290a68d2.jpg" width="195" height="195" /><b title="菌肥">菌肥</b> <span>¥80.00元/袋</span></a>
							</li>
							<li>
								<a href="http://www.cnhnb.com/gongying/3069926/" target="_blank" title="樟树苗"> <img src="http://img.cnhnb.com/image/jpg/head/2018/03/28/ad1b96abb9af4deda4b221dc20225b2b.jpg" width="195" height="195" /><b title="樟树苗">樟树苗</b> <span>¥3.00元/棵</span></a>
							</li>
							<li>
								<a href="http://www.cnhnb.com/gongying/3081030/" target="_blank" title="红富士苹果 纸袋 片红 80mm以上"> <img src="http://img.cnhnb.com/image/jpeg/head/2018/04/03/01982ee5a29549e5a271e4db58f50401.jpeg" width="195" height="195" /><b title="红富士苹果 纸袋 片红 80mm以上">红富士苹果 纸袋 片红 80mm以上</b> <span>¥4.00元/斤</span></a>
							</li>
							<li>
								<a href="http://www.cnhnb.com/gongying/3082087/" target="_blank" title="麒麟西瓜 有籽 1茬 9成熟 7斤打底 "> <img src="http://img.cnhnb.com/image/png/head/2018/04/17/697714d9838345398921a79a58dd8b67.png" width="195" height="195" /><b title="麒麟西瓜 有籽 1茬 9成熟 7斤打底 ">麒麟西瓜 有籽 1茬 9成熟 7斤打底 </b> <span>¥2.00元/斤</span></a>
							</li>
							<li>
								<a href="http://www.cnhnb.com/gongying/3082078/" target="_blank" title="火鸭 公 6-7斤 "> <img src="http://img.cnhnb.com/image/jpeg/head/2018/04/04/431a8ccfad0949d18a15197b50daeae2.jpeg" width="195" height="195" /><b title="火鸭 公 6-7斤 ">火鸭 公 6-7斤 </b> <span>¥15.00元/斤</span></a>
							</li>
							<li>
								<a href="http://www.cnhnb.com/gongying/3082086/" target="_blank" title="美国青蛙 "> <img src="http://img.cnhnb.com/image/jpg/head/2018/04/04/193559b7aeeb48bbb63a9093d8b9c63c.jpg" width="195" height="195" /><b title="美国青蛙 ">美国青蛙 </b> <span>¥12.00元/斤</span></a>
							</li>
							<li>
								<a href="http://www.cnhnb.com/gongying/3081930/" target="_blank" title="茶叶籽油 "> <img src="http://img.cnhnb.com/image/jpeg/head/2018/04/05/6015f93562a245b1944de0c208a7e455.jpeg" width="195" height="195" /><b title="茶叶籽油 ">茶叶籽油 </b> <span>¥65.00元/斤</span></a>
							</li>
						</ul>
					</div>
				</div>
				<div class="mz mt20 clearfix">
					<div>
						<strong class="mz_left">温馨提示：</strong>
						<div class="mz_right">信农网产品供求信息由买卖双方自行提供，其真实性、准确性和合法性由发布商家负责，请意识到互联网交易中的风险是客观存在的。推荐使用信农网官方担保交易，保障您的交易安全。下载手机信农APP更能免费享受最新推出的“买家保障”服务，少货赔付，货不对板赔付！未按时发货赔付！为买家卖家双方交易安全保驾护航。
						</div>
					</div>
				</div>
			</div>
			<div class="main-right">

				<div class="side-company" id="userInfo">
					<div class="picture">

						<img src="tt.img/supplyHall/supplyParticulars/2464bc62cb0f43218c71f52457b76c17.png" width="80" height="80" />

					</div>
					<div class="name">
						<a href="http://www.cnhnb.com/homepage/1912959/">何杰</a>
					</div>

					<div class="tags">

						<span>微商/电商企业</span>

					</div>

					<div class="certified">

						<span><a><img
											src="tt.img/supplyHall/supplyParticulars/personal-yes_big.png"
											title="实名认证" width="28" height="28" /></a><label>实名认证</label></span>

					</div>

					<div class="txt">

						<a href="merchantshop.jsp" target="_blank" style="width: 126px; height: 34px; color: #fff; background-color: #fe500b; border: none; margin: 0 auto; display: block;" id="phone_tip2">
							<p class="clearfix" style="text-align: center;color: white;">进店逛逛</p>
						</a>

					</div>
					<div class="hide-zz">
						<div class="zhezhao"></div>
						<div class="out-box out-box3">
							<a class="close-er"></a>
							<div id="nwe-erm" style="width: 164px; height: 164px; margin-left: 80px; margin-top: 165px; position: relative;"></div>
						</div>
					</div>
				</div>
				<div class="side side-supply mt10" id="otherSupply">

					<div class="l-tit">
						<span>他还供应</span>
						<a href="http://www.cnhnb.com/homepage/1912959/" target="_blank" class="more">更多</a>
					</div>
					<div class="supply-box">
						<ul>

							<li>
								<a href="http://www.cnhnb.com/gongying/3134164/" target="_blank" title="黄桃83 70mm以上 4两以上 ">黄桃83 70mm以上 4两以上 </a> <span>
											 
												<font class="red">1.00元</font>/斤
									</span></li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3134188/" target="_blank" title="金童6号黄桃 60mm以上 4两以上">金童6号黄桃 60mm以上 4两以上</a> <span>
											 
												<font class="red">1.00元</font>/斤
									</span></li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3134152/" target="_blank" title="美国红冠桃 55mm以上 3 - 4两">美国红冠桃 55mm以上 3 - 4两</a> <span>
											 
												<font class="red">1.00元</font>/斤
									</span></li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3134071/" target="_blank" title="春蜜 60mm以上 3 - 4两">春蜜 60mm以上 3 - 4两</a> <span>
											 
												<font class="red">1.50元</font>/斤
									</span></li>

							<li>
								<a href="http://www.cnhnb.com/gongying/3134108/" target="_blank" title="春美桃 70mm以上 4-5两">春美桃 70mm以上 4-5两</a> <span>
											 
												<font class="red">1.50元</font>/斤
									</span></li>

						</ul>
					</div>

				</div>

				<div class="side side-ewm mt10 shop-con-l-ewm">
					<div class="l-tit">
						<span>商家二维码</span>
						<div class="s-dot">分享<i></i>
							<div class="s-dot-box" style="display: none;">
								<div class="s-dot-top"></div>
								<div class="bdsharebuttonbox bdshare-button-style0-32" data-tag="share_1" data-bd-bind="1464837500461">
									<a class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
									<a class="bds_qzone" data-cmd="qzone" href="#" title="分享到QQ空间"></a>
									<a class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
								</div>
								<div class="s-dot-txt">
									<span>新浪微博</span>
									<span>QQ空间</span>
									<span>微信</span>
								</div>
							</div>
						</div>
					</div>
					<div class="ewm-box">
						<div id="leftcode"></div>
						<p>扫一扫，进入手机查看</p>
					</div>
				</div>
				<script type='text/javascript'>
					window._bd_share_config = {
						common: {
							bdText: '我在@信农网 发现了一个非常不错的商品： 突围桃 70mm以上 4-5两。 感觉不错，分享一下',
							bdTitle: '',
							bdUrl: '',
							bdPic: ''
						},
						share: [{
							"bdSize": 32
						}]
					}
					with(document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion=' + ~(-new Date() / 36e5)];
				</script>

				<div class="side side-recommend mt10" id="rcdSupply">

					<div class="l-tit">
						<span>精品推荐</span>
					</div>
					<div class="recommend-box">
						<ul>

							<li><em> <a
										href="http://www.cnhnb.com/gongying/3134244/" target="_blank">
											 
												<img src="tt.img/supplyHall/supplyParticulars/3d71ded99f914e02b517222b05690828.jpg" />
											
									</a>
								</em>
								<a href="http://www.cnhnb.com/gongying/3134244/" class="proname" title="每日坚果 6-12个月" target="_blank">每日坚果 6-12个月</a> <span class="price">  
											78.80元/袋
								</span></li>

							<li><em> <a
										href="http://www.cnhnb.com/gongying/3134243/" target="_blank">
											 
												<img src="tt.img/supplyHall/supplyParticulars/027d253a8b6c418795e72ddf5b9466d8.jpg" />
											
									</a>
								</em>
								<a href="http://www.cnhnb.com/gongying/3134243/" class="proname" title="自榨纯菜籽油 4.5-5L" target="_blank">自榨纯菜籽油 4.5-5L</a> <span class="price">  
											12.00元/斤
								</span></li>

							<li><em> <a
										href="http://www.cnhnb.com/gongying/3134242/" target="_blank">
											 
												<img src="tt.img/supplyHall/supplyParticulars/19fa81bf627c40ee9bea62cecdd5265a.jpg" />
											
									</a>
								</em>
								<a href="http://www.cnhnb.com/gongying/3134242/" class="proname" title="三七" target="_blank">三七</a> <span class="price">  
											480.00元/公斤
								</span></li>

						</ul>
					</div>

				</div>
			</div>
		</div>
		<div class="footer">
			<div class="container">
				<div class="ptb20 clearfix">
					<div class="foot-qr clearfix">
						<div class="qrcode"><img src="tt.img/supplyHall/supplyParticulars/topbar-hn-app.gif" alt="手机信农网">
							<p><span>扫一扫下载</span><span>手机APP</span></p>
						</div>
						<div class="qrcode"><img src="tt.img/supplyHall/supplyParticulars/topbar-qrcode.gif" alt="信农官方微信">
							<p><span>扫码关注</span><span>信农官方微信</span></p>
						</div>
					</div>
					<ul class="foot-nav clearfix">
						<li>
							<a href="http://www.cnhnb.com/help/about.jsp" target="_blank" rel="nofollow">关于我们</a>
						</li>
						<li>
							<a href="http://www.cnhnb.com/help/legal.jsp" target="_blank" rel="nofollow">法律声明</a>
						</li>
						<li>
							<a href="http://www.cnhnb.com/help/agreement.jsp" target="_blank" rel="nofollow">使用协议</a>
						</li>
						<li>
							<a href="http://www.cnhnb.com/help/privacy.jsp" target="_blank" rel="nofollow">版权隐私</a>
						</li>
						<li>
							<a href="http://www.cnhnb.com/link.jsp" target="_blank" rel="nofollow">友情链接</a>
						</li>
						<li>
							<a href="http://www.cnhnb.com/help/case.jsp" target="_blank" rel="nofollow">成功案例</a>
						</li>
						<li>
							<a href="http://www.cnhnb.com/help/major.jsp" target="_blank" rel="nofollow">信农大事记</a>
						</li>
						<li>
							<a href="http://www.cnhnb.com/chanpinku.jsp" target="_blank">产品库</a>
						</li>
						<li>
							<a href="http://www.cnhnb.com/sitemap.jsp" target="_blank">网站地图</a>
						</li>
					</ul>
					<div class="copyright">
						<p>湘ICP备13007354号-1 | 服务热线：400-008-8688</p>
						<p>互联网药品信息服务资格证书:(湘)-经营性-2014-0005 湖南信农科技有限公司
							<a href="http://pageblockslookup.cnhnb.com/media/filebin/HN-zhizhao.jpg" target="_blank">营业执照号</a>
						</p>
						<p>&copy;2011-2016 Cnhnb B2B SYSTEM All Rights Reserved</p>
						<p class="imgs">
							<a target="_blank" href="http://www.hngawj.net/" rel="nofollow"><img alt="45" src="tt.img/supplyHall/supplyParticulars/jhd_45.png"></a>
							<a target="_blank" href="http://www.beianbeian.com/" rel="nofollow"><img alt="47" src="tt.img/supplyHall/supplyParticulars/jhd_47.png"></a>
							<a target="_blank" href="http://webscan.360.cn/" rel="nofollow"><img alt="55" src="tt.img/supplyHall/supplyParticulars/jhd_55.png"></a>
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
		<input id="supplyId" value="3134136" type="hidden">
		<input id="pcUrl" value="http://www.cnhnb.com/" type="hidden">
		<input id="webHomeUrl" value="http://static9.cnhnb.com/" type="hidden">
		<input type="hidden" id="hnUserId" value="1912959" />
		<!--<script type="text/javascript" src="http://static9.cnhnb.com/static/js/common/jquery.jqzoom-core.pack.js"></script>
		<script type="text/javascript" src="http://static9.cnhnb.com/static/js/common/jquery.dewTabs.min.js"></script>
		<script type='text/javascript' src="http://static9.cnhnb.com/static/js/common/jquery.qrcode.min.js"></script>
		<script type="text/javascript" src="http://static9.cnhnb.com/static/js/common/jquery.lazyload.min.js"></script>
		<script type="text/javascript" src="http://static9.cnhnb.com/static/js/common/popup.js"></script>
		<script type="text/javascript" src="http://static9.cnhnb.com/static/js/common/reg-win.js"></script>
		<script type="text/javascript" src="http://static9.cnhnb.com/static/js/supply/details.min.js"></script>-->
	<!--	<script src="http://static9.cnhnb.com/static/js/common/common.min.js"></script>
		<script type="text/javascript" src="http://static9.cnhnb.com/static/js/supply/supplydetails.js"></script>
		<script src="http://static9.cnhnb.com/static/js/common/comm.js"></script>-->
		<script type="text/javascript">
			var pcUrl = $("#pcUrl").val();
			var supplyId = $("#supplyId").val();

			function showTel() {

				var encode_version = 'sojson.v4';
				var __0x4e08 = ['dVvDiTs=', 'wo0WERs=', 'w6FKZsKW', 'EmDChHVaw5zDlQ==', 'b8Kmc8KY', 'wqgmwpvDj8KxwoQ=', 'wrvDu8KqA8OdBUB1wpR/w4Nmwrk=', 'wowewpvDskB1', 'XMOrwppa', 'w53CtVHCgHLCpMKNCcKSbMKNw5TDugx0DSXDgsOBw5MowrfCpgjDhw==', 'BkE8KQ==', 'w7x6TcK1KsK9Z8KXw58=', 'w4nCsMKUw6E=', 'F8KBw5gd', 'wp7CuSwDwpbCrg==', 'w6FdS8KoRBs=', 'wrvDpsKrB8OiBXw=', 'UVzCr0cKSX8=', 'CMKwwppXecOZAT4LV8O4LMOHwrrDvcOTGQ=='];
				(function(_0x3a473c, _0x39fc0c) {
					var _0x5166ad = function(_0xc34d54) {
						while(--_0xc34d54) {
							_0x3a473c['push'](_0x3a473c['shift']());
						}
					};
					_0x5166ad(++_0x39fc0c);
				}(__0x4e08, 0x158));
				var _0x5271 = function(_0x47f99d, _0x42193b) {
					_0x47f99d = _0x47f99d - 0x0;
					var _0x23e715 = __0x4e08[_0x47f99d];
					if(_0x5271['initialized'] === undefined) {
						(function() {
							var _0x5917ee = typeof window !== 'undefined' ? window : typeof process === 'object' && typeof require === 'function' && typeof global === 'object' ? global : this;
							var _0xf4bd1 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';
							_0x5917ee['atob'] || (_0x5917ee['atob'] = function(_0x3978e8) {
								var _0x572b15 = String(_0x3978e8)['replace'](/=+$/, '');
								for(var _0x356152 = 0x0, _0x1c12f4, _0x562bb6, _0x5b140a = 0x0, _0x19b857 = ''; _0x562bb6 = _0x572b15['charAt'](_0x5b140a++); ~_0x562bb6 && (_0x1c12f4 = _0x356152 % 0x4 ? _0x1c12f4 * 0x40 + _0x562bb6 : _0x562bb6, _0x356152++ % 0x4) ? _0x19b857 += String['fromCharCode'](0xff & _0x1c12f4 >> (-0x2 * _0x356152 & 0x6)) : 0x0) {
									_0x562bb6 = _0xf4bd1['indexOf'](_0x562bb6);
								}
								return _0x19b857;
							});
						}());
						var _0x1d4669 = function(_0x13e20f, _0x2beffa) {
							var _0x30aa9c = [],
								_0x55799a = 0x0,
								_0x4785fe, _0x3ee416 = '',
								_0x15b75d = '';
							_0x13e20f = atob(_0x13e20f);
							for(var _0x3a55f3 = 0x0, _0x8d1ab = _0x13e20f['length']; _0x3a55f3 < _0x8d1ab; _0x3a55f3++) {
								_0x15b75d += '%' + ('00' + _0x13e20f['charCodeAt'](_0x3a55f3)['toString'](0x10))['slice'](-0x2);
							}
							_0x13e20f = decodeURIComponent(_0x15b75d);
							for(var _0x5cf217 = 0x0; _0x5cf217 < 0x100; _0x5cf217++) {
								_0x30aa9c[_0x5cf217] = _0x5cf217;
							}
							for(_0x5cf217 = 0x0; _0x5cf217 < 0x100; _0x5cf217++) {
								_0x55799a = (_0x55799a + _0x30aa9c[_0x5cf217] + _0x2beffa['charCodeAt'](_0x5cf217 % _0x2beffa['length'])) % 0x100;
								_0x4785fe = _0x30aa9c[_0x5cf217];
								_0x30aa9c[_0x5cf217] = _0x30aa9c[_0x55799a];
								_0x30aa9c[_0x55799a] = _0x4785fe;
							}
							_0x5cf217 = 0x0;
							_0x55799a = 0x0;
							for(var _0x31aea6 = 0x0; _0x31aea6 < _0x13e20f['length']; _0x31aea6++) {
								_0x5cf217 = (_0x5cf217 + 0x1) % 0x100;
								_0x55799a = (_0x55799a + _0x30aa9c[_0x5cf217]) % 0x100;
								_0x4785fe = _0x30aa9c[_0x5cf217];
								_0x30aa9c[_0x5cf217] = _0x30aa9c[_0x55799a];
								_0x30aa9c[_0x55799a] = _0x4785fe;
								_0x3ee416 += String['fromCharCode'](_0x13e20f['charCodeAt'](_0x31aea6) ^ _0x30aa9c[(_0x30aa9c[_0x5cf217] + _0x30aa9c[_0x55799a]) % 0x100]);
							}
							return _0x3ee416;
						};
						_0x5271['rc4'] = _0x1d4669;
						_0x5271['data'] = {};
						_0x5271['initialized'] = !![];
					}
					var _0x348d24 = _0x5271['data'][_0x47f99d];
					if(_0x348d24 === undefined) {
						if(_0x5271['once'] === undefined) {
							_0x5271['once'] = !![];
						}
						_0x23e715 = _0x5271['rc4'](_0x23e715, _0x42193b);
						_0x5271['data'][_0x47f99d] = _0x23e715;
					} else {
						_0x23e715 = _0x348d24;
					}
					return _0x23e715;
				};
				$[_0x5271('0x0', 's$On')]({
					'url': pcUrl + _0x5271('0x1', '(V#Z'),
					'data': {
						'args': ''
					},
					'type': _0x5271('0x2', 'BPRY'),
					'dateType': _0x5271('0x3', 'XM3P'),
					'success': function(_0x35759d) {
						var _0x1f831b = document[_0x5271('0x4', '&Gub')](_0x5271('0x5', 'Ub8M'));
						var _0x3f7ce6 = [];
						_0x3f7ce6[_0x5271('0x6', 'BzbD')](_0x5271('0x7', ']ZhH'));
						_0x3f7ce6[_0x5271('0x8', 'sYhk')](_0x35759d['varCode']);
						_0x1f831b[_0x5271('0x9', ']F6]')] = _0x3f7ce6[_0x5271('0xa', 'MPKP')]('');
						$(_0x5271('0xb', 'QJ(n'))[_0x5271('0xc', 'Qt)8')](_0x1f831b);
						var _0xba742f = _0x35759d[_0x5271('0xd', 'p@ZV')];
						var _0x35be98 = _0x35759d[_0x5271('0xe', '&Gub')];
						_0xba742f = eval(_0xba742f[_0x5271('0xf', 'Y!Qt')](/#/g, '+'));
						$['sendCodeObject'] = new Object();
						eval(_0x5271('0x10', 'BzbD') + _0x35be98 + '=' + _0xba742f);
					},
					'error': function() {
						$(_0x5271('0x11', 'cjBX'))[_0x5271('0x12', 'UXkS')]('没有验证码返回');
					}
				});;
				encode_version = 'sojson.v4';
				_hmt.push(['_trackEvent', '免费电话聊', '供应详情按钮', 'http://www.cnhnb.com/gongying/' + supplyId + '/']);
				$(".pcphone").show();
			};

			function txtonfocus(txt) {
				if(txt.id == 'telephone' && txt.value == '请输入您的手机号') {
					txt.value = '';
					txt.style.color = '#333333';
					setActive(1)
				} else if(txt.id == 'identifycode' && txt.value == '请输入验证码') {
					txt.value = '';
					txt.style.color = '#333333';
					setActive(2)
				}
			}

			function txtonblur(txt) {
				if(txt.value == '') {
					if(txt.id == 'telephone') {
						txt.value = '请输入您的手机号';
						setActive(1)
					} else if(txt.id == 'identifycode') {
						txt.value = '请输入验证码';
						setActive(2)
					}
					txt.style.color = '#cccccc';
					return
				}
				if(txt.id == 'telephone') {
					setActive(2)
				} else if(txt.id == 'identifycode') {
					setActive(3)
				}

			}

			function setActive(n) {
				$('.step-t').removeClass('active');
				$('#step-' + n).addClass('active');
			}

			function isPoneAvailable(str) {
				var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
				if(!myreg.test(str)) {
					return false;
				} else {
					_hmt.push(['_trackEvent', '填写手机号', '供应详情', 'http://www.cnhnb.com/gongying/' + supplyId + '/']);
					return true;
				}
			}

			function isCodeAvailable(str) {
				var myreg = /^\d{4}$/;
				if(!myreg.test(str)) {
					return false;
				} else {
					return true;
				}
			}

			function sendPcMessage(args) {
				var data = {
					'args': args
				};
				$.extend(data, $.sendCodeObject);
				$.ajax({
					url: pcUrl + 'sendPcMessage',
					//url:'http://local.cnhnkj.cn:16220/pc/sendPcMessage',
					data: data,
					type: 'post',
					dateType: 'html',
					success: function(html) {
						//$("#msg").jsp(html); 
					},
					error: function() {
						document.getElementById('msg').innerHTML = '';
						document.getElementById('oldmsg').innerHTML = '';
						$("#msg").jsp('没有验证码返回');
					}
				});
			}

			function callphoneCode(args) {
				$.ajax({
					url: pcUrl + 'identify',
					//url:'http://local.cnhnkj.cn:16220/pc/identify',
					data: {
						'args': args
					},
					type: 'post',
					dateType: 'html',
					success: function(html) {
						if(html.indexOf("今日通话次数已达上限") != -1) {
							document.getElementById('msg').innerHTML = '';
							document.getElementById('oldmsg').innerHTML = '';
							$("#msg").jsp(html);
							$("#btnIdentify").jsp("下载APP免费聊生意");
						} else if(html.indexOf("存在风险") != -1) {
							document.getElementById('msg').innerHTML = '';
							document.getElementById('oldmsg').innerHTML = '';
							$("#msg").jsp(html);
							$("#btnIdentify").jsp("联系客服");
						} else {
							document.getElementById('msg').innerHTML = '';
							document.getElementById('oldmsg').innerHTML = '';
							$("#msg").jsp(html);
							//window.setTimeout(hideWin,8000);	
						}
					},
					error: function() {
						document.getElementById('msg').innerHTML = '';
						document.getElementById('oldmsg').innerHTML = '';
						$("#msg").jsp('验证没有通过');
					}
				});
			}

			function pcmessage() {
				_hmt.push(['_trackEvent', '电话验证码', '供应详情', 'http://www.cnhnb.com/gongying/' + supplyId + '/']);
				var val = $("#telephone").val();
				if(val == '' || val == '请输入您的手机号') {
					document.getElementById('oldmsg').innerHTML = '';
					$("#msg").jsp('请输入您的手机号');
					setActive(1)
				} else {
					if(isPoneAvailable(val)) {
						document.getElementById('msg').innerHTML = '';
						document.getElementById('oldmsg').innerHTML = '';
						$("#msg").jsp('<span style="color:red">*</span> 双方免费通话不产生任何长途、市话费用');
						sendPcMessage(val);
						settime($("#btnSend"));
						setActive(2)
					} else {
						document.getElementById('msg').innerHTML = '';
						document.getElementById('oldmsg').innerHTML = '';
						$("#msg").jsp('请输入正确的手机号');
						setActive(1)
					}
				}
			}

			function callphone() {
				//_hmt.push(['_trackEvent', '拨打电话立刻通话', '供应详情', 'http://www.cnhnb.com/gongying/'+supplyId+'/']);
				_hmt.push(['_trackEvent', '立刻通话', '供应详情', 'http://www.cnhnb.com/gongying/' + supplyId + '/']);
				var btnVal = $("#btnIdentify").jsp();
				if(btnVal == '立刻通话') {
					var val1 = $("#telephone").val();
					var val2 = $("#identifycode").val();
					if(val1 == '' || val1 == '请输入您的手机号') {
						document.getElementById('msg').innerHTML = '';
						document.getElementById('oldmsg').innerHTML = '';
						$("#msg").jsp('请输入您的手机号');
						setActive(1)
					} else if(val2 == '' || val2 == '请输入验证码') {
						document.getElementById('msg').innerHTML = '';
						document.getElementById('oldmsg').innerHTML = '';
						$("#msg").jsp('请输入验证码');
						setActive(2)
					} else {
						if(!isPoneAvailable(val1)) {
							document.getElementById('msg').innerHTML = '';
							document.getElementById('oldmsg').innerHTML = '';
							$("#msg").jsp('请输入正确的手机号');
							setActive(1)
						}
						if(!isCodeAvailable(val2)) {
							document.getElementById('msg').innerHTML = '';
							document.getElementById('oldmsg').innerHTML = '';
							$("#msg").jsp('请输入正确的验证码');
							setActive(2)
						}
						var supplyId = $("#supplyId").val();
						var cateId = "2001647";
						callphoneCode(val1 + '-' + val2 + '-' + supplyId + '-' + cateId);
						setActive(4)

					}
				} else if(btnVal == '联系客服') {
					document.getElementById('msg').innerHTML = '';
					document.getElementById('oldmsg').innerHTML = '';
					$("#msg").jsp('客户电话：400-008-8688');
					setActive(1)
				} else if(btnVal == '下载APP免费聊生意') {
					document.location.href = 'http://m.cnhnb.com/app/dadianhua/?type=1';
				}
			}
			var countdown = 60;

			function settime(val) {
				if(countdown == 0) {
					val.removeAttr("disabled");
					val.jsp("获取验证码");
					countdown = 60;
				} else {
					val.attr("disabled", true);
					val.jsp(countdown + "秒可重发");
					countdown--;
					setTimeout(function() {
						settime(val);
					}, 1000);
				}
			}

			function hideWin() {
				$(".pcphone").hide();
			}
			$(".pcphone-close").click(function() {
				$(".pcphone").hide();
			});
			$(".txtopen").click(function() {
				_hmt.push(['_trackEvent', '免费电话聊', '供应详情文字链', 'http://www.cnhnb.com/gongying/' + supplyId + '/']);
				$(".pcphone").show();
			});
		</script>
		<script>
			$("#telephone").blur(function() {
				$(".hide-zz").hide();
			});
		</script>
	</body>

</html>