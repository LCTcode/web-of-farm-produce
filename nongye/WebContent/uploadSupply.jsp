<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-store" />
    <meta http-equiv="Cache-Control" content="no-transform" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    
    <meta name="mobile-agent" content="format=html5;url=#">
    
    
    <link rel="alternate" media="only screen and (max-width: 640px)" href="#" >
    <meta http-equiv="Pragma" content="no-cache" />
    <title>发布供应_上传图片</title>
    
	

    
    <link rel="shortcut icon" type="image/x-icon" href="tt.img/lssueProcurement/favicon.ico" />
    <link type="text/css" rel="stylesheet" href="tt.css/base.css"/>
    <link type="text/css" rel="stylesheet" href="tt.css/common.min.css"/>
	<link type="text/css" rel="stylesheet" href="tt.css/supply/search/base.css" />
	<link type="text/css" rel="stylesheet" href="tt.css/common.css" />
	<link type="text/css" rel="stylesheet" href="tt.css/purchase/release.css" />
	<link type="text/css" rel="stylesheet" href="tt.css/supply/search/reset.css"  />
	<link type="text/css" rel="stylesheet" href="tt.css/supply/search/style.css" />
    <link type="text/css" rel="stylesheet" href="tt.css/jquery.autocomplete.css" />
	<script type="text/javascript" src="tt.js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="tt.js/supplyGoods.js"></script>
	<!--<script type="text/javascript" src="http://static.cnhnb.com/4.0/libs/autocomplete/1.0/js/jquery.autocomplete.js"></script>-->
	
	<link rel="stylesheet" href="tt.css/regs.css">
	<style type="text/css">
	#treaty{*margin-top:-12px;}
	</style>
</head>
<body>


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
          <div class="qrcode"><img src="tt.img/lssueProcurement/topbar-hn-app.gif" alt="手机信农网">
            <p><span>扫一扫下载</span><span>手机APP</span></p>
          </div>
        </div>
      </li>
      <li class="dropdown pngfix">
        <div class="dropdown-label"><i>&nbsp;</i><span>关注信农</span></div>
        <div class="dropdown-layer dd-hn-qrcode">
          <div class="qrcode"><img src="tt.img/lssueProcurement/topbar-qrcode.gif" alt="信农官方微信">
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


<div class="head clearfix" style="margin:0 auto; height:110px;">
  <div class="logo"><a title="中国信农网" href="#" target="_blank"  title="首页"><img src="tt.img/lssueProcurement/logo_1.jpg" alt="信农网" width="388" height="123" style="margin-top: -20px;"></a></div>
  <div class="head-cs"><span>客服热线：</span>400-008-8688</div>
</div>
<div class="container wrap-1200">
    <div class="release-title">
        <h2>我 要 卖</h2>
        <a target="_blank" href="#">供应操作指南</a>
    </div>
    <input type="hidden" id="regUrl" value="#"/>
    <form action="/nongye/uploadSupplyServlet"  method="post" enctype="multipart/form-data" >
        <div class="release mb_50">
            
			<ul class="row-5">
                <li class="col-1"><span class="red vam">*</span> 上传商品图片</li>
                <li class="col-2"><input type="file" id="goods_pic" name="goods_pic"  /></li>
                <li class="col-msg" id="user_name" style="display: none;">请上传图片</li>
            </ul>
            <ul class="row-7">
                <li class="col-2">
                    <div class="release-submit">
                        <div class="agreement clearfix" style="display: none;" id="div_reg_ck">
                            <a id="treaty" href="#" class="fl mt_5 lh_22"> 《信农网服务条款》</a>
                        </div>
                        <input class="submit" type="submit" id="submitBtn" name="" value="确认发布" />
                    </div>
                </li>
            </ul>
        </div>
    </form>
</div>
<div class="footer">
  <div class="container">
    <div class="ptb20 clearfix">
      <div class="foot-qr clearfix">
        <div class="qrcode"><img src="tt.img/lssueProcurement/topbar-hn-app.gif" alt="手机信农网">
          <p><span>扫一扫下载</span><span>手机APP</span></p>
        </div>
        <div class="qrcode"><img src="tt.img/lssueProcurement/topbar-qrcode.gif" alt="信农官方微信">
          <p><span>扫码关注</span><span>信农官方微信</span></p>
        </div>
      </div>
      <ul class="foot-nav clearfix">
        <li><a href="#about.html" target="_blank" rel="nofollow">关于我们</a></li>
        <li><a href="#legal.html" target="_blank" rel="nofollow">法律声明</a></li>
        <li><a href="#agreement.html" target="_blank" rel="nofollow">使用协议</a></li>
        <li><a href="#privacy.html" target="_blank" rel="nofollow">版权隐私</a></li>
        <li><a href="http://www.cnhnb.com/link.html" target="_blank" rel="nofollow">友情链接</a></li>
        <li><a href="#case.html" target="_blank" rel="nofollow">成功案例</a></li>
        <li><a href="#major.html" target="_blank" rel="nofollow">信农大事记</a></li>
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

<div class="hidden">
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?91cf34f62b9bedb16460ca36cf192f4c";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
</div>
 <script type="text/javascript" src="tt.js/supply/supply-category-selector.js"></script>
 <script type="text/javascript" src="tt.js/purchase/release.js?v=20170417"></script>
 <script type="text/javascript" src="tt.js/purchase/purchase-release.js"></script>
</body>
</html>


