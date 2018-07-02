<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<link rel="stylesheet" href="tt.css/base.min.css" />
	<link rel="stylesheet" href="tt.css/regs.css" />
	<link rel="stylesheet" href="tt.css/common.css" />

	<body>
		<div class="header clearfix">
			<div class="logo-box fl">
				<div class="logo fl">
					<a href="#"><img src='tt.img/login/logo.jpg' alt="中国信农网"></a>
				</div>
				<div class="logotext lh22 fl ml10">
					<div class="fs18">用户登录</div>
					<div class="">客服热线：400-008-8688</div>
				</div>
			</div>
			<div class="links fr">
				<span>
                <i class="fl"><img src="tt.img/login/top_ico_01.jpg"></i>
                <div class="lh22 fs14 fl ml10">
                   <p>海量供应</p> 
                   <p>实时更新</p> 
                </div>
            </span>
				<span>
                <i class="fl"><img src="tt.img/login/top_ico_02.jpg"></i>
                <div class="lh22 fs14 fl ml10">
                   <p>采购信息</p> 
                   <p>免费发布</p> 
                </div>
            </span>
				<span>
                <i class="fl"><img src="tt.img/login/top_ico_03.jpg"></i>
                <div class="lh22 fs14 fl ml10">
                   <p>知名产地 </p> 
                   <p>源头好货</p> 
                </div>
            </span>
			</div>
		</div>

		<!--<script type="text/javascript" src="https://static.cnhnb.com/js/home/mobileRedirect.js"></script>
<script type="text/javascript">
	var type="";
	var msg = "";
	var url = "http://m.cnhnb.com/muser/goLogin?returnUrl=http://m.cnhnb.com/";
	if(type == "logout"){
		url = "http://m.cnhnb.com/muser/goLogin?type=logout&returnUrl=http://m.cnhnb.com/";
	}
	if(msg.length>0){
		url+="&msg="+msg;
	}
	uaredirect(url);
