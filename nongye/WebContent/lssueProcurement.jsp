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
    
    <meta name="mobile-agent" content="format=html5;url=http://www.cnhnb.com/purchase/release">
    
    
    <link rel="alternate" media="only screen and (max-width: 640px)" href="http://www.cnhnb.com/purchase/release" >
    <meta http-equiv="Pragma" content="no-cache" />
    <title>发布采购_采购频道</title>
    
	

    
    <link rel="shortcut icon" type="image/x-icon" href="http://static.cnhnb.com/common/default/images/favicon.ico" />
    <link type="text/css" rel="stylesheet" href="tt.css/base.css"/>
    <link type="text/css" rel="stylesheet" href="tt.css/common.min.css"/>
	<link type="text/css" rel="stylesheet" href="tt.css/supply/search/base.css" />
	<link type="text/css" rel="stylesheet" href="tt.css/common.css" />
	<link type="text/css" rel="stylesheet" href="tt.css/purchase/release.css" />
	<link type="text/css" rel="stylesheet" href="tt.css/supply/search/reset.css"  />
	<link type="text/css" rel="stylesheet" href="tt.css/supply/search/style.css" />
    <link type="text/css" rel="stylesheet" href="tt.css/jquery.autocomplete.css" />
	<script type="text/javascript" src="tt.js/jquery-1.7.2.min.js"></script>
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
        <div class="dropdown-label"><i>&nbsp;</i><span><a href="http://www.cnhnb.com/app/download/" target="_blank" rel="nofollow">手机信农</a></span></div>
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
        <div class="dropdown-label"><i>&nbsp;</i><span><a href="http://help.cnhnb.com/" target="_blank" rel="nofollow">帮助中心</a></span></div>
        <div class="dropdown-layer dd-help-center">
          <p><a href="http://help.cnhnb.com/problem/" target="_blank" rel="nofollow">常见问题</a><a href="http://help.cnhnb.com/service.htm" target="_blank" rel="nofollow">联系客服</a></p>
        </div>
      </li>
    </ul>
  </div>
</div>


<div class="head clearfix" style="margin:0 auto; height:110px;">
  <div class="logo"><a title="中国信农网" href="http://www.cnhnb.com" target="_blank"  title="首页"><img src="tt.img/lssueProcurement/logo_1.jpg" alt="信农网" width="388" height="123" style="margin-top: -20px;"></a></div>
  <div class="head-cs"><span>客服热线：</span>400-008-8688</div>
