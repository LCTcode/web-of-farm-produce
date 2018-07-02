<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <title>发布供应_供应频道</title>
    
	

    
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
<script type="text/javascript">
	  
	function ajaxDemo(){
		
		
		var keywords=document.getElementById("keywords").value;
		//alert(keywords);
		$.ajax({
			method : "POST",
			url : "ajaxSupplyServlet",
			data : {
					"keywords":keywords
						}
			}).done(function(msg) {
						
				 var jsonObj = $.parseJSON(msg);
				 $(".ted .sp ").remove();//重新选择后删除节点
				 $.each(jsonObj,function(i,ReciveAjaxSupply){
					 
					// alert(ReciveAjaxSupply.name);
					// $(".ted").append(ReciveAjaxSupply.name);		 
		 		$(".ted").append("<span class='sp'>"+ReciveAjaxSupply.name+"<input type='type'"+"name='value'"+"value=''"+"/>"+"&nbsp&nbsp"+"</span>");
				 
				
				 })

					});
	}
	</script>
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
    <form action="/nongye/reciveSupplyServlet"  method="post">
        <div class="release mb_50">
            <ul class="row-1">
                <li class="col-1"><span class="red vam">*</span> 产品</li>
               	<select id="goods" name="goods"></select>
				<select id="goods_type" name="goods_type"></select>
				<select id="keywords" name="keywords" onblur="ajaxDemo()"></select>
				
				<script type="text/javascript">
				addressInit('goods','goods_type','keywords');
				</script>
				
            </ul>
             <ul class="row-1">
                <li class="col-1"><span class="red vam">*</span> 产品名称</li>
               	<input type="text" name="goods_name" id="goods_name" placeholder="例如：红富士苹果" required="required" />
               	<li class="col-msg" style="display: none;" id="qty_msg">请输入产品名称</li>
            </ul>
             <ul class="row-1">
                <li class="col-1"><span class="red vam">*</span> 产品规格</li>         
				<div class="ted">
	
				</div> 
               	<li class="col-msg" style="display: none;" id="qty_msg">请输入产品规格</li>
            </ul>
          <ul class="row-2">
                <li class="col-1">供应量</li>
                <li class="col-2"><input class="price-min" id="standard" name="standard" autocomplete ="off" type="text"  placeholder="供应数量+单位" required="required" /></li>
                <li class="col-5">
                </li>
                <li class="col-msg" style="display: none;" id="qty_msg">请输入产品数量</li>
            </ul>
            <ul class="row-2">
                <li class="col-1">价格</li>
                <li class="col-2"><input class="price-min" id="price" name="price"  type="text"    placeholder="供应价格"  required="required" /></li>
                <li class="col-tips">
                    <span>元/斤</span>
                </li>
                <li class="col-msg" id="price_msg" style="display: none;">请输入价格和单位</li>
            </ul>
            <ul class="row-3">
                <li class="col-1"><span class="red vam">*</span> 发布时间</li>
                <li class="col-2">
                    <input class="price-min" id="minPrice" name="ontime" autocomplete ="off" type="date"  placeholder="发布时间" /></li>
                </li>
                  <li class="col-msg" id="time_msg" style="display: none;">请慎重选择发布时长</li>
            </ul>
            <div class="clear"></div>
            <div style="margin-left: 50px;font-size:15px;"> 
           
            <label>商品简介</label><br />
			<textarea rows="4" cols="50" name="text"></textarea><br /><br />
  			<label>商品描述</label><br />
			<textarea rows="4" cols="50" name="context"></textarea><br /><br />
			</div>
            <ul class="row-6">
                <li class="col-1"><span class="red vam">*</span> 联系人</li>
                <li class="col-2"><input id="user_name" name="user_name" type="text" maxlength="20"  placeholder="如：王先生"/></li>
                <li class="col-msg" id="user_name" style="display: none;">请填写联系人</li>
            </ul>
            <ul class="row-6">
                <li class="col-1"><span class="red vam">*</span> 手机号码</li>
                <li class="col-2"><input id="tel_number" name="tel_number" type="text"  placeholder="请输入有效的手机号" "/></li>
                <li class="col-ico"><img src="tt.img/lssueProcurement/release-msg-ico.png" width="12" height="12"/></li>
                <li class="col-msg" id="telephone_msg" style="display: none;">请填写电话</li>
            </ul>
            
            <ul class="row-6">
                <li class="col-1"><span class="red vam">*</span> 发货地</li>
                <li class="col-2">
                        <div id="cities-select" class="cities-select">
                            <input type="text" name="address" id="address" placeholder="货源地区">
                            <div class="pop">
                                <div class="list">
                                    <dl class="clearfix" id="province">
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                <li class="col-msg" id="address_msg" style="display: none;">请填写收货地</li>
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


