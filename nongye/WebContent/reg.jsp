<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>信农网注册页面</title>
	</head>
	<link rel="stylesheet" href="tt.css/common.css" />
	<link rel="stylesheet" href="tt.css/base.min.css" />
	<link rel="stylesheet" href="tt.css/regs.css" />
	<script type="text/javascript" src="tt.js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="tt.js/jquery-3.2.1.js"></script>
	 <script type="text/javascript">
	 	function regCheck(){
			var mob_number=document.getElementById("mob_number").value;
			
			var idcard=document.getElementById("idcard").value;
			
			var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
	
			var mob_text=/^[1][3,4,5,7,8][0-9]{9}$/;
			
			if(!mob_text.test(mob_number)){
				alert(document.getElementById("mobile-error").innerText);
				return false;
			}
			else if(!reg.test(idcard)){
				alert("请输入正确的身份证号");
				return false;
			}
			else{return true;}
		} 
	</script> 
	<script>
	function ajaxDemo(){
		var idcard=document.getElementById("idcard").value;
		//alert(idcard);
		$.ajax({
			method : "POST",
			url : "ajaxRegServlet",
			data : {
					"idcard":idcard
						}
			}).done(function(msg) {
						
			var json=$.parseJSON(msg);
			//alert(json);
			if(json==true){
				alert("该身份证已经被注册")
				
			}else{
				alert("身份验证通过可以使用")
			}
			
			
			});
	}
	 
	
	</script>
	<body>
		<div class="header clearfix">
        <div class="logo-box fl">
            <div class="logo fl">
                <a href="http://www.cnhnb.com/"><img src='tt.img/reg/logo.jpg' alt="中国信农网"></a>
            </div>
            <div class="logotext lh22 fl ml10">
                <div class="fs18">用户注册</div>
                <div class="">客服热线：100-000-0000</div>
            </div>
        </div>  
        <div class="links fr">
            <span>
                <i class="fl"><img src="tt.img/reg/top_ico_01.jpg"></i>
                <div class="lh22 fs14 fl ml10">
                   <p>海量供应</p> 
                   <p>实时更新</p> 
                </div>
            </span>
            <span>
                <i class="fl"><img src="tt.img/reg/top_ico_02.jpg"></i>
                <div class="lh22 fs14 fl ml10">
                   <p>采购信息</p> 
                   <p>免费发布</p> 
                </div>
            </span>
            <span>
                <i class="fl"><img src="tt.img/reg/top_ico_03.jpg"></i>
                <div class="lh22 fs14 fl ml10">
                   <p>知名产地 </p> 
                   <p>源头好货</p> 
                </div>
            </span>
        </div>
    </div>