</div>
<div class="container wrap-1200">
    <div class="release-title">
        <h2>我 要 买</h2>
        <a target="_blank" href="#">采购操作指南</a>
    </div>
    <input type="hidden" id="regUrl" value="https://passport.cnhnb.com/"/>
    <form action="/nongye/lssueProcurementServlet" target="purchaseform" method="post">
    
    	<input type="hidden" id="hnUserId" value="1842467"/>
    	<input type="hidden" id="supplyUrl" value="http://www.cnhnb.com/" />
    	<input type="hidden" id="lat"  />
    	<input type="hidden" id="lng"  />
    	<input type="hidden" id="cateId"  value=""/>
    	<input type="hidden" id="breedId"  value=""/>
    	
        <div class="release mb_50">
            <ul class="row-1">
                <li class="col-1"><span class="red vam">*</span> 产品</li>
                <li class="col-2"><input class="product-name" id="purchase_name"  maxlength="10" autocomplete ="off" name="purchase_name" type="text" placeholder="如：苹果"  equired="required"/></li>
                <li class="col-ico"><img src="tt.img/lssueProcurement/release-msg-ico.png" width="12" height="12" /></li>
                
                <li class="col-msg" style="display: none;">请输入产品名</li>
            </ul>
            
            <ul class="row-1">
                <li class="col-1"><span class="red vam">*</span> 品种</li>
                <li class="col-2"><input id="type"  maxlength="10" autocomplete ="off" name="type" type="text" placeholder="如：红富士苹果" equired="required"/></li>
                <li class="col-ico"><img src="tt.img/lssueProcurement/release-msg-ico.png" width="12" height="12" /></li>
                <li class="col-1"><span class="red vam">*</span> </li>
                <li class="col-msg" style="display: none;">请输入品种名</li>
            </ul>
            <ul class="row-2">
                <li class="col-1">需求量</li>
                <li class="col-2"><input class="price-min" id="purchase_number" name="purchase_number" autocomplete ="off" type="text"  placeholder="例如：500斤" equired="required"/></li>
                <li class="col-msg" style="display: none;" id="qty_msg">请输入产品数量</li>
            </ul>
            <ul class="row-2">
                <li class="col-1">价格</li>
                <li class="col-2"><input class="price-min" id="expected_price" name="expected_price" autocomplete ="off" type="text"  value=""  placeholder="期望价格" equired="required"/></li>
                <li class="col-tips">
                    <span>元/斤</span>
                </li>
                <li class="col-msg" id="price_msg" style="display: none;">请输入价格和单位</li>
            </ul>
            <ul class="row-3">
                <li class="col-1"><span class="red vam">*</span> 采购时长</li>
                <li class="col-2">
                    <input class="price-min" id="minPrice" name="ontime" autocomplete ="off" type="date"  placeholder="采购时间" equired="required"/></li>
                 <li class="col-3">至</li>
                <li class="col-4"><input id="offtime" name="offtime"  autocomplete ="off" type="date"   placeholder="截止时间" equired="required"/> <em class="check_success radius">&nbsp;</em></li> 
                </li>
                <li class="col-msg" id="time_msg" style="display: none;">请选择采购时长</li>
            </ul>
            <div class="clear"></div>
            <div class="collapse clearfix">
                <ul class="row-3">
                    <li class="col-1">期望货源地</li>
                    <li class="col-2">
                        <div id="cities-select" class="cities-select">
                            <input type="text" name="address" id="address" placeholder="期望货源地区"equired="required">
                            <div class="pop">
                                <div class="list">
                                    <dl class="clearfix" id="province">
                                    </dl>
                                </div>
                                <a class="close" href="#">X</a>
                            </div>
                        </div>
                    </li>
                    <li class="col-msg" style="display: none;">请选择货源地</li>
                </ul>
                <ul class="row-4">
                    <li class="col-1">补充说明</li>
                    <li class="col-2"><p>0/400</p><textarea  name="text" id="text"   cols="45" rows="5"  placeholder="详细的采购信息，可以收到更满意的报价哦。"></textarea></li>
                    <li class="col-msg" style="display: none;" id="explantion_msg">不少于10个字</li>
                </ul>
            </div>
            <div class="collapse-ctrl">
                <a class="w_400" href="#" id="a_detail">展开填写期望货源地\补充说明以及<span style="color:red;font-weight:bold;text-decoration:underline;">收货地址</span></a>
            </div>
            <ul class="row-6">
                <li class="col-1"><span class="red vam">*</span> 联系人</li>
                <li class="col-2"><input id="user_name" name="user_name" type="text" maxlength="20"  placeholder="如：王先生"equired="required"/></li>
                <li class="col-msg" id="linkName_msg" style="display: none;">请填写联系人</li>
            </ul>
            <ul class="row-6">
                <li class="col-1"><span class="red vam">*</span> 手机号码</li>
                <li class="col-2"><input id="tel_umber" name="tel_number" type="text"  placeholder="请输入有效的手机号" equired="required"/></li>
                <li class="col-ico"><img src="tt.img/lssueProcurement/release-msg-ico.png" width="12" height="12"/></li>
                <li class="col-msg" id="telephone_msg" style="display: none;">请填写电话</li>
            </ul>  
            <ul class="row-7">
                <li class="col-2">
                    <div class="release-submit">
                        <div class="agreement clearfix" style="display: none;" id="div_reg_ck">
                            <a id="treaty" href="#" class="fl mt_5 lh_22"> 《服务条款》</a>
                        </div>
                        <input class="submit" type="submit" id="submitBtn" name="" value="确认发布" />
                    </div>
                </li>
            </ul>
        </div>
    </form>
</div>
<!-- 单位选择 -->
<div class="unit-drop">
    <ul></ul>
</div>
<!-- 提示语 -->
<div class="product-msg">
    <p>抱歉，暂未收录此产品名称</p>
    <p>提交此产品名后，将在24小时内进行审核</p>
    <p>感谢您帮助我们一起完善平台信息</p>
</div>
<div class="phone-msg">
    <p>手机号码：以13、14、15、17、18开头的11位数字</p>
    <p>座机号码：5到9位数字或者 区号+号码 的形式，如 88888888、0731-88888888</p>
</div>
<!-- 产品名联想 -->
<div class="product-drop">
    <ul></ul>
</div>
<div style="display: none">
	<input id = "isSearchProductInfo" value = "0"/>
</div>
<!-- 品种选择 -->
<div class="breed-drop">
    <ul></ul>
</div>
 

