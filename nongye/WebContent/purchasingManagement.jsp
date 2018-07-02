<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>采购管理</title>
<link rel="stylesheet" href="tt.css/base.css" />
<link rel="stylesheet" href="tt.css/common.min.css" />
<link rel="stylesheet" href="tt.css/personal/common_1.css" />
<link rel="stylesheet" href="tt.css/personal/frame.css" />
<link rel="stylesheet" href="tt.css/my-purchase.css" />
<link rel="stylesheet" href="tt.css/left_1.css" />
</head>
<body myHnCode="MyPurchase_sy">

	<div class="topbar">
		<div class="container clearfix">
			<ul class="top-login fl">
				<li>
					<ul class="fl">
						<li class="label orange">您好，欢迎来到信农网</li>
					</ul></li>
			</ul>
			<ul class="top-nav fr">
				<li class="pngfix" id="hn_home_id">
					<div class="label">
						<a href="#" target="_blank">网站首页</a>
					</div></li>
				<li class="pngfix" id="hn_home_id">
					<div class="label">
						<a href="#" target="_blank">触屏版</a>
					</div></li>
				<li class="dropdown pngfix">
					<div class="dropdown-label">
						<i>&nbsp;</i><span><a href="#" target="_blank"
							rel="nofollow">手机信农</a>
						</span>
					</div>
					<div class="dropdown-layer dd-hn-qrcode">
						<div class="qrcode">
							<img src="tt.img/purchase/purchasingManagement/topbar-hn-app.gif"
								alt="手机信农网">
							<p>
								<span>扫一扫下载</span><span>手机APP</span>
							</p>
						</div>
					</div></li>
				<li class="dropdown pngfix">
					<div class="dropdown-label">
						<i>&nbsp;</i><span>关注信农</span>
					</div>
					<div class="dropdown-layer dd-hn-qrcode">
						<div class="qrcode">
							<img src="tt.img/purchase/purchasingManagement/topbar-qrcode.gif"
								alt="信农官方微信">
							<p>
								<span>扫码关注</span><span>信农官方微信</span>
							</p>
						</div>
					</div></li>
				<li class="dropdown pngfix">
					<div class="dropdown-label">
						<i>&nbsp;</i><span><a href="#" target="_blank"
							rel="nofollow">帮助中心</a>
						</span>
					</div>
					<div class="dropdown-layer dd-help-center">
						<p>
							<a href="#" target="_blank" rel="nofollow">常见问题</a> <a href="#"
								target="_blank" rel="nofollow">联系客服</a>
						</p>
					</div></li>
			</ul>
		</div>
	</div>

	<div class="header">
		<div class="wrap">
			<a href="#" target="_blank" class="logo"><img
				src="tt.img/purchase/purchasingManagement/logo_2.jpg" height="40px" />
			</a>
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
					</div> <span class="line"></span></li>
				<li id="zh"><a class="main-link" href="personalInfo.jsp"
					module="2">帐号管理</a>
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
									<a href="javascript:dAlert('bg3');">账户中心</a>
								</dd>
