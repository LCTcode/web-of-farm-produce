<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
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
<meta name="mobile-agent" content="format=html5;url=http://m.cnhnb.com/supply/">
<link rel="alternate" media="only screen and (max-width: 640px)" href="http://m.cnhnb.com/supply/">
<link rel="canonical"  href="http://www.cnhnb.com/supply/"/>
<title>你农我农</title>
<meta name="keywords" content="农产品报价,农产品供应商,农产品价格行情,农产品交易" />
<meta name="description" content="信农网供应大厅汇聚中国各产地农产品供应商，每日更新农产品产地报价，以及各地价格行情，产地报价更真实更实惠，是国内专业的农产品买卖交易平台。" />
<link href="tt.css/base.css" type="text/css"
	rel="stylesheet" />

<link href="tt.css/common.css" type="text/css"
	rel="stylesheet" />
<link href="tt.css/supply/search/base.css"
	type="text/css" rel="stylesheet" />

<link href="tt.css/supply/search/style.css"
	type="text/css" rel="stylesheet" />

<link href="tt.css/supply/search/reset.css"
	type="text/css" rel="stylesheet" />

<link href="tt.css/supply/search/list.css"
	type="text/css" rel="stylesheet" />

<link href="tt.css/supply/search/notfound.css"
	type="text/css" rel="stylesheet" />

<link rel="shortcut icon" type="image/x-icon"
	href="tt.img/supplyHall/supplyHallInterface/favicon.ico" />

<script type="text/javascript"
	src="tt.js/jquery-1.7.2.min.js"></script>
</head>
<body>
	<input type="hidden" id="webHomeUrl" value="http://static9.cnhnb.com/" />
	<input type="hidden" id="pcUrl" value="http://www.cnhnb.com/" />
	<input type="hidden" id="cateId1"
		value="" />
	<input type="hidden" id="cateId2"
		value="" />
	<input type="hidden" id="cateId3"
		value="" />
	<div class="topbar"><div class="container clearfix">
	<ul class="top-login fl">
      <li>
      <ul class="fl">
	      <li class="label orange">您好，欢迎来到信农网</li>
	  </ul>
	  </li>
    </ul>
    <ul class="top-nav fr">
      <li class="pngfix" id="hn_home_id" >
        <div class="label"><a  href="http://www.cnhnb.com" target="_blank">网站首页</a></div>
      </li>
      <li class="pngfix" id="hn_home_id" >
        <div class="label"><a  href="#" target="_blank">触屏版</a></div>
      </li>
      <li class="dropdown pngfix">
        <div class="dropdown-label"><i>&nbsp;</i><span><a href="#" target="_blank" rel="nofollow">手机信农</a></span></div>
        <div class="dropdown-layer dd-hn-qrcode">
          <div class="qrcode"><img src="http:tt.img/supplyHall/supplyHallInterface/topbar-hn-app.gif" alt="手机信农网">
            <p><span>扫一扫下载</span><span>手机APP</span></p>
          </div>
        </div>
      </li>
      <li class="dropdown pngfix">
        <div class="dropdown-label"><i>&nbsp;</i><span>关注信农</span></div>
        <div class="dropdown-layer dd-hn-qrcode">
          <div class="qrcode"><img src="http:tt.img/supplyHall/supplyHallInterface/topbar-qrcode.gif" alt="信农官方微信">
            <p><span>扫码关注</span><span>信农官方微信</span></p>
          </div>
        </div>
      </li>
      <li class="dropdown pngfix">
        <div class="dropdown-label"><i>&nbsp;</i><span><a href="#" target="_blank" rel="nofollow">帮助中心</a></span></div>
        <div class="dropdown-layer dd-help-center">
          <p><a href="http://help.cnhnb.com/problem/" target="_blank" rel="nofollow">常见问题</a><a href="#" target="_blank" rel="nofollow">联系客服</a></p>
        </div>
      </li>
    </ul>
  </div>
</div>
	 <div id="J-global-toolbar">
      <div class="hn-toolbar-wrap">
        <div class="hn-toolbar">
          <div class="hn-toolbar-tabs">
            <div class="hn-toolbar-tab hn-tbar-tab-mine"><a target="_blank" href="http://hnuser.cnhnb.com/myhn/index" rel="nofollow"><div class="tab-ico"></div><em class="tab-text"> 我的信农</em></a></div>
            <div class="hn-toolbar-tab hn-tbar-tab-supply"><a target="_blank" href="supplyManagement.jsp" rel="nofollow"><div class="tab-ico"></div><em class="tab-text"> 发供应</em></a></div>
            <div class="hn-toolbar-tab hn-tbar-tab-purchase"><a target="_blank" href="lssueProcurement.jsp" rel="nofollow"><div class="tab-ico"></div><em class="tab-text"> 发采购</em></a></div>
           <div class="hn-toolbar-tab hn-tbar-tab-service"><a target="_blank" href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODAxNDQxNl80NDEzNTBfNDAwMDA4ODY4OF8yXw" rel="nofollow"><div class="tab-ico"></div><em class="tab-text"> 在线客服</em></a></div>
           <div class="hn-toolbar-tab hn-tbar-tab-im"><div class="tab-ico" style="background: url(http://im.cnhnb.com/images/im/mes_icon.png) 7px 50% no-repeat rgb(102, 102, 102);"></div><em class="tab-text">在线咨询</em></div>
          </div>
          <div class="hn-toolbar-footer">
 
            <div class="hn-toolbar-tab hn-tbar-tab-qrcode"><a href="#" target="_blank"><div class="tab-ico"></div>
                <div class="tab-text tab-expand pt10">
                  <div class="qrcode mb5"><img src="http:tt.img/supplyHall/supplyHallInterface/topbar-hn-app.gif" alt="手机信农网">
                    <p><span>扫一扫下载</span><span>手机APP</span></p>
                  </div>
                  <div class="qrcode"><img src="http:tt.img/supplyHall/supplyHallInterface/topbar-qrcode.gif" alt="信农官方微信">
                    <p><span>扫码关注</span><span>信农官方微信</span></p>
                  </div>
                </div></a></div>
            <div class="hn-toolbar-tab hn-tbar-tab-top"><a href="#"><div class="tab-ico"></div><em class="tab-text">顶部</em></a></div>
          </div>
        </div>
      </div>
    </div>
	