<div class="product-choice">
	<div class="msg-1"><p>您可以选择分类或直接输入关键词搜索</p><span class="product-choice-close">×</span></div>
	<ul class="type-1">
    	<li class="line"></li>
    	<li cateId="-1" class="txt cur">热门</li>
    	<li cateId="2000001" class="txt">水果</li><li cateId="2000002" class="txt">蔬菜</li><li cateId="2000003" class="txt">畜牧水产</li><li cateId="2000004" class="txt">粮油米面</li><li cateId="2000005" class="txt">农副加工</li><li cateId="2000006" class="txt">苗木花草</li><li cateId="2000007" class="txt">种子种苗</li><li cateId="2000008" class="txt">农资农机</li><li cateId="2000009" class="txt">中药材</li><li cateId="2000010" class="txt">包装</li><li cateId="2000011" class="txt">仓储</li>
    </ul>
    <ul class="type-2">
    	<li class="line"></li>
    	<li class="txt">A</li>
    	<li class="txt">B</li>
    	<li class="txt">C</li>
    	<li class="txt">D</li>
    	<li class="txt">E</li>
    	<li class="txt">F</li>
    	<li class="txt">G</li>
    	<li class="txt">H</li>
    	<li class="txt">I</li>
    	<li class="txt">J</li>
    	<li class="txt">K</li>
    	<li class="txt">L</li>
    	<li class="txt">M</li>
    	<li class="txt">N</li>
    	<li class="txt">O</li>
    	<li class="txt">P</li>
    	<li class="txt">Q</li>
    	<li class="txt">R</li>
    	<li class="txt">S</li>
    	<li class="txt">T</li>
    	<li class="txt">U</li>
    	<li class="txt">V</li>
    	<li class="txt">W</li>
    	<li class="txt">X</li>
    	<li class="txt">Y</li>
    	<li class="txt">Z</li>
    </ul>
    <ul class="type-3" style="display: inline;">
       <li val='301011'>玉米粒</li> <li val='301009'>大米</li> <li val='201006'>羊</li> <li val='201001'>鸡</li> <li val='202032'>鸡</li> <li val='301019'>高粱</li> <li val='203038'>小龙虾</li> <li val='301013'>小麦</li> <li val='201005'>牛</li> <li val='404001'>鸡蛋</li> <li val='301002'>大豆</li> <li val='102003'>西瓜</li> <li val='102001'>苹果</li> <li val='201007'>猪</li> <li val='301017'>荞麦</li> <li val='101054'>土豆</li> <li val='102023'>芒果</li> <li val='204001'>鸡苗</li> <li val='601005'>饲料</li> <li val='201002'>鸭</li>
      
    </ul>
    <ul class="type-3">
    </ul>
    <div class="msg-2">如没有您想要的分类,您仍然可以发布,或者 <a target="_blank" href="#">联系我们</a></div>
</div>
<!-- 产品名联想 -->
<div class="product-drop">
	<ul> 
    </ul>
</div>
<!-- 品种选择 -->
<div class="breed-drop">
	<ul>
    </ul>
</div>   
 <!-- <div class="theme-popover">
			  	<div class="theme-all">
				    <div class="theme-poptit"> 
				    	<a href="javascript:;" title="关闭" class="close">×</a> 
				    	<img src="tt.img/lssueProcurement/zd_logo.png"/> 
				    </div>
				    <div class="theme-popbod">
				    	<ul>
					        <li class="li1"><span class="zd_left"><strong>登录名：</strong></span></li>
					        <li class="li2">
					        	<input name="userAccount" id="userAccount" type="text" class="login-text" onfocus="clearText(this);clearError();" value="请输入登录名"/>
					        	<span id="userAccountv" style="text-align: center;color: red;"></span>
					        </li>
					        <li class="li1">
					        	<span class="zd_left"><strong>登录密码：</strong></span>
					        	<span class="zd_right">
					        		<a  target="_blank"  href="https://passport.cnhnb.com/myinfo/getPwd">忘记登录密码？</a>
					        	</span>
					        </li>
					        <li class="li2">
					        	<input name="password" onfocus="clearError();"  id="userPwd" type="password" class="login-text" />
					        	<span id="userPwdv" style="text-align: center;color: red;"></span>
					        </li>
					        <li class="li4">
					          	<button type="button" class="J_Submit" tabindex="5" id="J_SubmitStatic">登　录</button>
					          	<div id="err_prompt_msg" style="text-align: center;color: red; padding-top: 5px;"></div>
                                <span class="zd_right"><a target="_blank" href="https://passport.cnhnb.com/myinfo/goReg">免费注册</a></span>
					        </li>
					        <li class="li5">
					        	<span class="zd_left">
					        		<a href="javascript:turn('qq')" target="_self" class="qqico" id="qqlogin"><img src="http://static.cnhnb.com/auth/images/common/kj_dl_01.png" id="login_qq"/></a>
					            	<a href="javascript:turn('wx')" target="_self" class="qqico" id="wxlogin"><img src="http://static.cnhnb.com/auth/images/common/kj_dl_02.png" id="login_wx"/></a> 
					        	</span>
					        </li>
				      	</ul>
				    </div>
		  		</div>
			</div> -->
 

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
        <p>互联网药品信息服务资格证书:(湘)-经营性-2014-0005  湖南信农科技有限公司  <a href="http://pageblockslookup.cnhnb.com/media/filebin/HN-zhizhao.jpg" target="_blank">营业执照号</a></p>
        <p>&copy;2011-2018 Cnhnb B2B SYSTEM All Rights Reserved</p>
        <p class="imgs"><a target="_blank" href="http://www.hnga.gov.cn/" rel="nofollow"><img alt="45" src="//static.cnhnb.com/myhn/message/images/jhd_45.png"></a><a target="_blank" href="http://www.beianbeian.com/" rel="nofollow"><img alt="47" src="//static.cnhnb.com/myhn/message/images/jhd_47.png"></a><a target="_blank" href="http://webscan.360.cn/" rel="nofollow"><img alt="55" src="//static.cnhnb.com/myhn/message/images/jhd_55.png"></a></p>
      </div>
    </div>
  </div>
