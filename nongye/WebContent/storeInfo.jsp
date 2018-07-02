<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>开通旺铺</title>
<link rel="stylesheet" href="tt.css/base.min.css">
<link rel="stylesheet" href="tt.css/common.min.css">
<link rel="stylesheet" href="tt.css/personal/common_1.css">
<link rel="stylesheet" href="tt.css/personal/frame.css">
<link rel="stylesheet" href="tt.css/left_1.css" />
</head>
<body myHnCode="MyShop_sy">


<!-- <div></div> --><!--整行替换成网站头部-->

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
        <div class="label"><a  href="#" target="_blank">网站首页</a></div>
      </li>
      <li class="pngfix" id="hn_home_id" >
        <div class="label"><a  href="#" target="_blank">触屏版</a></div>
      </li>
      <li class="dropdown pngfix">
        <div class="dropdown-label"><i>&nbsp;</i><span><a href="#" target="_blank" rel="nofollow">手机信农</a></span></div>
        <div class="dropdown-layer dd-hn-qrcode">
          <div class="qrcode"><img src="tt.img/supply/storeInfo/topbar-hn-app.gif" alt="手机信农网">
            <p><span>扫一扫下载</span><span>手机APP</span></p>
          </div>
        </div>
      </li>
      <li class="dropdown pngfix">
        <div class="dropdown-label"><i>&nbsp;</i><span>关注信农</span></div>
        <div class="dropdown-layer dd-hn-qrcode">
          <div class="qrcode"><img src="tt.img/supply/storeInfo/topbar-qrcode.gif" alt="信农官方微信">
            <p><span>扫码关注</span><span>信农官方微信</span></p>
          </div>
        </div>
      </li>
      <li class="dropdown pngfix">
        <div class="dropdown-label"><i>&nbsp;</i><span><a href="#" target="_blank" rel="nofollow">帮助中心</a></span></div>
        <div class="dropdown-layer dd-help-center">
          <p><a href="#" target="_blank" rel="nofollow">常见问题</a><a href="#" target="_blank" rel="nofollow">联系客服</a></p>
        </div>
      </li>
    </ul>
  </div>
</div>

<div class="header">
    <div class="wrap">
        <a href="http://www.cnhnb.com/" target="_blank" class="logo"><img src="tt.img/supply/storeInfo/logo_2.jpg"height="40px;" /></a>
        <ul class="head-nav clearfix">
            <li id="sy">
                <a class="main-link" href="#">首页</a>
                <div class="sub-nav sub-nav-index clearfix">
                    <dl>
                        <dt>我的采购</dt>
                        <dd><a href="purchasingManagement.jsp">采购管理</a></dd>
                        <dd><a href="purchasingOrder.jsp">采购订单</a></dd>
                    </dl>
                    <dl>
                        <dt>我的供应</dt>
                        <dd><a href="supplyManagement.jsp">供应管理</a></dd>
                        <dd><a href="supplyOrder.jsp">供应订单</a></dd>
                        <dd><a href="storeInfo.jsp">店铺资料</a></dd>
                    </dl>
                </div>
                <span class="line"></span>
            </li>
            <li id="zh">
                <a class="main-link" href="personalInfo.jsp" module="2">帐号管理</a>
                <div class="sub-nav clearfix">
                    <dl>
                        <dd><a href="personalAttestation.jsp">个人认证</a></dd>
                        <dd><a href="businessAttestation.jsp">企业认证</a></dd>
                        <dd><a href="personalInfo.jsp">个人资料</a></dd>
                        <!--<dd><a href="javascript:dAlert('bg6');">账户中心</a></dd>-->
                    </dl>
                </div>
                <span class="line"></span>
            </li>
            <!--<li id="hy">
                <a class="main-link" href="http://ad.cnhnb.com/ad/index" module="3">会员服务</a>
                <div class="sub-nav clearfix">
                    <dl>
                        <dd><a href="http://authority.cnhnb.com/to/BusinessPush_hy.do">商机推送</a></dd>
                        <dd><a href="http://authority.cnhnb.com/to/AdService_hy.do">广告服务</a></dd>
                    </dl>
                </div>
                <span class="line"></span>
            </li>-->
        </ul>
        <div class="custom-service">
            <a class="btn-qq" target="_blank" href="#">和我联系</a>
            <div class="tel">
                <h3>客服热线：</h3>
                <span>400-008-8688</span>
            </div>
        </div>
    </div>