</script> -->
		<input type="hidden" id="isRemberPwd" name="isRemberPwd" value="0" />
		<input type="hidden" id="remberUserAccount" name="remberUserAccount" value="" />
		<div class="container clearfix">
			<div class="reg-box reg-left">
				<div class="fl">
					<a href="#"><img src="tt.img/login/PC-0713_meitu_1.jpg"></a>
				</div>
			</div>
			<div class="login-box reg-right">
				<div class="tab_way">
					<a style="color: darkorange;margin-left:90px;">密码登录
					</a>
				</div>
				<div class="login-away">
					<form action="/nongye/userServlet" method="get">
						<input type="hidden" name="isRememberPwd" id="isRememberPwd" />
						<div class="login-input" id="duserAccount">
							<input type="text"  id="user_name" name="user_name"  placeholder="用户名"autocomplete="on"  required="required" >
							<div id="userAccount-error" class="errorWrapper" style="display: none;">
								<label class="error" id="userAccountv">用户名</label>
							</div>
						</div>
						<div class="login-input" id="dpassword">
							<input type="password" id="user_pwd" name="user_pwd" placeholder="请输入密码" minlength="6" maxlength="16" autocomplete="on"  required="required">
							<div id="password-error" class="errorWrapper" style="display: none;">
								<label class="error" id="passwordv">密码为6~16位数字、字母或符号,字母区分大小写</label>
							</div>
						</div>

						
						<div class="login-input">
							<input type="submit" class="sibmit" id="userlogin" phptag="phptag_pc_login_button" value="登录">
							<p class="plab clearfix"><span class="reg-left">
                    	<a href="reg.jsp"> 用户免费注册</a></span>
								<span class="reg-right">
                    	<a href="######">忘记密码</a></span></p>
						</div>
					</form>
				</div>
			</div>
			<link rel="stylesheet" href="css/common.css">

			<div class="footer">
				<div class="container">
					<div class="quick-nav">
						<ul class="icon clearfix">
							<li class="i1"><img src="tt.img/login/quick-nav-icon-1.gif" alt="资源多">
								<p><span>资源多</span><span>海量信息免费发</span></p>
							</li>
							<li class="i2"><img src="tt.img/login/quick-nav-icon-2.gif" alt="优惠大">
								<p><span>优惠大</span><span>挑战市场超低价</span></p>
							</li>
							<li class="i3"><img src="tt.img/login/quick-nav-icon-3.gif" alt="销售广">
								<p><span>销售广</span><span>采购便捷一站式</span></p>
							</li>
							<li class="i4"><img src="tt.img/login/quick-nav-icon-4.gif" alt="更安全">
								<p><span>更安全</span><span>实名认证更安心</span></p>
							</li>
						</ul>
						<div class="list clearfix">
							<dl class="clearfix">
								<dt>新手指南</dt>
								<dd>
									<a href="#306 " target="_blank" rel="nofollow">注册新用户</a>
								</dd>
								<dd>
									<a href="#328" target="_blank" rel="nofollow">实名认证</a>
								</dd>
								<dd>
									<a href="#309" target="_blank" rel="nofollow">找回密码</a>
								</dd>
								<dd>
									<a href="#" target="_blank" rel="nofollow">帮助中心</a>
								</dd>
								<dd>
									<a href="#401" target="_blank" rel="nofollow">安装手机信农网</a>
								</dd>
							</dl>
							<dl class="clearfix">
								<dt>采购商服务</dt>
								<dd>
									<a href="#supply/" target="_blank">找供应</a>
								</dd>
								<dd>
									<a href="#351" target="_blank" rel="nofollow">发布采购</a>
								</dd>
							</dl>
							<dl class="clearfix">
								<dt>供应商服务</dt>
								<dd>
									<a href="#purchase/" target="_blank">找采购</a>
								</dd>
								<dd>
									<a href="#420" target="_blank" rel="nofollow">发布供应</a>
								</dd>
							</dl>
							<dl class="clearfix">
								<dt>交易安全</dt>
								<dd>
									<a href="#411" target="_blank" rel="nofollow">卖家防骗</a>
								</dd>
								<dd>
									<a href="#xt/list-9027/" target="_blank">营销推广</a>
								</dd>
								<dd>
									<a href="#412" target="_blank" rel="nofollow">买家防骗</a>
								</dd>
							</dl>
						</div>
					</div>
					<div class="ptb20 clearfix">
						<div class="foot-qr clearfix">
							<div class="qrcode"><img src="tt.img/login/topbar-hn-app.gif" alt="手机信农网">
								<p><span>扫一扫下载</span><span>手机APP</span></p>
							</div>
							<div class="qrcode"><img src="tt.img/login/topbar-qrcode.gif" alt="信农官方微信">
								<p><span>扫码关注</span><span>信农官方微信</span></p>
							</div>
						</div>
						<ul class="foot-nav clearfix">
							<li>
								<a href="#about.jsp" target="_blank" rel="nofollow">关于我们</a>
							</li>
							<li>
								<a href="#legal.jsp" target="_blank" rel="nofollow">法律声明</a>
							</li>
							<li>
								<a href="#agreement.jsp" target="_blank" rel="nofollow">使用协议</a>
							</li>
							<li>
								<a href="#privacy.jsp" target="_blank" rel="nofollow">版权隐私</a>
							</li>
							<li>
								<a href="#link.jsp" target="_blank" rel="nofollow">友情链接</a>
							</li>
							<li>
								<a href="#case.jsp" target="_blank" rel="nofollow">成功案例</a>
							</li>
							<li>
								<a href="#major.jsp" target="_blank" rel="nofollow">信农大事记</a>
							</li>
							<li>
								<a href="#chanpinku.jsp" target="_blank">产品库</a>
							</li>
							<li>
								<a href="#pinzhongku.jsp" target="_blank">品种库</a>
							</li>
							<li>
								<a href="#sitemap.jsp" target="_blank">网站地图</a>
							</li>
						</ul>
						<div class="copyright">
							<p>湘ICP备13007354号-1 | 服务热线：400-008-8688</p>
							<p>互联网药品信息服务资格证书:(湘)-经营性-2014-0005 湖南信农科技有限公司
								<a href="tt.img/login/HN-zhizhao.jpg" target="_blank">营业执照号</a>
							</p>
							<p>&copy;2011-2018 Cnhnb B2B SYSTEM All Rights Reserved</p>
							<p class="imgs">
								<a target="_blank" href="http://www.hnga.gov.cn" rel="nofollow"><img alt="45" src="tt.img/login/jhd_45.png"></a>
								<a target="_blank" href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" rel="nofollow"><img alt="47" src="tt.img/login/jhd_47.png"></a>
								<a target="_blank" href="http://webscan.360.cn/" rel="nofollow"><img alt="55" src="tt.img/login/jhd_55.png"></a>
								<a key="57e25f0aefbfb061c0939f6d" logo_size="83x30" logo_type="business" href="http://www.anquan.org" rel="nofollow"></a>
								<script src="http://static.anquan.org/static/outer/js/aq_auth.js"></script>
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
			<!--[if lte IE 6]>
    <script type="text/javascript" src="//static.cnhnb.com/4.0/libs/DD_belatedPNG/DD_belatedPNG_0.0.8a-min.js"></script>
    <script type="text/javascript">DD_belatedPNG.fix('.pngfix, a.pngfix:hover');</script>
<![endif]-->

	</body>

</html>