</div>

<div class="hidden">
<script  id="hn_analytics_all" type="text/javascript" src="//static.cnhnb.com/js/analytics/analytics.cnhnb.com-min.js?version=20150809"></script>
<script type="text/javascript" src="//hnlog.cnhnb.com/js/online.behavior.funnel.js?v=20170105"></script>
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
<!--<script src='http://static.cnhnb.com/myhn/js/core/top_foot.js?v=1' type='text/javascript'></script>-->

 <!--<script type="text/javascript" src="http://static.cnhnb.com/supply/js/common.js"></script>-->
 <script type="text/javascript" src="tt.js/supply/supply-category-selector.js"></script>
 <script type="text/javascript" src="tt.js/purchase/release.js?v=20170417"></script>
<!-- <script type="text/javascript" src="http://static.cnhnb.com/supply/js/loginwindow.js"></script>-->
 <script type="text/javascript" src="tt.js/purchase/purchase-release.js"></script>
<!-- <script type="text/javascript" src="http://static.cnhnb.com/auth/js/windows.js"></script>
 <script type="text/javascript" src="http://static.cnhnb.com/myhn/js/core/windows.js"></script>-->
 <!--<script src="//c.dun.163yun.com/js/c.js"></script>-->
 <script type="text/javascript"> 
   //初始化省份信息
   _purchase.event.init();

   _search_url = 'http://www.cnhnb.com/';
   var ssoUrl = "https://passport.cnhnb.com/";
   var _purchase_url = 'http://buy.cnhnb.com/purchase';
   var _search_url ="http://search.cnhnb.com/";
   var hnUserId="1842467";
   _getBreedBycate3Id_url = "../purchase/breed";
   _initFourCategoriesByFirstCategory_url = "../purchase/cate3";
   _purchase.process.initProvince('');
   $(document).ready(function(){
       $("#treaty").click(function(){
           xy_window("checkbox");
       });
   });
   var toolbar = $("#J-global-toolbar");
   if(toolbar && toolbar.length > 0){
	   toolbar.hide();
   }else{
	   setTimeout(function(){
		   toolbar = $("#J-global-toolbar");
		   if(toolbar && toolbar.length > 0){
			   toolbar.hide();
		   }  
	   },1000);   
   }
   
   
   // 拖拽验证码
   
     /* 弹框验证 */
     $('#button-phone').click(function(){
    	 var telephone = $("#telephone").val();
    	 if(telephone.length == 0){
		 	_purchase.view.showPhoneMsg("请输入手机号码");
			return ;
		 }
		 if(!_purchase.phone.m_pattern.test(telephone) ){
			 _purchase.view.showPhoneMsg("请输入正确的手机号码");
			 return ;
		 }
		 if(!button_allow){
		 	alert("验证码已经发送，发送完一分钟后方可重发。");
			return;
		 }
    	 initHtml();
     });
     
     function initHtml(){
       	 setTimeout(dialog_html(),1000);
     }
     
     function dialog_html(){
    	 var html="<div class=\"m-trial\">"
             +"<div class=\"cnt\">"
             +"<div id=\"j-captcha\"></div>"
             +"</div>"
             +"</div>";
    	 windows_custom_open('拖动底部滑块至拼图空缺区域完成验证',html,'420','240');
    	 initCaptcha();
     }
     
     function initCaptcha() {
         var options = {
             "element": "j-captcha",
             "captchaId": "e4eaae44101849a4ac7bbefb61e85a18",
             "mode": "embed",
             "width": 380,
             "verifyCallback": function(ret) {
             	if(ret['value']){ // true:验证通过 false:验证失败
 		    		//提交动作，将valideStr提交到后台
 			        var valideStr= ret["validate"];
 			       valCodeValide = true;
 			       _purchase.event.send_telPhoneCode(valideStr);
 	   				windows_close();
 			    }
             }
         };
         new NECaptcha(options);
     };
   
</script>
</body>
</html>