<div class="header">
	<div class="container">
    <h1 class="site-name">信农网</h1>
    <div class="site-logo fl"><a href="http://www.cnhnb.com" target="_blank"  title="首页"><img src="http:tt.img/supplyHall/supplyHallInterface/logo_1.jpg" alt="信农网" width="388" height="123"></a></div>
    <div class="site-search">
    <script type="text/javascript">(function(){document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E'));var bdcs = document.createElement('script');bdcs.type = 'text/javascript';bdcs.async = true;bdcs.src = 'http://znsv.baidu.com/customer_search/api/js?sid=10574831926042027212' + '&plate_url=' + encodeURIComponent(window.location.href) + '&t=' + Math.ceil(new Date()/3600000);var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(bdcs, s);})();</script>
    </div>
    <div class="clear"></div>
</div>
	

<div class="main-nav">
    <div class="container">
      <h2 class="hidden">信农市场</h2>
      <div class="quick-start">
      	<a href="http://www.cnhnb.com/app/download/" target="_blank" class="hn-app">手机信农</a>
      	<div class="code-index-as" style="display: none;">
	              <img src="http://static.cnhnkj.cn/4.0/images/common/index-code.png" alt="">
	              <div>扫一扫下载</div>
	              <div>手机APP</div>
	      </div>
      </div>
      <ul class="clearfix">
   




<li><a href="#" target="_blank">首  页</a></li>




<li class="current"><a href="supplyHall.jsp" target="_blank">供应大厅</a></li>




<li><a href="procurementHall.jsp" target="_blank">采购大厅</a></li>




<li><a href="#" target="_blank">行情大厅</a></li>




<li><a href="#" target="_blank">行业资讯</a></li>




<li><a href="#" target="_blank">产业带</a></li>




<li><a href="#" target="_blank">信农学堂</a></li>


      </ul>
    </div>
  </div>


</div>

	<hr class="hr01" />
	<div class="wapper-w1190 clearfix">
		<div class="a-img">
			
<a href="http://www.cnhnb.com/zhuanti/pigzt/" target="_target" title="点击进入页面" rel="nofollow" phptag="GY01"> 
<img src="tt.img/supplyHall/supplyHallInterface/F27433RC53ChRkRlrBmiaAQDfQAAD0sABmj_4839.jpg" alt="这是一张猪仔的展示图片" width="1190" height="90"/>
</a>

		</div>
		<div class="container fl">
			<div class="category-select">
				
					<div class="category-1 clearfix">
						<ul id="category_ul">
							<li class="li-1o1n nobor"
								cateId="">全部</li>
							<li
								class="li-2"
								cateId="2000001">水果</li>
							<li
								class="li-3"
								cateId="2000002">蔬菜</li>
							<li
								class="li-4"
								cateId="2000003">畜牧水产</li>
							<li
								class="li-5"
								cateId="2000004">粮油米面</li>
							<li
								class="li-6"
								cateId="2000005">农副加工</li>
							<li
								class="li-7"
								cateId="2000006">苗木花草</li>
							<li
								class="li-8"
								cateId="2000008">农资农机</li>
						</ul>
					</div>
					<div class="category-2 clearfix" id="cate2_div"
						style="display: none;"></div>
					<div class="category-3 clearfix" style="display: none;"
						id="cate3_div"></div>
				
				
			</div>
			<div class="list-conatiner minH500 mt_20" id="imgList">
				<ul class="img-list clearfix">
					
						
							<ul class="img-list clearfix">
								
									<li><a href="supplyParticulars.jsp" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/af6857a3df374d56a7a0498fdc19ad40.jpg"
														alt="湖北省荆门市京山县突围桃 70mm以上 4-5两"
														title="湖北省荆门市京山县突围桃 70mm以上 4-5两" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">1.5元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134136/" class="text"
										target="_blank"> 
											
												<span class="proname">突围桃 70mm以上 4-5两</span>
											
									</a> <span class="breed">突围桃,70mm以上 4-5两</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/1912959/" target="_blank">何杰</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">湖北省荆门市京山县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134135/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/ae3e0035e2fb4c5aaf9625d968c08226.jpg"
														alt="广东省广州市花都区淡水石斑 人工殖养 0.5公斤以下"
														title="广东省广州市花都区淡水石斑 人工殖养 0.5公斤以下" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">0.9元/尾
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134135/" class="text"
										target="_blank"> 
											
												<span class="proname">淡水石斑 人工殖养 0.5公斤以下</span>
											
									</a> <span class="breed">淡水石斑,0.5公斤以下 人工殖养</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2291714/" target="_blank">李海怡</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">广东省广州市花都区</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134134/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/b8adc7a51f8645f6bea017ab1c6ef557.jpg"
														alt="山东省济宁市微山县中国龙虾 国产 0.4斤/只以下"
														title="山东省济宁市微山县中国龙虾 国产 0.4斤/只以下" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">27元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134134/" class="text"
										target="_blank"> 
											
												<span class="proname">中国龙虾 国产 0.4斤/只以下</span>
											
									</a> <span class="breed">中国龙虾,国产 0.4斤/只以下</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2221575/" target="_blank">吴志红</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">山东省济宁市微山县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134133/" class="img"
										target="_blank"> 
												
												
													<img src="http://img.cnhnb.com/image/png/head/2018/05/02/1526957aefd84edc92aee6608b7932e6.png"
														alt="广西壮族自治区南宁市兴宁区脱温火鸡苗"
														title="广西壮族自治区南宁市兴宁区脱温火鸡苗" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">25元/只
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134133/" class="text"
										target="_blank"> 
											
												<span class="proname">脱温火鸡苗</span>
											
									</a> <span class="breed"></span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/1267409/" target="_blank">田茂君</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">广西壮族自治区南宁市兴宁区</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134132/" class="img"
										target="_blank"> 
												
												
													<img src="http://img.cnhnb.com/image/png/head/2018/05/02/ae8e0dfc248b4f49bba56ce4d1cd30d1.png"
														alt="河北省邢台市临西县绿帽蒜苔 一茬 30~40cm 通货"
														title="河北省邢台市临西县绿帽蒜苔 一茬 30~40cm 通货" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">1元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134132/" class="text"
										target="_blank"> 
											
												<span class="proname">绿帽蒜苔 一茬 30~40cm 通货</span>
											
									</a> <span class="breed">绿帽蒜苔,30~40cm 一茬 通货</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2294251/" target="_blank">尹周</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">河北省邢台市临西县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134131/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/7cbae1c88c3946edac592524ca8f6123.jpeg"
														alt="河北省邢台市威县中油4号油桃 2两以上 55mm以上"
														title="河北省邢台市威县中油4号油桃 2两以上 55mm以上" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">4.6元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134131/" class="text"
										target="_blank"> 
											
												<span class="proname">中油4号油桃 2两以上 55mm以上</span>
											
									</a> <span class="breed">中油4号油桃,2两以上 55mm以上</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/1888114/" target="_blank">高桂鹏</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">河北省邢台市威县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134130/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/10a56efa21654aa9a9e86a767ce4cbd1.jpg"
														alt="江西省抚州市广昌县广昌3号茶树菇 6~8cm"
														title="江西省抚州市广昌县广昌3号茶树菇 6~8cm" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">32元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134130/" class="text"
										target="_blank"> 
											
												<span class="proname">广昌3号茶树菇 6~8cm</span>
											
									</a> <span class="breed">广昌3号茶树菇,6~8cm</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2292398/" target="_blank">邓金凤</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">江西省抚州市广昌县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134129/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/5aaafd3f68694fa1aaa4b0c613084408.jpg"
														alt="广西壮族自治区来宾市合山市生态黑豚鼠"
														title="广西壮族自治区来宾市合山市生态黑豚鼠" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">40元/只
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134129/" class="text"
										target="_blank"> 
											
												<span class="proname">生态黑豚鼠</span>
											
									</a> <span class="breed">生态黑豚鼠</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2269356/" target="_blank">罗利飞</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">广西壮族自治区来宾市合山市</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134128/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/164129fc36504d8786829534a40968f3.jpg"
														alt="重庆大足区农家土鹅 统货 全散养 6-8斤"
														title="重庆大足区农家土鹅 统货 全散养 6-8斤" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">14元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134128/" class="text"
										target="_blank"> 
											
												<span class="proname">农家土鹅 统货 全散养 6-8斤</span>
											
									</a> <span class="breed">农家土鹅,6-8斤 统货 全散养</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2294268/" target="_blank">李朝东</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">重庆大足区</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134127/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/dc806091e8bd47198205ed55500f9a1c.jpg"
														alt="河南省信阳市罗山县青壳小龙虾 人工殖养 4-6钱"
														title="河南省信阳市罗山县青壳小龙虾 人工殖养 4-6钱" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">14元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134127/" class="text"
										target="_blank"> 
											
												<span class="proname">青壳小龙虾 人工殖养 4-6钱</span>
											
									</a> <span class="breed">青壳小龙虾,4-6钱 人工殖养</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2273718/" target="_blank">吴忠奎</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">河南省信阳市罗山县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134126/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/71b967587ae84d54863812353018c1fb.jpg"
														alt="河南省信阳市罗山县青壳小龙虾 人工殖养 4-6钱"
														title="河南省信阳市罗山县青壳小龙虾 人工殖养 4-6钱" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">14元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134126/" class="text"
										target="_blank"> 
											
												<span class="proname">青壳小龙虾 人工殖养 4-6钱</span>
											
									</a> <span class="breed">青壳小龙虾,4-6钱 人工殖养</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2273718/" target="_blank">吴忠奎</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">河南省信阳市罗山县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134125/" class="img"
										target="_blank"> 
												
												
													<img src="http://img.cnhnb.com/image/png/head/2018/05/02/3b2949ff69254571b696ad5adcba3c14.png"
														alt="广东省江门市台山市黄骨鱼苗"
														title="广东省江门市台山市黄骨鱼苗" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">0.2元/尾
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134125/" class="text"
										target="_blank"> 
											
												<span class="proname">黄骨鱼苗</span>
											
									</a> <span class="breed">黄骨鱼苗</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/802589/" target="_blank">陈生</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">广东省江门市台山市</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134123/" class="img"
										target="_blank"> 
												
												
													<img src="http://img.cnhnb.com/image/png/head/2018/05/02/7382b32ee49a4a15b45e11d271f8f4cc.png"
														alt="陕西省渭南市富平县槐花蜜 塑料瓶装 98% 2年"
														title="陕西省渭南市富平县槐花蜜 塑料瓶装 98% 2年" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">45元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134123/" class="text"
										target="_blank"> 
											
												<span class="proname">槐花蜜 塑料瓶装 98% 2年</span>
											
									</a> <span class="breed">槐花蜜,98% 2年 塑料瓶装</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/885157/" target="_blank">徐冬冬</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">陕西省渭南市富平县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134122/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/bb61befb1195497884f5a20976b60955.jpeg"
														alt="安徽省池州市东至县自榨纯菜籽油 4.5-5L"
														title="安徽省池州市东至县自榨纯菜籽油 4.5-5L" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">9元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134122/" class="text"
										target="_blank"> 
											
												<span class="proname">自榨纯菜籽油 4.5-5L</span>
											
									</a> <span class="breed">自榨纯菜籽油,4.5-5L</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/752948/" target="_blank">柴梦发</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">安徽省池州市东至县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134121/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/99dd67dc653145c5ad08146807a7204a.jpeg"
														alt="贵州省毕节市威宁彝族回族苗族自治县柴鸡 统货 3-4斤"
														title="贵州省毕节市威宁彝族回族苗族自治县柴鸡 统货 3-4斤" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">60元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134121/" class="text"
										target="_blank"> 
											
												<span class="proname">柴鸡 统货 3-4斤</span>
											
									</a> <span class="breed">柴鸡,统货 3-4斤</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2294248/" target="_blank">张荣战</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">贵州省毕节市威宁彝族回族苗族自治县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134120/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/e27cfd6e86c4471e8e7899e58558f06e.jpg"
														alt="河南省信阳市罗山县青壳小龙虾 人工殖养 4-6钱"
														title="河南省信阳市罗山县青壳小龙虾 人工殖养 4-6钱" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">14元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134120/" class="text"
										target="_blank"> 
											
												<span class="proname">青壳小龙虾 人工殖养 4-6钱</span>
											
									</a> <span class="breed">青壳小龙虾,4-6钱 人工殖养</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2273718/" target="_blank">吴忠奎</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">河南省信阳市罗山县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134119/" class="img"
										target="_blank"> 
												
												
													<img src="http://img.cnhnb.com/image/png/head/2018/05/02/ae8e0dfc248b4f49bba56ce4d1cd30d1.png"
														alt="河北省邢台市临西县绿帽蒜苔 一茬 30~40cm 通货"
														title="河北省邢台市临西县绿帽蒜苔 一茬 30~40cm 通货" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">1元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134119/" class="text"
										target="_blank"> 
											
												<span class="proname">绿帽蒜苔 一茬 30~40cm 通货</span>
											
									</a> <span class="breed">绿帽蒜苔,30~40cm 一茬 通货</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2294251/" target="_blank">蒜薹尹先生</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">河北省邢台市临西县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134118/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/8eefde5263434a9a964f26aab3891391.jpg"
														alt="湖南省邵阳市洞口县利木赞牛 800-1000斤 公牛"
														title="湖南省邵阳市洞口县利木赞牛 800-1000斤 公牛" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">50元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134118/" class="text"
										target="_blank"> 
											
												<span class="proname">利木赞牛 800-1000斤 公牛</span>
											
									</a> <span class="breed">利木赞牛,800-1000斤 公牛</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2294102/" target="_blank">刘荣春</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">湖南省邵阳市洞口县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134117/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/425347a43ea940d98925c23a268f0f97.jpg"
														alt="甘肃省武威市民勤县肉苁蓉"
														title="甘肃省武威市民勤县肉苁蓉" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">120元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134117/" class="text"
										target="_blank"> 
											
												<span class="proname">肉苁蓉</span>
											
									</a> <span class="breed"></span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2294241/" target="_blank">姜泳文</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">甘肃省武威市民勤县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134116/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/5fce303a701c4a37b03078ed95bc1f91.jpg"
														alt="湖北省潜江市潜江市清水小龙虾 人工殖养 4-6钱"
														title="湖北省潜江市潜江市清水小龙虾 人工殖养 4-6钱" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">17元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134116/" class="text"
										target="_blank"> 
											
												<span class="proname">清水小龙虾 人工殖养 4-6钱</span>
											
									</a> <span class="breed">清水小龙虾,4-6钱 人工殖养</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2241802/" target="_blank">马锦涛</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">湖北省潜江市潜江市</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134115/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/5a878f39b3424a3f9fb8ab756df3f2dd.jpg"
														alt="湖北省潜江市潜江市清水小龙虾 人工殖养 4-6钱"
														title="湖北省潜江市潜江市清水小龙虾 人工殖养 4-6钱" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">17元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134115/" class="text"
										target="_blank"> 
											
												<span class="proname">清水小龙虾 人工殖养 4-6钱</span>
											
									</a> <span class="breed">清水小龙虾,4-6钱 人工殖养</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2241802/" target="_blank">马锦涛</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">湖北省潜江市潜江市</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134114/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/a4d53622f3324a5a9f7cf669e75a0f72.jpg"
														alt="湖北省潜江市潜江市清水小龙虾 人工殖养 4-6钱"
														title="湖北省潜江市潜江市清水小龙虾 人工殖养 4-6钱" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">17元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134114/" class="text"
										target="_blank"> 
											
												<span class="proname">清水小龙虾 人工殖养 4-6钱</span>
											
									</a> <span class="breed">清水小龙虾,4-6钱 人工殖养</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2241802/" target="_blank">马锦涛</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">湖北省潜江市潜江市</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134113/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/b29a4cb14ec44e74a27330f5e3616b3c.jpg"
														alt="湖北省潜江市潜江市清水小龙虾 人工殖养 4-6钱"
														title="湖北省潜江市潜江市清水小龙虾 人工殖养 4-6钱" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">17元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134113/" class="text"
										target="_blank"> 
											
												<span class="proname">清水小龙虾 人工殖养 4-6钱</span>
											
									</a> <span class="breed">清水小龙虾,4-6钱 人工殖养</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2241802/" target="_blank">马锦涛</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">湖北省潜江市潜江市</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134112/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/c7511c8bfa83412ca48c7a607af23475.jpg"
														alt="广西壮族自治区崇左市凭祥市澳芒 10两以上"
														title="广西壮族自治区崇左市凭祥市澳芒 10两以上" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">4.4元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134112/" class="text"
										target="_blank"> 
											
												<span class="proname">澳芒 10两以上</span>
											
									</a> <span class="breed">澳芒,10两以上</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2293281/" target="_blank">韦杜娟</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">广西壮族自治区崇左市凭祥市</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134111/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/dfbaf050724440c08b838dc2d4773766.jpg"
														alt="云南省红河哈尼族彝族自治州元阳县有机肥"
														title="云南省红河哈尼族彝族自治州元阳县有机肥" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">12元/袋
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134111/" class="text"
										target="_blank"> 
											
												<span class="proname">有机肥</span>
											
									</a> <span class="breed">有机肥</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/914530/" target="_blank">余一</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">云南省红河哈尼族彝族自治州元阳县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134110/" class="img"
										target="_blank"> 
												
												
													<img src="http://img.cnhnb.com/image/png/head/2018/05/02/bbce799dc226454c882b2eaaba99f245.png"
														alt="四川省成都市邛崃市金丝楠木"
														title="四川省成都市邛崃市金丝楠木" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">18元/株
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134110/" class="text"
										target="_blank"> 
											
												<span class="proname">金丝楠木</span>
											
									</a> <span class="breed">金丝楠木</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2294155/" target="_blank">何成洪</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">四川省成都市邛崃市</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134109/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/a7d4e6e6e6544161baba0c8740540d91.jpg"
														alt="广西壮族自治区桂林市灵川县沙糖桔 3.5 - 4cm 1.5 - 2两"
														title="广西壮族自治区桂林市灵川县沙糖桔 3.5 - 4cm 1.5 - 2两" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">3元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134109/" class="text"
										target="_blank"> 
											
												<span class="proname">沙糖桔 3.5 - 4cm 1.5 - 2两</span>
											
									</a> <span class="breed">沙糖桔,3.5 - 4cm 1.5 - 2两</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/1926931/" target="_blank">蒋轶群</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">广西壮族自治区桂林市灵川县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134108/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/d401d519671a455483bf4378dc566ba7.jpg"
														alt="湖北省荆门市京山县春美桃 70mm以上 4-5两"
														title="湖北省荆门市京山县春美桃 70mm以上 4-5两" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">1.5元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134108/" class="text"
										target="_blank"> 
											
												<span class="proname">春美桃 70mm以上 4-5两</span>
											
									</a> <span class="breed">春美桃,70mm以上 4-5两</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/1912959/" target="_blank">何杰</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">湖北省荆门市京山县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134107/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/44db08ad85684bb4aa1546c1514830fb.jpg"
														alt="吉林省白山市抚松县北陆蓝莓 鲜果 10 - 12mm以上"
														title="吉林省白山市抚松县北陆蓝莓 鲜果 10 - 12mm以上" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">60元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134107/" class="text"
										target="_blank"> 
											
												<span class="proname">北陆蓝莓 鲜果 10 - 12mm以上</span>
											
									</a> <span class="breed">北陆蓝莓,10 - 12mm以上 鲜果</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2294227/" target="_blank">王慧</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">吉林省白山市抚松县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134106/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/0466802de1ec49c1a1741b4e36a28778.jpg"
														alt="广东省茂名市信宜市三华李 25 - 30mm"
														title="广东省茂名市信宜市三华李 25 - 30mm" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">10.6元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134106/" class="text"
										target="_blank"> 
											
												<span class="proname">三华李 25 - 30mm</span>
											
									</a> <span class="breed">三华李,25 - 30mm</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/964951/" target="_blank">张梅莲</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">广东省茂名市信宜市</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134105/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/52fae9839fca4673a5fd80c44ada8624.jpg"
														alt="山东省临沂市沂水县京欣西瓜 有籽 1茬 8成熟 8斤打底"
														title="山东省临沂市沂水县京欣西瓜 有籽 1茬 8成熟 8斤打底" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">1.2元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134105/" class="text"
										target="_blank"> 
											
												<span class="proname">京欣西瓜 有籽 1茬 8成熟 8斤打底</span>
											
									</a> <span class="breed">京欣西瓜,8斤打底 1茬 8成熟 有籽</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/1025793/" target="_blank">董凤波</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">山东省临沂市沂水县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134104/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/13def134a38f45c7b2ecd2080787771c.jpg"
														alt="浙江省嘉兴市平湖市柴犬"
														title="浙江省嘉兴市平湖市柴犬" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">3500元/条
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134104/" class="text"
										target="_blank"> 
											
												<span class="proname">柴犬</span>
											
									</a> <span class="breed">柴犬</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/1674198/" target="_blank">赵云成</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">浙江省嘉兴市平湖市</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134103/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/dd8c55c2168d45ce964ef7b07dc52ea9.jpg"
														alt="安徽省六安市霍邱县黄花粘大米 非有机大米 晚稻 一等品 "
														title="安徽省六安市霍邱县黄花粘大米 非有机大米 晚稻 一等品 " />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">2.26元/袋
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134103/" class="text"
										target="_blank"> 
											
												<span class="proname">黄花粘大米 非有机大米 晚稻 一等品 </span>
											
									</a> <span class="breed">黄花粘大米,非有机大米 一等品 晚稻</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2294216/" target="_blank">吴照杰</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">安徽省六安市霍邱县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134102/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/f537c94e12f44264a9e21f9913605125.jpg"
														alt="山东省潍坊市安丘市铁杆大葱 2cm左右 30~40cm 毛葱"
														title="山东省潍坊市安丘市铁杆大葱 2cm左右 30~40cm 毛葱" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">0.23元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134102/" class="text"
										target="_blank"> 
											
												<span class="proname">铁杆大葱 2cm左右 30~40cm 毛葱</span>
											
									</a> <span class="breed">铁杆大葱,毛葱 2cm左右 30~40cm</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2047053/" target="_blank">王永胜</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">山东省潍坊市安丘市</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134101/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/0e8859549cca494098fce17ba9fc5de2.jpg"
														alt="福建省厦门市翔安区锌肥 "
														title="福建省厦门市翔安区锌肥 " />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">6元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134101/" class="text"
										target="_blank"> 
											
												<span class="proname">锌肥 </span>
											
									</a> <span class="breed">锌肥</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2047377/" target="_blank">高小燕</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">福建省厦门市翔安区</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134100/" class="img"
										target="_blank"> 
												
												
													<img src="http://img.cnhnb.com/image/png/head/2018/05/02/f3b6a51ab8f44faca9c6c4aeb087df2d.png"
														alt="四川省成都市邛崃市高杆红叶石楠"
														title="四川省成都市邛崃市高杆红叶石楠" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">38元/株
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134100/" class="text"
										target="_blank"> 
											
												<span class="proname">高杆红叶石楠</span>
											
									</a> <span class="breed">高杆红叶石楠</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2294155/" target="_blank">何成洪</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">四川省成都市邛崃市</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134099/" class="img"
										target="_blank"> 
												
												
													<img src="http://img.cnhnb.com/image/png/head/2018/05/02/2350db6dba024612802a4d2ff55a0bf6.png"
														alt="广东省清远市清城区清远鸡 母 3-4斤"
														title="广东省清远市清城区清远鸡 母 3-4斤" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">16元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134099/" class="text"
										target="_blank"> 
											
												<span class="proname">清远鸡 母 3-4斤</span>
											
									</a> <span class="breed">清远鸡,母 3-4斤</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/1891536/" target="_blank">欧志欢</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">广东省清远市清城区</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134098/" class="img"
										target="_blank"> 
												
												
													<img src="http://img.cnhnb.com/image/png/head/2018/05/02/a8c121cfb6a845d18103c0a125a695b9.png"
														alt="云南省丽江市玉龙纳西族自治县秃杉 "
														title="云南省丽江市玉龙纳西族自治县秃杉 " />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">10000元/棵
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134098/" class="text"
										target="_blank"> 
											
												<span class="proname">秃杉 </span>
											
									</a> <span class="breed">秃杉</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/1215899/" target="_blank">余荣昌</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">云南省丽江市玉龙纳西族自治县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134097/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/532fc4f4a0744ff3aaab1ac139a986fd.jpg"
														alt="吉林省白山市抚松县北陆蓝莓 鲜果 10 - 12mm以上"
														title="吉林省白山市抚松县北陆蓝莓 鲜果 10 - 12mm以上" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">60元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134097/" class="text"
										target="_blank"> 
											
												<span class="proname">北陆蓝莓 鲜果 10 - 12mm以上</span>
											
									</a> <span class="breed">北陆蓝莓,10 - 12mm以上 鲜果</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/2294227/" target="_blank">王慧</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">吉林省白山市抚松县</div>
											<div class="fr">刚刚</div>
										</div></li>
								
									<li><a href="http://www.cnhnb.com/gongying/3134096/" class="img"
										target="_blank"> 
												
												
													<img src="tt.img/supplyHall/supplyHallInterface/fd44abd1b89a4946baaac9f7c7b4aab5.jpg"
														alt="江苏省南通市通州区上海青 15~20公分"
														title="江苏省南通市通州区上海青 15~20公分" />
												
											
									</a>
										<div class="price">
											
												
												
													<i class="fs_12">¥</i>
													<font class="fs_14">0.7元/斤
													</font>
												
											
										</div> <a href="http://www.cnhnb.com/gongying/3134096/" class="text"
										target="_blank"> 
											
												<span class="proname">上海青 15~20公分</span>
											
									</a> <span class="breed">上海青,15~20公分</span>
										<div class="company-name clearfix">
											<i class="fl">
													
													
													
												</i><span class="fl"><a
												href="http://www.cnhnb.com/homepage/784130/" target="_blank">耿芳鑫</a></span>
										</div>
										<div class="bottom clearfix"
											>
											<div class="fl">江苏省南通市通州区</div>
											<div class="fr">刚刚</div>
										</div></li>
								
							</ul>
						
						
					
				</ul>
			</div>
		</div>
		<div class="sider-right fr">
			
				
	<a href="http://www.cnhnb.com/zhuanti/blpfzt/" target="_target" title="点击进入页面" rel="nofollow" phptag="MTL"> 
            <img src="http://img.cnhnb.com/group1/M00/9C/95/183DEE_797ChRkRlrWstSAY_zUAACW5I1TCdg942.jpg" title="点击进入页面" width="216" height="353"/>
       </a>


			
			<ul class="img-list-02 mt_10" id="industry_product">
			</ul>
			
				<div class="hotsupply mt_10">热门供应</div>
				<ul class="img-list mt_10">
					
						<li><a href="http://www.cnhnb.com/gongying/3134151/" class="img"
							target="_blank"> 
									
									
										<img src="http://img.cnhnb.com/image/png/head/2018/05/02/3056970afd824b10a98ee8c8540f797e.png"
											alt="这是一张关于迎春花的产品图片" width="195" height="195" />
									
								
						</a>
							<div class="price">
								
									
									
										<i class="fs_12">¥</i>
										<font class="fs_14">0.11元/棵</font>
									
								
							</div> <a href="http://www.cnhnb.com/gongying/3134151/" class="text"
							target="_blank"> 迎春花</a></li>
					
						<li><a href="http://www.cnhnb.com/gongying/3134150/" class="img"
							target="_blank"> 
									
									
										<img src="tt.img/supplyHall/supplyHallInterface/7d123911c1134275a3132a892376f1b8.jpg"
											alt="这是一张关于土鸡 统货 3-4斤的产品图片" width="195" height="195" />
									
								
						</a>
							<div class="price">
								
									
									
										<i class="fs_12">¥</i>
										<font class="fs_14">32元/斤</font>
									
								
							</div> <a href="http://www.cnhnb.com/gongying/3134150/" class="text"
							target="_blank"> 土鸡 统货 3-4斤</a></li>
					
						<li><a href="http://www.cnhnb.com/gongying/3134149/" class="img"
							target="_blank"> 
									
									
										<img src="http://img.cnhnb.com/image/png/head/2018/05/02/81c054a57af049aa8ee58ca184872aab.png"
											alt="这是一张关于锦鲤鱼苗的产品图片" width="195" height="195" />
									
								
						</a>
							<div class="price">
								
									
									
										<i class="fs_12">¥</i>
										<font class="fs_14">1元/尾</font>
									
								
							</div> <a href="http://www.cnhnb.com/gongying/3134149/" class="text"
							target="_blank"> 锦鲤鱼苗</a></li>
					
						<li><a href="http://www.cnhnb.com/gongying/3134148/" class="img"
							target="_blank"> 
									
									
										<img src="http://img.cnhnb.com/image/png/head/2018/05/02/7bc7ef8f3386487b89cb080624870dd3.png"
											alt="这是一张关于早春红玉西瓜 有籽 1茬 9成熟 3斤打底的产品图片" width="195" height="195" />
									
								
						</a>
							<div class="price">
								
									
									
										<i class="fs_12">¥</i>
										<font class="fs_14">1.5元/斤</font>
									
								
							</div> <a href="http://www.cnhnb.com/gongying/3134148/" class="text"
							target="_blank"> 早春红玉西瓜 有籽 1茬 9成熟 3斤打底</a></li>
					
						<li><a href="http://www.cnhnb.com/gongying/3134147/" class="img"
							target="_blank"> 
									
									
										<img src="tt.img/supplyHall/supplyHallInterface/a977a0235b9d4b35b4f3c26161096f6f.jpg"
											alt="这是一张关于兰竹糯米糍水晶球进奉 2cm的产品图片" width="195" height="195" />
									
								
						</a>
							<div class="price">
								
									
									
										<i class="fs_12">¥</i>
										<font class="fs_14">25元/斤</font>
									
								
							</div> <a href="http://www.cnhnb.com/gongying/3134147/" class="text"
							target="_blank"> 兰竹糯米糍水晶球进奉 2cm</a></li>
					
						<li><a href="http://www.cnhnb.com/gongying/3134146/" class="img"
							target="_blank"> 
									
									
										<img src="tt.img/supplyHall/supplyHallInterface/d76bf5d0ea38498c83cda8ea533fe9bf.jpg"
											alt="这是一张关于大连海带的产品图片" width="195" height="195" />
									
								
						</a>
							<div class="price">
								
									
									
										<i class="fs_12">¥</i>
										<font class="fs_14">3元/斤</font>
									
								
							</div> <a href="http://www.cnhnb.com/gongying/3134146/" class="text"
							target="_blank"> 大连海带</a></li>
					
				</ul>
			
		</div>
		<div class="clear"></div>
		
			<div class="page mt_30  mb_20">
				<center>
					<input type="hidden" id="pageCount"
						value="250" /> <a
						href="http://www.cnhnb.com/p/supply-0-0-0-0-1/">第一页</a>
					
						
						
							<a href="javascript:void(0);">上一页</a>
						
					
					
					
					
						
							<a
								 class="active"
								href="http://www.cnhnb.com/p/supply-0-0-0-0-1/">1</a>
						
					
						
							<a
								
								href="http://www.cnhnb.com/p/supply-0-0-0-0-2/">2</a>
						
					
						
							<a
								
								href="http://www.cnhnb.com/p/supply-0-0-0-0-3/">3</a>
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
					
					
						<span class="cios">...</span>
					
					
						<a
							href="http://www.cnhnb.com/p/supply-0-0-0-0-250/">250</a>
					
					
						
							<a
								href="http://www.cnhnb.com/p/supply-0-0-0-0-2/">下一页</a>
						
						
					
					<a
						href="http://www.cnhnb.com/p/supply-0-0-0-0-250/">最后页</a>
					<span>跳到</span> <span><input type="text" id="pageNumber"
						size="6" value="1"
						url="http://www.cnhnb.com/p/supply-0-0-0-0"
						uri="" autocomplete="off" maxlength="6"
						style="text-align: center;" /></span> <span>页</span> <span><button
							type='button'
							onclick="gotoPage('http://www.cnhnb.com/p/supply-0-0-0-0','')">GO</button></span>
				</center>
			</div>
		
		
			<div class="m0 mt_30 mb_20">
				<div class="mt">你可能会喜欢</div>
				<div class="mc">
					<ul class="clearfix">
						
							<li class="fore"><a href="http://www.cnhnb.com/gongying/3134145/"
								class="p-img" target="_blank">
										
										
											<img src="tt.img/supplyHall/supplyHallInterface/cf88411666e141d99d17e2b28c89e8ef.jpg"
												alt="这是一张关于京欣西瓜 有籽 1茬 8成熟 7斤打底的产品图片" width="195" height="195" />
										
									 </a><a class="rate" href="http://www.cnhnb.com/gongying/3134145/"
								target="_blank"> 京欣西瓜 有籽 1茬 8成熟 7斤打底</a></li>
						
							<li class="fore"><a href="http://www.cnhnb.com/gongying/3134144/"
								class="p-img" target="_blank">
										
										
											<img src="tt.img/supplyHall/supplyHallInterface/ignore-error/1"
												alt="这是一张关于鲫鱼苗的产品图片" width="195" height="195" />
										
									 </a><a class="rate" href="http://www.cnhnb.com/gongying/3134144/"
								target="_blank"> 鲫鱼苗</a></li>
						
							<li class="fore"><a href="http://www.cnhnb.com/gongying/3134143/"
								class="p-img" target="_blank">
										
										
											<img src="tt.img/supplyHall/supplyHallInterface/ignore-error/1"
												alt="这是一张关于红叶椿的产品图片" width="195" height="195" />
										
									 </a><a class="rate" href="http://www.cnhnb.com/gongying/3134143/"
								target="_blank"> 红叶椿</a></li>
						
							<li class="fore"><a href="http://www.cnhnb.com/gongying/3134142/"
								class="p-img" target="_blank">
										
										
											<img src="tt.img/supplyHall/supplyHallInterface/ignore-error/1"
												alt="这是一张关于粉果番茄 不打冷 软粉 弧三以上的产品图片" width="195" height="195" />
										
									 </a><a class="rate" href="http://www.cnhnb.com/gongying/3134142/"
								target="_blank"> 粉果番茄 不打冷 软粉 弧三以上</a></li>
						
							<li class="fore"><a href="http://www.cnhnb.com/gongying/3134141/"
								class="p-img" target="_blank">
										
										
											<img src="tt.img/supplyHall/supplyHallInterface/ignore-error"
												alt="这是一张关于粉丝的产品图片" width="195" height="195" />
										
									 </a><a class="rate" href="http://www.cnhnb.com/gongying/3134141/"
								target="_blank"> 粉丝</a></li>
						
					</ul>
				</div>
			</div>
		
	</div>
	<div class="footer">
  <div class="container">
    <div class="ptb20 clearfix">
      <div class="foot-qr clearfix">
        <div class="qrcode"><img src="tt.img/supplyHall/supplyHallInterface/topbar-hn-app.gif" alt="手机信农网">
          <p><span>扫一扫下载</span><span>手机APP</span></p>
        </div>
        <div class="qrcode"><img src="tt.img/supplyHall/supplyHallInterface/topbar-qrcode.gif" alt="信农官方微信">
          <p><span>扫码关注</span><span>信农官方微信</span></p>
        </div>
      </div>
      <ul class="foot-nav clearfix">
        <li><a href="http://www.cnhnb.com/help/about.jsp" target="_blank" rel="nofollow">关于我们</a></li>
        <li><a href="http://www.cnhnb.com/help/legal.jsp" target="_blank" rel="nofollow">法律声明</a></li>
        <li><a href="http://www.cnhnb.com/help/agreement.jsp" target="_blank" rel="nofollow">使用协议</a></li>
        <li><a href="http://www.cnhnb.com/help/privacy.jsp" target="_blank" rel="nofollow">版权隐私</a></li>
        <li><a href="http://www.cnhnb.com/link.jsp" target="_blank" rel="nofollow">友情链接</a></li>
        <li><a href="http://www.cnhnb.com/help/case.jsp" target="_blank" rel="nofollow">成功案例</a></li>
        <li><a href="http://www.cnhnb.com/help/major.jsp" target="_blank" rel="nofollow">信农大事记</a></li>
        <li><a href="http://www.cnhnb.com/chanpinku.jsp" target="_blank">产品库</a></li>
        <li><a href="http://www.cnhnb.com/sitemap.jsp" target="_blank">网站地图</a></li>
      </ul>
      <div class="copyright">
        <p>湘ICP备13007354号-1  | 服务热线：400-008-8688</p>
        <p>互联网药品信息服务资格证书:(湘)-经营性-2014-0005 湖南信农科技有限公司  <a href="http://pageblockslookup.cnhnb.com/media/filebin/HN-zhizhao.jpg" target="_blank">营业执照号</a></p>
        <p>&copy;2011-2016 Cnhnb B2B SYSTEM All Rights Reserved</p>
        <p class="imgs"><a target="_blank" href="http://www.hngawj.net/" rel="nofollow"><img alt="45" src="//static.cnhnb.com/myhn/message/images/jhd_45.png"></a><a target="_blank" href="http://www.beianbeian.com/" rel="nofollow"><img alt="47" src="//static.cnhnb.com/myhn/message/images/jhd_47.png"></a><a target="_blank" href="http://webscan.360.cn/" rel="nofollow"><img alt="55" src="//static.cnhnb.com/myhn/message/images/jhd_55.png"></a></p>
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
	<!--<script src="http://static9.cnhnb.com/static/js/common/common.min.js"></script>
	<script src="http://static9.cnhnb.com/static/js/common/comm.js"></script>
	<script src="http://static9.cnhnb.com/static/js/supply/list.js"></script>-->
</body>
</html>