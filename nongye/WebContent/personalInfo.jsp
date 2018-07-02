<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的个人信息</title>
<link rel="stylesheet" href="tt.css/base.min.css">
<link rel="stylesheet" href="tt.css/common.min.css">
<link rel="stylesheet" href="tt.css/personal/frame.css">
<link rel="stylesheet" href="tt.css/personal/common_1.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="tt.css/user-info.css" />
	<link rel="stylesheet" href="tt.css/left_1.css" />
<script type="text/javascript" src="tt.js/city_sanjilaindong.js"></script>
	<!-- 复选框认证 -->
	<script type="text/javascript">
		function checkbox(elm) {
			var obj = document.getElementsByName("type");
			var num = 0;
			for(var i = 0; i < obj.length; i++)
				if(obj[i].checked)
					num += 1;
			if(num > 3) {
				alert("最多可以选择3个！");
				elm.checked = false;
			}
		}
	</script>
</head>
<body myHnCode="PersonalInfo_zh">


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
					<div class="dropdown-label">
						<i>&nbsp;</i><span><a href="#" target="_blank"
							rel="nofollow">手机信农</a> </span>
					</div>
					<div class="dropdown-layer dd-hn-qrcode">
						<div class="qrcode">
							<img src="tt.img/personalInfo/topbar-hn-app.gif" alt="手机信农网">
							<p>
								<span>扫一扫下载</span><span>手机APP</span>
							</p>
						</div>
					</div>
				</li>
				<li class="dropdown pngfix">
					<div class="dropdown-label">
						<i>&nbsp;</i><span>关注信农</span>
					</div>
					<div class="dropdown-layer dd-hn-qrcode">
						<div class="qrcode">
							<img src="tt.img/personalInfo/topbar-qrcode.gif" alt="信农官方微信">
							<p>
								<span>扫码关注</span><span>信农官方微信</span>
							</p>
						</div>
					</div>
				</li>
				<li class="dropdown pngfix">
					<div class="dropdown-label">
						<i>&nbsp;</i><span><a href="#" target="_blank"
							rel="nofollow">帮助中心</a> </span>
					</div>
					<div class="dropdown-layer dd-help-center">
						<p>
							<a href="#" target="_blank" rel="nofollow">常见问题</a><a href="#"
								target="_blank" rel="nofollow">联系客服</a>
						</p>
					</div>
				</li>
			</ul>
		</div>
	</div>

	<div class="header">
		<div class="wrap">
			<a href="#" target="_blank" class="logo"><img
				src="tt.img/personalInfo/logo_2.jpg"height="40px;" /> </a>
			<ul class="head-nav clearfix">
				<li id="sy"><a class="main-link" href="#">首页</a>
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
					</div> <span class="line"></span>
				</li>
				<li id="zh"><a class="main-link" href="#" module="2">帐号管理</a>
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
							<!--<dd><a href="javascript:dAlert('bg6');">账户中心</a></dd>-->
						</dl>
					</div> <span class="line"></span>
				</li>


				</li>
			</ul>
			<div class="custom-service">
				<a class="btn-qq" target="_blank" href="#">和我联系</a>
				<div class="tel">
					<h3>客服热线：</h3>
					<span>1000-1000-000</span>
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
			<div class="frame-title">个人信息</div>
			<div class="category-sub-tabs">
				<ul class="tabs clearfix">
					<li class="cur"><a href="baseInfo">个人资料完善</a></li>

				</ul>
			</div>
			<div class="tabcont">

				<div class="content">
					<div class="tab-main">
					
					 <form action="/nongye/personalInfoServlet" method="post">
					
						<!-- <div class="fieldline">
							<div class="c1">
								<em class="star">*</em>登录名：
							</div>
							<div class="c2">
								<input type="text" maxlength="32" placeholder=""
									id="userAccount" readonly="readonly" value="" class="txt" />
							</div>
							<span class="reg-hint"> <i class="reg-ico-1"
								style="display: none;">&nbsp;</i> <i class="reg-ico-2"
								style="display: none;">&nbsp;</i> <span class="red"
								id="userAccountv"></span> </span>
						</div>
						<div class="fieldline">
							<div class="c1">
								<em class="star">*</em>姓名：
							</div>
							<div class="c2">
								<input type="text" maxlength="32" value="" id="linkMan"
									name="linkMan" class="txt"
									validate="{required:true,messages:{required:'姓名不能为空'}}" />
							</div>
							<span class="reg-hint"> <i class="reg-ico-1"
								style="display: none;">&nbsp;</i> <i class="reg-ico-2"
								style="display: none;">&nbsp;</i> <span class="red"
								id="linkManv"></span> </span>
						</div> -->
						<div class="fieldline checkbox clearfix">
							<div class="c1">
								<em class="star">*</em>行业类型：
							</div>
							<div class="c2">
								
								<span><input type="checkbox" name="type" value="批发商"  onclick="checkbox(this);">批发商</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="代办"  onclick="checkbox(this);">代办</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="代卖"  onclick="checkbox(this);">代卖</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="超市"  onclick="checkbox(this);">超市</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="门店"  onclick="checkbox(this);">门店</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="酒店"  onclick="checkbox(this);">酒店</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="餐饮店" onclick="checkbox(this);" >餐饮店</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="农产品加工" onclick="checkbox(this);" >农产品加工</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="合作社" onclick="checkbox(this);" >合作社</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="种植户" onclick="checkbox(this);" >种植户</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="养殖户" onclick="checkbox(this);" >养殖户</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="种植企业"  onclick="checkbox(this);">种植企业</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="养殖企业"  onclick="checkbox(this);">养殖企业</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="苗木花卉商"  onclick="checkbox(this);">苗木花卉商</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="农机厂商"  onclick="checkbox(this);">农机厂商</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="农资厂商"  onclick="checkbox(this);">农资厂商</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="农资零售商" onclick="checkbox(this);" >农资零售商</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="物流/仓储" onclick="checkbox(this);" >物流/仓储</span>
							
								
								
									
										
									
							
								<span><input type="checkbox" name="type" value="司机" onclick="checkbox(this);" >司机</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="仓储/冷库" onclick="checkbox(this);" >仓储/冷库</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="采购商"  onclick="checkbox(this);">采购商</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="微商"  onclick="checkbox(this);">微商</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="信息站"  onclick="checkbox(this);">信息站</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="出口企业"  onclick="checkbox(this);">出口企业</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="外包服务商"  onclick="checkbox(this);">外包服务商</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="农业技术人员" onclick="checkbox(this);" >农业技术人员</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="物流公司"  onclick="checkbox(this);">物流公司</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="村级合作人"  onclick="checkbox(this);">村级合作人</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="农产品贸易公司"  onclick="checkbox(this);">农产品贸易公司</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="供应商" onclick="checkbox(this);" >供应商</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="加工厂"  onclick="checkbox(this);">加工厂</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="微商城"  onclick="checkbox(this);">微商城</span>
							
								
								
									
								
								<span><input type="checkbox" name="type" value="果品分拣厂"  onclick="checkbox(this);">果品分拣厂</span>

								<div class="checkbox-hint">温馨提示：选定后请慎重修改(目前支持选三个)</div>
							</div>
						</div>
						 <div class="fieldline">
							<div class="c1">QQ邮箱：</div>
							<div class="c2">
								<input type="text" maxlength="32" id="email" name="email"
									class="txt" />
							</div>
							<span class="reg-hint"> <i class="reg-ico-1"
								style="display: none;">&nbsp;</i> <i class="reg-ico-2"
								style="display: none;">&nbsp;</i> <span class="red" id="qqv"></span>
							</span>
						</div>
						<div class="fieldline">
							<div class="c1">固定电话：</div>
							<div class="c2">
								<input type="text" maxlength="4" value="86" class="pguodai txt"
									readonly="readonly" /><em class="gang">-</em> <input
									type="text" placeholder="区号" maxlength="4" id="telArea"
									name="telArea" value="" class="pquhao txt" /><em class="gang">-</em>
							
								<input type="text" placeholder="电话号码" id="tel_number"
									name="tel_number"  class="pphone txt" />
							</div>
							<span class="reg-hint"> <i class="reg-ico-1"
								style="display: none;">&nbsp;</i> <i class="reg-ico-2"
								style="display: none;">&nbsp;</i> <span class="red" id="areav"></span>
							</span>
						</div>
						<div class="fieldline">
							<div class="c1">邮政编码：</div>
							<div class="c2">
								<input type="text" id="post_code" name="post_code"
									minlength="6"  maxlength="6"  class="txt noime"/>
							</div>
							<span class="reg-hint"> <i class="reg-ico-1"
								style="display: none;">&nbsp;</i> <i class="reg-ico-2"
								style="display: none;">&nbsp;</i> <span class="red" id="faxv"></span>
							</span>
						</div>

						<div class="fieldline fd-clr" id="mem-add">
							<div class="c1 cradio">
								<em class="star">*</em> 联系地址：
							</div>
							<div class="c2">

								<select id="province" class="w_100" name="province"></select>
								 <select id="city" class="w_100" name="city"></select> 
								 <select id="area" class="w_100" name="area"></select>
								 <input type="text" name="address" id="address" placeholder="详细地址" class="txt">
								</div>	
								<script type="text/javascript">
								
								addressInit('province','city','area');
			
								</script>

							<span class="reg-hint"> <i class="reg-ico-1"
								style="display: none;">&nbsp;</i> <i class="reg-ico-2"
								style="display: none;">&nbsp;</i> <span class="red"
								id="proviceIdv"></span> </span>
						</div> 
						<div class="submit-wrapper fd-clr">
							<div class="c1">&nbsp;&nbsp;</div>
							<div class="c2">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button hidefocus="true" class="submit" name="submit"
									type="submit">保存</button>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
		<!-- frame-container /-->
		
	</div>

	<div class="footer">
		<div class="container">
			<div class="ptb20 clearfix">
				<div class="foot-qr clearfix">
					<div class="qrcode">
						<img src="tt.img/personalInfo/topbar-hn-app.gif" alt="手机信农网">
						<p>
							<span>扫一扫下载</span><span>手机APP</span>
						</p>
					</div>
					<div class="qrcode">
						<img src="tt.img/personalInfo/topbar-qrcode.gif" alt="信农官方微信">
						<p>
							<span>扫码关注</span><span>信农官方微信</span>
						</p>
					</div>
				</div>
				<ul class="foot-nav clearfix">
					<li><a href="#about.jsp" target="_blank" rel="nofollow">关于我们</a>
					</li>
					<li><a href="#legal.jsp" target="_blank" rel="nofollow">法律声明</a>
					</li>
					<li><a href="#agreement.jsp" target="_blank" rel="nofollow">使用协议</a>
					</li>
					<li><a href="#privacy.jsp" target="_blank" rel="nofollow">版权隐私</a>
					</li>
					<li><a href="http://www.cnhnb.com/link.jsp" target="_blank"
						rel="nofollow">友情链接</a></li>
					<li><a href="#case.jsp" target="_blank" rel="nofollow">成功案例</a>
					</li>
					<li><a href="#major.jsp" target="_blank" rel="nofollow">信农大事记</a>
					</li>
					<li><a href="http://www.cnhnb.com/chanpinku.jsp"
						target="_blank">产品库</a></li>
					<li><a href="http://www.cnhnb.com/sitemap.jsp" target="_blank">网站地图</a>
					</li>
				</ul>
				<div class="copyright">
					<p>湘ICP备13007354号-1 | 服务热线：400-008-8688</p>
					<p>
						互联网药品信息服务资格证书:(湘)-经营性-2014-0005 湖南信农科技有限公司 <a
							href="http://pageblockslookup.cnhnb.com/media/filebin/HN-zhizhao.jpg"
							target="_blank">营业执照号</a>
					</p>
					<p>&copy;2011-2018 Cnhnb B2B SYSTEM All Rights Reserved</p>
					<p class="imgs">
						<a target="_blank" href="http://www.hnga.gov.cn/" rel="nofollow"><img
							alt="45" src="//static.cnhnb.com/myhn/message/images/jhd_45.png">
						</a><a target="_blank" href="http://www.beianbeian.com/"
							rel="nofollow"><img alt="47"
							src="//static.cnhnb.com/myhn/message/images/jhd_47.png"> </a><a
							target="_blank" href="http://webscan.360.cn/" rel="nofollow"><img
							alt="55" src="//static.cnhnb.com/myhn/message/images/jhd_55.png">
						</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="tt.js/left.js"></script>
	<div class="hidden"></div>
</body>
</html>