<div class="container">
        <div class="reg-box reg-left">
        	<form action="/nongye/userRegServlet" method="post" id="regFrom" onsubmit="return regCheck()">
	   	    <input type="hidden" name="from" value=""/>
	        <input type="hidden" name="referenceId" value=""/>
            <div class="register">
                <div class="box-border">
                    <label class="lt8">手机号码</label>
                    <input type="text" name="mob_number" id="mob_number" maxlength="11" placeholder="请输入手机号码" autocomplete="off"  required="required">
                    <div id="mobile-error" class="errorWrapper left115" style="display: none;">
                        <label class="error">手机号码错误，请输入13/14/15/17/18开头的11位的手机号</label>
                    </div>
                </div>
                <div class="box-border other">
                    <label class="lt2">短信验证码</label>
                    <input type="text" name="valCode" id="phoneCode" maxlength="4" class="code" autocomplete="off" placeholder="请输入验证码" >
                    <input type="button" class="yzm " id="button-phone" value="获取验证码" ></input>
                    <div id="phoneCode-error" class="errorWrapper left115" style="display: none;">
                        <label class="error">请输入13/14/15/17/18开头的11位数字</label>
                    </div>
                </div>
                
                <div class="box-border">
                    <label class="lt8">登录密码</label>
                    <input  type="password"    name="user_pwd"  id="user_pwd" minlength="6" maxlength="16" placeholder="请设置登录密码6-16位" autocomplete="off"required="required" >
                    <div id="password-error" class="errorWrapper left115" style="display: none;">
                        <label class="error">密码为6~16位数字、字母或符号,字母区分大小写</label>
                    </div>
                </div>
                <div class="box-border">
                    <label class="lt8">您的姓名</label>
                    <input type="text" name="user_name" id="user_name" placeholder="请设置您的姓名" autocomplete="off"required="required" >
                    <div id="linkMan-error" class="errorWrapper left115" style="display: none;">
                        <label class="error">联系人姓名不能为空，请输入3~12位中文字符</label>
                    </div>
                </div>
                
                <div class="box-border">
                    <label class="lt8">您的身份证号</label>
                    <input type="text" name="idcard" id="idcard" placeholder="请设置您的身份证号" autocomplete="off" required="required" onblur="ajaxDemo();">
                    <div id="linkMan-error" class="errorWrapper left115" style="display: none;">
                        <label class="error">身份证号不能为空</label>
                    </div>
                </div>
                
                <div class="box-border">
                    <label class="lt8">统一社会信用代码</label>
                    <input type="text" name="licence" id="licence" placeholder="请设置您的营业执照" autocomplete="off"required="required" >
                    <div id="linkMan-error" class="errorWrapper left115" style="display: none;">
                        <label class="error">营业执照不能为空</label>
                    </div>
                </div>
                
                
                
                
                
                <input type="submit" class="submit" id="reg_next" value="同意协议并注册" onclick="regCheck()"></input>
                <p class="agreement"><a id="treaty" href="javascript:void(0);" target="_self" phptag="phptag_pc_reg_finish">《信农网注册条例》</a></p>
                 <p>   已经注册过？ 请点击<a href="login.jsp" id="goLogin" target="_self" style="color:blue;">直接登录</a></p>
            </div>
            </form>
        </div>
           
        </div>
    </div>