</div>

<div class="main wrap frame-main frame-main-sub">

    <!-- frame-menu -->
    <div class="frame-menu" id="frame-menu">
    <!--	左侧导航-->
		
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
    <!-- frame-menu /-->

    <!-- frame-container -->
    <div class="frame-container">
    	<!-- Content Start -->
		<div id="content" class="content">
	           		<img class="vat" src="tt.img/supply/storeInfo/winport_new_meitu_3.jpg" alt="">
	          </div>
        </div>
		<!-- Content End -->
    </div>
    <!-- frame-container /-->
</div>
<script type="text/javascript" src="tt.js/jquery-1.7.2.min.js"></script>
<!--<script type="text/javascript" src="http://static.cnhnb.com/4.0/libs/lhgdialog/lhgdialog.min.js?self=true&skin=hn"></script>
<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/personal/common/common.js?v=1"></script>
<script type="text/javascript" src="http://static.cnhnb.com/myhn/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="http://static.cnhnb.com/js/frame/hn.frame.util-0.1.js?v=1"></script>
<script type="text/javascript" src="http://static.cnhnb.com/myhn/js/core/top_foot.js"></script>-->


<div class="footer">
  <div class="container">
    <div class="ptb20 clearfix">
      <div class="foot-qr clearfix">
        <div class="qrcode"><img src="tt.img/supply/storeInfo/topbar-hn-app.gif" alt="手机信农网">
          <p><span>扫一扫下载</span><span>手机APP</span></p>
        </div>
        <div class="qrcode"><img src="tt.img/supply/storeInfo/topbar-qrcode.gif" alt="信农官方微信">
          <p><span>扫码关注</span><span>信农官方微信</span></p>
        </div>
      </div>
      <ul class="foot-nav clearfix">
        <li><a href="#" target="_blank" rel="nofollow">关于我们</a></li>
        <li><a href="#" target="_blank" rel="nofollow">法律声明</a></li>
        <li><a href="#" target="_blank" rel="nofollow">使用协议</a></li>
        <li><a href="#" target="_blank" rel="nofollow">版权隐私</a></li>
        <li><a href="#" target="_blank" rel="nofollow">友情链接</a></li>
        <li><a href="#" target="_blank" rel="nofollow">成功案例</a></li>
        <li><a href="#" target="_blank" rel="nofollow">信农大事记</a></li>
        <li><a href="#" target="_blank">产品库</a></li>
        <li><a href="#" target="_blank">网站地图</a></li>
      </ul>
      <div class="copyright">
        <p>湘ICP备13007354号-1  | 服务热线：400-008-8688</p>
        <p>互联网药品信息服务资格证书:(湘)-经营性-2014-0005  湖南信农科技有限公司  <a href="http://pageblockslookup.cnhnb.com/media/filebin/HN-zhizhao.jpg" target="_blank">营业执照号</a></p>
        <p>&copy;2011-2018 Cnhnb B2B SYSTEM All Rights Reserved</p>
        <p class="imgs"><a target="_blank" href="http://www.hnga.gov.cn/" rel="nofollow"><img alt="45" src="//static.cnhnb.com/myhn/message/images/jhd_45.png"></a><a target="_blank" href="http://www.beianbeian.com/" rel="nofollow"><img alt="47" src="//static.cnhnb.com/myhn/message/images/jhd_47.png"></a><a target="_blank" href="http://webscan.360.cn/" rel="nofollow"><img alt="55" src="//static.cnhnb.com/myhn/message/images/jhd_55.png"></a></p>
      </div>
    </div>
  </div>
</div>
	<script type="text/javascript" src="tt.js/left.js"></script>
<div class="hidden">
<!--<script  id="hn_analytics_all" type="text/javascript" src="//static.cnhnb.com/js/analytics/analytics.cnhnb.com-min.js?version=20150809"></script>
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
</body>
</html>