-->
						</dl>
					</div> <span class="line"></span></li>
				<!--<li id="hy">
						<a class="main-link" href="http://ad.cnhnb.com/ad/index" module="3">会员服务</a>
						<div class="sub-nav clearfix">
							<dl>
								<dd>
									<a href="http://authority.cnhnb.com/to/BusinessPush_hy.do">商机推送</a>
								</dd>
								<dd>
									<a href="http://authority.cnhnb.com/to/AdService_hy.do">广告服务</a>
								</dd>
							</dl>
						</div>
						<span class="line"></span>
					</li>-->
			</ul>
			<div class="custom-service">
				<a class="btn-qq" target="_blank" href="#">和我联系</a>
				<div class="tel">
					<h3>客服热线：</h3>
					<span>10000000000</span>
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

			<form action="/nongye/purResServlet" method="post" >
				
				<input type="hidden" name="pageNumber" id="pageNumber" value="1" />
				<input type="hidden" id="recordCount" value="0" /> <input
					type="hidden" id="basePath" value="http://buy.cnhnb.com:80/" />
				<!-- 	<input type="hidden" id="state" name="state"/> -->
				<div class="content">
					<div class="titlebar">
						<div class="titlebar-name">采购管理</div>
					</div>
					<div class="title-split"></div>
					<div class="title-tips">
						<em class="icon"></em>提示：查找功能只能最多查找最近<span class="fs_16 hl">10条记录</span>			
					</div>					
					<div class="my-s-a">
						<div class="my-s-a-a">					
							<input class="my-s-a-a-s" type="text" name="purchase_name" placeholder="输入产品名" /> 
						    <input class="my-s-a-a-b" type="submit" value="查找" />			
						</div>
						<div class="my-s-a-b">
							<span class="release-but mb_15"> <a
								href="lssueProcurement.jsp" target="_blank"><i
									class="lee-ico lee-add"></i>发布采购<i class="lee-ico lee-arraw"></i>
							</a> </span>
						</div>
					</div>
					<div class="my-s-b">
						<div class="my-s-b-a">
							<!-- <a class="cur" href="javascript:changeStatus('')" data="" id="allCount">全部（）</a>
								<a href="javascript:changeStatus(1)" data="1" id="purchaseing">采购中（）</a>
								<a href="javascript:changeStatus(0)" data="0" id="checking">审核中（）</a>
								<a href="javascript:changeStatus(2)" data="2" id="unpass">审核不通过（）</a>
								<a href="javascript:changeStatus(5)" data="5" id="end">已过期（）</a> -->
						</div>
						<div class="my-s-b-b">
							<span class="l1">&nbsp;</span> <span class="l2">产品/品种</span> <span
								class="l3">发布时间</span> <span class="l4">价格</span> <span
								class="l5"> 状态
								
								 </span> <span class="l6">截止时间</span>
						</div>						
						<ul>
							<c:choose>
						<c:when test="${empty list_1}">
									
						</c:when>
						<c:otherwise>
							<c:forEach items="${list_1 }" var="purchase"
								varStatus="i">
								<li class="text-list">							
								<span class="l1"style="margin-left:100px;">${purchase.type }/${purchase.purchase_name} </span>
								<span class="l1"style="margin-left:135px;"> ${purchase.ontime} </span>
								<span class="l1"style="margin-left:130px;"> ${purchase.expected_price} </span>
								<span class="l1 sd1"style="margin-left:120px;"> ${purchase.ischeck} </span>
								<span class="l1"style="margin-left:140px;"> ${purchase.offtime} </span>
								 </span> 
								</span>
								</li>
							</c:forEach>
						</c:otherwise>
					</c:choose>
						</ul>
						
						
						<div class="tab1">
							<div class="list list-inquiry">
								<div class="list-ul">

									<div class="error-box">
										<p class="info">
											未找到相关采购信息，你可以 <a href="#" style="color: #f47211"
												target="_blank">发布采购</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="mt_10 w_full fl"></div>
					<div class="page ptb_10 mb_10 tr">
						<center>
							<input type="hidden" id="pageCount" value="200" />
							当前页数:[${curPageNo}/${totalPageSize}] <a href="/nongye/purManagerServlet?curPageNo=1">首页</a>
							<a href="/nongye/purManagerServlet?curPageNo=${curPageNo-1}">上一页</a> <a
								href="/nongye/purManagerServlet?curPageNo=${curPageNo+1}">下一页</a> <a
								href="/nongye/purManagerServlet?curPageNo=${totalPageSize}">尾页</a>
						</center>
					</div>
				</div>
			</form>

		</div>
		<!-- frame-container /-->
	</div>
	

	<div class="footer">
		<div class="container">
			<div class="ptb20 clearfix">
				<div class="foot-qr clearfix">
					<div class="qrcode">
						<img src="tt.img/purchase/purchasingManagement/topbar-hn-app.gif"
							alt="手机信农网">
						<p>
							<span>扫一扫下载</span><span>手机APP</span>
						</p>
					</div>
					<div class="qrcode">
						<img src="tt.img/purchase/purchasingManagement/topbar-qrcode.gif"
							alt="信农官方微信">
						<p>
							<span>扫码关注</span><span>信农官方微信</span>
						</p>
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
					<p>湘ICP备13007354号-1 | 服务热线：400-008-8688</p>
					<p>
						互联网药品信息服务资格证书:(湘)-经营性-2014-0005 湖南信农科技有限公司 <a
							href="http://pageblockslookup.cnhnb.com/media/filebin/HN-zhizhao.jpg"
							target="_blank">营业执照号</a>
					</p>
					<p>&copy;2011-2018 Cnhnb B2B SYSTEM All Rights Reserved</p>
					<p class="imgs">
						<a target="_blank" href="#" rel="nofollow"><img alt="45"
							src="//static.cnhnb.com/myhn/message/images/jhd_45.png">
						</a> <a target="_blank" href="#" rel="nofollow"><img alt="47"
							src="//static.cnhnb.com/myhn/message/images/jhd_47.png">
						</a> <a target="_blank" href="#" rel="nofollow"><img alt="55"
							src="//static.cnhnb.com/myhn/message/images/jhd_55.png">
						</a>
					</p>
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
    <script type="text/javascript" src="tt.js/jquery-1.7.2.min.js"></script>   
	<script type="text/javascript">
        window.onload=function get(){
 		var value=document.getElementsByClassName("sd1");
 		for(var i=0;i<value.length;i++){
 			
 			if(value[i].innerHTML==0){
 		 	
 		 	value[i].innerHTML="未审核";
 			document.getElementsByClassName("sd1").innerHTML=value[i].innerHTML;
 			}
 			else if (value[i].innerHTML==1) {
 			value[i].innerHTML="审核通过";
 			document.getElementsByClassName("sd1").innerHTML=value[i].innerHTML;
 			}
			else if(value[i].innerHTML==2){
			value[i].innerHTML="审核中";
 			document.getElementsByClassName("sd1").innerHTML=value[i].innerHTML;	
			}
 		}
 		var oMenu = document.getElementById('menu');
 		var aH2 = oMenu.getElementsByTagName('h2');
 		var aUl = oMenu.getElementsByTagName('ul');

 		for(var i = 0; i < aH2.length; i++) {
 			aH2[i].index = i; /*遍历h2节点,将值赋给索引位置*/
 			aH2[i].onclick = function() {  /* 点击h2触发*/ 
 				for(var i = 0; i < aUl.length; i++) {    /*遍历ul节点*/
 					if(i == this.index) { /*如果h2索引和ul索引i一样时*/
 						if( aUl[this.index].style.display == 'block') /* 如果一开始就是展开block*/
 						{
 							aUl[this.index].style.display = 'none'; /*那就收起吧*/
 							aH2[this.index].className = "active11"; /*蓝色*/
 						} 
 						else {
 							aUl[this.index].style.display = 'block'; /*没满足上面的if时,展开*/
 							aH2[this.index].className = 'active'; /*红色*/
 						}
 					} else {
 						aUl[i].style.display ='none'; /*点击的index与i不一样的display为none 收起*/
 						aH2[i].className = "active11";
 					}
 				}
 			}
 		}
 }    
 </script>
  	
   
</body>

</html>