<!--<script type="text/javascript" src="js/hn.frame.validator-0.1.js" ></script>
<script type="text/javascript" src="js/common.js" ></script>-->
<script type="text/javascript" src="tt.js/jquery-1.7.2.min.js" ></script>
<!--<script type="text/javascript" src="js/window.js" ></script>
<script type="text/javascript" src="js/hidershowpassword.min.js" ></script>-->
<div class="footer">
  <div class="container">
    <div class="quick-nav">
      <ul class="icon clearfix">
        <li class="i1"><img src="tt.img/reg/quick-nav-icon-1.gif" alt="资源多">
          <p><span>资源多</span><span>海量信息免费发</span></p>
        </li>
        <li class="i2"><img src="tt.img/reg/quick-nav-icon-2.gif" alt="优惠大">
          <p><span>优惠大</span><span>挑战市场超低价</span></p>
        </li>
        <li class="i3"><img src="tt.img/reg/quick-nav-icon-3.gif" alt="销售广">
          <p><span>销售广</span><span>采购便捷一站式</span></p>
        </li>
        <li class="i4"><img src="tt.img/reg/quick-nav-icon-4.gif" alt="更安全">
          <p><span>更安全</span><span>实名认证更安心</span></p>
        </li>
      </ul>
      <div class="list clearfix">
        <dl class="clearfix">
          <dt>新手指南</dt>
          <dd><a href="#306 "target="_blank" rel="nofollow">注册新用户</a></dd>
          <dd><a href="#328" target="_blank" rel="nofollow">实名认证</a></dd>
          <dd><a href="#309" target="_blank" rel="nofollow">找回密码</a></dd>
          <dd><a href="#" target="_blank" rel="nofollow">帮助中心</a></dd>
          <dd><a href="#401" target="_blank" rel="nofollow">安装手机信农网</a></dd>
        </dl>
        <dl class="clearfix">
          <dt>采购商服务</dt>
          <dd><a href="supplyHall.jsp" target="_blank">找供应</a></dd>
          <dd><a href="#351" target="_blank" rel="nofollow">发布采购</a></dd>
        </dl>
        <dl class="clearfix">
          <dt>供应商服务</dt>
          <dd><a href="procurementDetails.jsp" target="_blank">找采购</a></dd>
          <dd><a href="#420" target="_blank" rel="nofollow">发布供应</a></dd>
        </dl>
        <dl class="clearfix">
          <dt>交易安全</dt>
          <dd><a href="#411" target="_blank" rel="nofollow">卖家防骗</a></dd>
          <dd><a href="http://www.cnhnb.com/xt/list-9027/" target="_blank">营销推广</a></dd>
          <dd><a href="#412" target="_blank" rel="nofollow">买家防骗</a></dd>
        </dl>
      </div>
    </div>
    <div class="ptb20 clearfix">
      <div class="foot-qr clearfix">
        <div class="qrcode"><img src="tt.img/reg/topbar-hn-app.gif" alt="手机信农网">
          <p><span>扫一扫下载</span><span>手机APP</span></p>
        </div>
        <div class="qrcode"><img src="tt.img/reg/topbar-qrcode.gif" alt="信农官方微信">
          <p><span>扫码关注</span><span>信农官方微信</span></p>
        </div>
      </div>
      <ul class="foot-nav clearfix">
        <li><a href="#about.jsp" target="_blank" rel="nofollow">关于我们</a></li>
        <li><a href="#legal.jsp" target="_blank" rel="nofollow">法律声明</a></li>
        <li><a href="#agreement.jsp" target="_blank" rel="nofollow">使用协议</a></li>
        <li><a href="#privacy.jsp" target="_blank" rel="nofollow">版权隐私</a></li>
        <li><a href="http://www.cnhnb.com/link.jsp" target="_blank" rel="nofollow">友情链接</a></li>
        <li><a href="#case.jsp" target="_blank" rel="nofollow">成功案例</a></li>
        <li><a href="#major.jsp" target="_blank" rel="nofollow">信农大事记</a></li>
        <li><a href="http://www.cnhnb.com/chanpinku.jsp" target="_blank">产品库</a></li>
        <li><a href="http://www.cnhnb.com/pinzhongku.jsp" target="_blank">品种库</a></li>
        <li><a href="http://www.cnhnb.com/sitemap.jsp" target="_blank">网站地图</a></li>
      </ul>
      <div class="copyright">
        <p>湘ICP备13007354号-1  | 服务热线：400-008-8688</p>
        <p>互联网药品信息服务资格证书:(湘)-经营性-2014-0005 湖南信农科技有限公司  <a href="http://pageblockslookup.cnhnb.com/media/filebin/HN-zhizhao.jpg" target="_blank">营业执照号</a></p>
        <p>&copy;2011-2018 Cnhnb B2B SYSTEM All Rights Reserved</p>
        <p class="imgs"><a target="_blank" href="http://www.hnga.gov.cn" rel="nofollow"><img alt="45" src="//static.cnhnb.com/myhn/message/images/jhd_45.png"></a><a target="_blank" href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" rel="nofollow"><img alt="47" src="//static.cnhnb.com/myhn/message/images/jhd_47.png"></a><a target="_blank" href="http://webscan.360.cn/" rel="nofollow"><img alt="55" src="//static.cnhnb.com/myhn/message/images/jhd_55.png"></a><a  key ="57e25f0aefbfb061c0939f6d"  logo_size="83x30" logo_type="business"  href="http://www.anquan.org" rel="nofollow"></a><script src="http://static.anquan.org/static/outer/js/aq_auth.js"></script></p>
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

<div class="hidden">
<!--<script  id="hn_analytics_all" type="text/javascript"src="js/analytics.cnhnb.com-min.js"></script>
<script type="text/javascript" src="//hnlog.cnhnb.com/js/online.behavior.funnel.js?v=1"></script>-->
</div>
<!--[if lte IE 6]>
    <script type="text/javascript" src="//static.cnhnb.com/4.0/libs/DD_belatedPNG/DD_belatedPNG_0.0.8a-min.js"></script>
    <script type="text/javascript">DD_belatedPNG.fix('.pngfix, a.pngfix:hover');</script>
<![endif]-->

</body>
	</body>
</html>
