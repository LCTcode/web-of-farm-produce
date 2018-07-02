<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
<title>供应订单</title>
<link rel="stylesheet" type="text/css" media="screen" href="tt.css/order/common.css">
<link rel="stylesheet" type="text/css" media="screen" href="tt.css/core/top_foot.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="tt.css/base.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="tt.css/common.css">
<link rel="stylesheet" type="text/css" media="screen" href="tt.css/personal/common_1.css">
<link rel="stylesheet" type="text/css" media="screen" href="tt.css/personal/frame.css">
<link rel="stylesheet" type="text/css" media="screen" href="tt.css/order/orderlist.css">
<link rel="shortcut icon" type="image/x-icon" href="tt.img/purchase/purchasingOrder/favicon.ico"/>
<link rel="stylesheet" href="tt.css/left_1.css" />
<script type="text/javascript">
    var _path = "/" , _rootPath = "http://order.cnhnb.com:80/" , _basePath = "http://order.cnhnb.com:80/";
</script>
</head>
<body myHnCode="MySellersOrder_sy">


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
          <div class="qrcode"><img src="tt.img/purchase/purchasingOrder/topbar-hn-app.gif" alt="手机信农网">
            <p><span>扫一扫下载</span><span>手机APP</span></p>
          </div>
        </div>
      </li>
      <li class="dropdown pngfix">
        <div class="dropdown-label"><i>&nbsp;</i><span>关注信农</span></div>
        <div class="dropdown-layer dd-hn-qrcode">
          <div class="qrcode"><img src="tt.img/purchase/purchasingOrder/topbar-qrcode.gif" alt="信农官方微信">
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


<div class="header clearfix">
    <div class="wrap">
        <a href="#" target="_blank" class="logo"><img src="tt.img/supply/supplyOrder/logo_2.jpg"height="40px;" /></a>
        <ul class="head-nav clearfix">
            <li id="sy">
                <a class="main-link" href="#">首页</a>
                <div class="sub-nav sub-nav-index clearfix">
                     <dl>
                        <dt>我的采购</dt>
                        <dd><a href="http://localhost:8080/nongye/purManagerServlet">采购管理</a></dd>
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
          <!--   <li id="hy">
                <a class="main-link" href="http://ad.cnhnb.com/ad/index" module="3">会员服务</a>
                <div class="sub-nav clearfix">
                    <dl>
                        <dd><a href="http://authority.cnhnb.com/to/BusinessPush_hy.do">商机推送</a></dd>
                        <dd><a href="http://authority.cnhnb.com/to/AdService_hy.do">广告服务</a></dd>
                    </dl>
                </div>
                <span class="line"></span>
            </li> -->
        </ul>
        <div class="custom-service">
            <a class="btn-qq" target="_blank" href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4000088688&aty=0&a=0&curl=&ty=1">和我联系</a>
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
    <form id= "OrderQuery" name="OrderQuery" action="http://order.cnhnb.com/order/seller/list" method="post">
    <input type="hidden" name="state" id="state" value=""/>
    <input type="hidden" name="backFlag" id="backFlag" value=""/>
    <input type="hidden" name="evaluate" id="evaluate" value=""/>
    <input type="hidden" name="pageNumber" id="pageNumber" value=""/>
    <div class="frame-title mb10">供应订单</div>
    <div class="order-nav" id="seller-nav">
      <ul>
        <li class="on">
        	<a href="javascript:void(0);" data-state="">所有订单</a>
        </li>
        <li >
        	<a href="javascript:void(0);" data-state="0">待买家付款 
        	</a>
        </li>
        <li >
        	<a href="javascript:void(0);"  data-state="1" data-back="0">待发货 
        	</a>
        </li>
        <li >
        	<a href="javascript:void(0);" data-state="2">已发货 
        	</a>
        </li>
        <li >
        	<a href="javascript:void(0);" data-state="1" data-back="1">退款中
        	</a>
        </li>
        <li >
        	<a href="javascript:void(0);" data-state="3" data-evaluate="0" >待评价 
        	</a>
        </li>
        <li  >
        	<a href="javascript:void(0);" data-state="3">成功的订单 
        	</a>
        </li>
        <li >
        	<a href="javascript:void(0);" data-state="4">关闭的订单 
        	</a>
        </li>
      </ul>
    </div>
    <!--买家订单管理开始-->
    <div class="orderlist">
      <div class="ol-top">
        <div class="fl">
          <ul>
            <li>
              <label>商品名称</label>
              <input type="text" name="productName" value=""/>
              <label class="ml140">下单时间</label>
              <input name="startTime" id="startTime" class="input date-start" 
              	value="" readonly="readonly" size="10" type="text" 
              	onfocus="var startTime=$dp.$('lastTime');WdatePicker({onpicked:function(){lastTime.focus();},maxDate:'#F{$dp.$D(\'lastTime\')}'})">
              <span>至</span>
              <input name="lastTime" id="lastTime" class="input date-end" 
              	value="" 
              	readonly="readonly" size="10" type="text" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'startTime\')}'})">
            </li>
            <li>
              <label>订单编号</label>
              <input type="text" name="saleCode" value=""/>
              <span class="ml140">订单来源</span>
              <select id="sourceFrom" name="sourceFrom">
                <option value="" selected="selected" >全部</option>
                <option value="0"  >PC</option>
                <option value="2"  >安卓</option>
                <option value="3"  >苹果</option>
                <option value="4"  >H5</option>
              </select>
            </li>
            <li>
              <span>支付方式</span>
              <select id="payWay" name="payWay">
                <option value="" selected="selected" >全部</option>
                <option value="1" >线上支付</option>
                <option value="2" >线下支付</option>
              </select>
            </li>
          </ul>
        </div>
        <div class="fr">
          <a href="javascript:void(0);" id="sellerSearch" class="ol-search but">搜索</a>
          <a href="javascript:void(0);" id="resetSellQuery"  class="ol-reset but">重置</a>
        </div>
      </div>
      <div class="ol-con">
        <table class="order-tb">
          <colgroup>
            <col class="commodity-col">
            <col class="price-col">
            <col class="number-col">
            <col class="payment-col">
            <col class="condition-col">
            <col class="operate-col">
          </colgroup>
          <thead>
          <tr>
            <th>商品</th>
            <th>单价（元）</th>
            <th>数量</th>
            <th>实付款（元）</th>
            <th>
              <div class="order-state-cont">
                <div class="state-txt">订单状态<b></b></div>
                <div class="state-list">
                  <ul>
                    <li>
                      <a href="#" data-state="" class="curr"><b></b>全部状态</a>
                    </li>
                    <li>
                      <a href="#" data-state="5"><b></b>待买家付款</a>
                    </li>
                    <li>
                      <a href="#" data-state="1" data-back="0"><b></b>待发货</a>
                    </li>
                    <li>
                      <a href="#" data-state="2"><b></b>待确认收货</a>
                    </li>
                    <li>
                      <a href="#" data-state="1" data-back="1"><b></b>退款中</a>
                    </li>
                    <li>
                      <a href="#" data-state="3"><b></b>交易成功</a>
                    </li>
                    <li>
                      <a href="#" data-state="4"><b></b>交易关闭</a>
                    </li>
                  </ul>
                </div>
              </div>
            </th>
            <th>交易操作</th>
          </tr>
          </thead>
          
	           <tbody class="nobb null">
	            <tr><td colspan="6">没有符合条件的订单信息</td></tr>
	           </tbody>
           
 		  
        </table>
        <!--page翻页-->
		
        <!--page翻页 end/-->
      </div>
    </div>
   </form>
  </div>
</div>
	<script type="text/javascript" src="tt.js/left.js"></script>
<div class="footer">
  <div class="container">
    <div class="quick-nav">
      <ul class="icon clearfix">
        <li class="i1"><img src="//static.cnhnb.com/4.0/images/index/quick-nav-icon-1.gif" alt="资源多">
          <p><span>资源多</span><span>海量信息免费发</span></p>
        </li>
        <li class="i2"><img src="//static.cnhnb.com/4.0/images/index/quick-nav-icon-2.gif" alt="优惠大">
          <p><span>优惠大</span><span>挑战市场超低价</span></p>
        </li>
        <li class="i3"><img src="//static.cnhnb.com/4.0/images/index/quick-nav-icon-3.gif" alt="销售广">
          <p><span>销售广</span><span>采购便捷一站式</span></p>
        </li>
        <li class="i4"><img src="//static.cnhnb.com/4.0/images/index/quick-nav-icon-4.gif" alt="更安全">
          <p><span>更安全</span><span>实名认证更安心</span></p>
        </li>
      </ul>
      <div class="list clearfix">
        <dl class="clearfix">
          <dt>新手指南</dt>
          <dd><a href="http://help.cnhnb.com/problem/detail/306 "target="_blank" rel="nofollow">注册新用户</a></dd>
          <dd><a href="http://help.cnhnb.com/problem/detail/328" target="_blank" rel="nofollow">实名认证</a></dd>
          <dd><a href="http://help.cnhnb.com/problem/detail/309" target="_blank" rel="nofollow">找回密码</a></dd>
          <dd><a href="http://help.cnhnb.com/service.htm" target="_blank" rel="nofollow">帮助中心</a></dd>
          <dd><a href="http://help.cnhnb.com/problem/detail/401" target="_blank" rel="nofollow">安装手机信农网</a></dd>
        </dl>
        <dl class="clearfix">
          <dt>采购商服务</dt>
          <dd><a href="http://www.cnhnb.com/supply/" target="_blank">找供应</a></dd>
          <dd><a href="http://help.cnhnb.com/problem/detail/351" target="_blank" rel="nofollow">发布采购</a></dd>
        </dl>
        <dl class="clearfix">
          <dt>供应商服务</dt>
          <dd><a href="http://www.cnhnb.com/purchase/" target="_blank">找采购</a></dd>
          <dd><a href="http://help.cnhnb.com/problem/detail/420" target="_blank" rel="nofollow">发布供应</a></dd>
        </dl>
        <dl class="clearfix">
          <dt>交易安全</dt>
          <dd><a href="http://help.cnhnb.com/problem/detail/411" target="_blank" rel="nofollow">卖家防骗</a></dd>
          <dd><a href="http://www.cnhnb.com/xt/list-9027/" target="_blank">营销推广</a></dd>
          <dd><a href="http://help.cnhnb.com/problem/detail/412" target="_blank" rel="nofollow">买家防骗</a></dd>
        </dl>
      </div>
    </div>
    <div class="ptb20 clearfix">
      <div class="foot-qr clearfix">
        <div class="qrcode"><img src="tt.img/purchase/purchasingOrder/topbar-hn-app.gif" alt="手机信农网">
          <p><span>扫一扫下载</span><span>手机APP</span></p>
        </div>
        <div class="qrcode"><img src="tt.img/purchase/purchasingOrder/topbar-qrcode.gif" alt="信农官方微信">
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
<!--<script  id="hn_analytics_all" type="text/javascript" src="//static.cnhnb.com/js/analytics/analytics.cnhnb.com-min.js?version=20150809"></script>-->
<!--<script type="text/javascript" src="//hnlog.cnhnb.com/js/online.behavior.funnel.js?v=1"></script>-->
</div>
<!--[if lte IE 6]>
    <script type="text/javascript" src="//static.cnhnb.com/4.0/libs/DD_belatedPNG/DD_belatedPNG_0.0.8a-min.js"></script>
    <script type="text/javascript">DD_belatedPNG.fix('.pngfix, a.pngfix:hover');</script>
<![endif]-->

<!--//申请退款-->
<div class="popup popup-refund-apply">
	<div class="mask"></div>
	<div class="box">
		<div class="title">
			<h2>提示</h2>
			<a href="javascript:void(0);" class="close">
			<img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg" /></a>
		</div>
		<div class="content">
			<h2>提交成功！</h2>
			<p>
				<span>3</span>秒后自动关闭
			</p>
		</div>
	</div>
</div>
<!--//拒绝退款-->
<div class="popup popup-refund-refused">
	<div class="mask"></div>
	<div class="box">
		<div class="title">
			<h2>拒绝退款</h2>
			<a href="javascript:void(0);" class="close">
			<img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg" /></a>
		</div>
		<div class="content">
			<h2>
				<span class="red">*</span>请选择拒绝退款理由：<span class="error-waring" style="display:none;">请选择拒绝退款的理由</span>
			</h2>
			<p>
				<input type="checkbox" name="ckb_refuse_reason" value="已发货,不能退款"/>已发货,不能退款
			</p>
			<p>
				<input type="checkbox" name="ckb_refuse_reason" value="商品已经准备,退款将导致重大损失"/>商品已经准备,退款将导致重大损失
			</p>
			<h2>
				您也可以详细说明一下情况
			</h2>
			<textarea class="message" id="remarks"></textarea>
			<p class="number">
				<span class="red" id="numberOrg">0</span>/100
			</p>
			<div class="btn">
				<a href="javascript:void(0);" class="confirm">确认</a> <a
					href="javascript:void(0);" class="close">取消</a>
			</div>
		</div>
	</div>
</div>

<!--//同意退款-->
<div class="popup popup-refund-agree">
	<div class="mask"></div>
	<div class="box">
		<div class="title">
			<h2>同意退款</h2>
			<a href="javascript:void(0);" class="close">
			<img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg" /></a>
		</div>
		<div class="content">
			<ul>
				<li><label>订单总金额：</label><span class="lbl_pay_amount">0.00元</span></li>
				<li class="pt10"><label>买家申请退款金额：</label><span style="color: red;" class="lbl_amount">元</span></li>
			</ul>
			<div class="btn">
				<a href="javascript:void(0);" class="confirm">确认</a> <a
					href="javascript:void(0);" class="close">取消</a>
			</div>
		</div>
	</div>
</div>
<!-- 公用错误提示 -->
<div class="popup popup-tip" style="display: none;">
	<div class="mask"></div>
	<div class="box">
		<div class="title">
			<h2>提示</h2>
			<a href="javascript:void(0);" class="close">
			<img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg"></a>
		</div>
		<div class="content">
			<h2 class="h2"></h2>
			<p>如有疑问，建议您致电信农客服：400-008-8688。</p>
		</div>
	</div>
</div>
<!-- 确定框提示 -->
<div class="popup popup-confirm popup-del" style="display: none;">
	<div class="mask"></div>
	<div class="box">
		<div class="title">
			<h2>提示</h2>
			<a href="javascript:void(0);" class="close">
			<img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg"></a>
		</div>
		<div class="content">
			<div class="tip"></div>
			<div class="btn">
				<a href="javascript:void(0);" class="confirm" id="">确认</a> 
				<a href="javascript:void(0);" class="close">取消</a>
			</div>
		</div>
	</div>
</div>

<!--//买家取消订单-->
<div class="popup popup-cancel" id="buyer-cancel" style="display: none;">
    <div class="mask"></div>
    <div class="box">
        <div class="title">
            <h2>提示</h2>
            <a href="#" class="close"><img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg" /></a>
        </div>
        <div class="content">
            <p class="tip">您确定要取消订单吗？取消订单后，不能恢复。</p>
            <div class="sel">
                <span>请选择取消订单的理由：</span>
                <div class="select">
                    <label class="cancelReason">我不想买了</label>
                    <ul>
                        <li>我不想买了</li>
                        <li>信息填写错误，重新下单</li>
                        <li>我想当面交易</li>
                        <li>卖家缺货</li>
                        <li>付款遇到问题（如余额不足、不知道怎么付款等）</li>
                        <li>买错了</li>
                        <li>其他原因</li>
                    </ul>
                 </div>
             </div>
             <div class="btn">
                 <a href="javascript:void(0);" class="confirm" id="buyerCancelOrder"  data-id="" data-urlType="">确认</a>
                 <a href="javascript:void(0);" class="close">暂不取消</a>
             </div>
         </div>
     </div>
 </div>
 <!--//卖家取消订单-->
 <div class="popup popup-cancel" id="seller-cancel" style="display: none;">
    <div class="mask"></div>
    <div class="box">
        <div class="title">
            <h2>提示</h2>
            <a href="#" class="close"><img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg" /></a>
        </div>
        <div class="content">
            <p class="tip">您确定要取消订单吗？取消订单后，不能恢复。</p>
            <div class="sel">
                <span>请选择取消订单的理由：</span>
                <div class="select">
                    <label class="cancelReason">我不想卖了</label>
                    <ul>
                         <li>我不想卖了</li>
                         <li>我想当面交易</li>
                         <li>卖家缺货</li>
                         <li>其他原因</li>
                    </ul>
                 </div>
             </div>
             <div class="btn">
                 <a href="javascript:void(0);" class="confirm" id="sellerCancelOrder" data-id="" data-urlType="">确认</a>
                 <a href="javascript:void(0);" class="close">暂不取消</a>
             </div>
         </div>
     </div>
 </div>
 
 
 <!--//买家确定延长收货时间-->
<div class="popup popup-delay" style="display: none;">
    <div class="mask"></div>
    <div class="box">
        <div class="title">
            <h2>确定延长收货时间</h2>
            <a href="#" class="close"><img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg" /></a>
        </div>
        <div class="content">
            <p id="delayTime" data-day="7">每笔订单只能延迟一次（7天）！</p>
            <div class="btn">
                <a href="javascript:void(0);" id="buyerDelayDelivery" data-id="" data-urlType="" class="confirm">确认</a>
                <a href="javascript:void(0);" class="close">取消</a>
            </div>
        </div>
    </div>
</div>

<!--//卖家延长收货时间-->
<div class="popup popup-delays" style="display: none;">
    <div class="mask"></div>
    <div class="box">
        <div class="title">
            <h2>延长收货时间</h2>
            <a href="#" class="close"><img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg" /></a>
        </div>
        <div class="content">
            <p>
                <label>请选择延长的天数：</label>
                <select id="sellerDelayTime">
                    <option value="15">15天</option>
                    <option value="7">7天</option>
                    <option value="3">3天</option>
                </select>
            </p>
            <div class="btn">
                <a href="javascript:void(0);" id="sellerDelayDelivery" data-id="" data-urlType="" class="confirm">确认</a>
                <a href="javascript:void(0);" class="close">取消</a>
            </div>
        </div>
    </div>
</div>

<!--//物流信息-->
<div class="popup popup-infor" style="display: none;">
    <div class="mask"></div>
    <div class="box">
        <div class="title">
            <h2>物流信息</h2>
            <a href="#" class="close"><img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg" /></a>
        </div>
        <div class="content">
            <p class="time">发货时间：2015-12-25  14:35:26</p>
            <p class="company">物流公司：张三丰/18673232073</p>
            <p class="remark">物流单号：湘A12345</p>
            <div class="btn">
                <a href="javascript:void(0);" id="queryTransport" class="close confirm_big">确认</a>
            </div>
        </div>
    </div>
</div>
<!--//卖家发货-->
<div class="popup popup-shipments" style="display: none;">
    <div class="mask"></div>
    <div class="box">
        <div class="title">
            <h2>发货</h2>
            <a href="#" class="close"><img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg" /></a>
        </div>
        <div class="content">
            <div class="c-p">
                <label>物流公司：</label><input type="text" id="logisticsCompany" value="" placeholder="如未涉及第三方物流请填写司机姓名和电话" />
                <div class="errorWrapper" id="logisticsCompany-error" style="display:none;">
                    <label class="error" for="logisticsCompany">请填写物流公司</label>
                </div>
            </div>
            <div class="c-p">
                <label>物流单号：</label><input type="text" id="logisticsNo" value="" placeholder="如果没有物流单号，请填写物流车牌号" />
                <div class="errorWrapper" id="logisticsNo-error" style="display:none;">
                    <label class="error" for="logisticsNo">请填写物流单号</label>
                </div>
            </div>
            <div class="btn">
                <a href="javascript:void(0);" class="confirm" id="sendGoods" data-id="" data-type="" data-urlType="">发货</a>
                <a href="javascript:void(0);" class="close" id="cancelGoods">取消</a>
            </div>
        </div>
    </div>
</div>
<!--//确认删除-->
<div class="popup popup-del" id="orderDel" style="display: none;">
    <div class="mask"></div>
    <div class="box">
        <div class="title">
            <h2>确认删除订单</h2>
            <a href="#" class="close"><img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg" /></a>
        </div>
        <div class="content">
            <div class="tip">删除订单后，您将无法再查看该订单，也无法进行投诉维权，请谨慎操作！</div>
            <div class="btn">
                <a href="javascript:void(0);" id="delOrder" data-id="" data-type="" class="confirm">确认</a>
                <a href="javascript:void(0);" class="close">取消</a>
            </div>
        </div>
    </div>
</div>

<!--//修改运费-->
<div class="popup popup-edit-price" id="modifyFreightAmount" style="display: none;">
    <div class="mask"></div>
    <div class="box">
        <div class="title">
            <h2>修改运费</h2>
            <a href="#" class="close"><img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg" /></a>
        </div>
        <div class="content">
            <ul>
                <li><label>商品总金额：</label><span class="red orderAmount" data-amount=""></span></li>
                <li>
                	<div class="label">运费：</div>
                	<input type="text" class="orderFee" value="" /><span class="unit">元</span>
                	<div class="errorWrapper errorWrapper-3" id="orderFee-error">
	                    <label class="error" for="orderFee">请输入数字</label>
	                </div>
                </li>
               
                <li><label>优惠金额：</label><span class="orderMerchant" data-merchant="" ></span></li>
                <li><label>订单总付款：</label><span class="red orderTotal"></span></li>
            </ul>
            <div class="btn">
                <a href="javascript:void(0);"  data-id="" data-urlType="" class="confirm" id="modifyFee">确认</a>
                <a href="javascript:void(0);" class="close">取消</a>
            </div>
        </div>
    </div>
</div>
<!--//修改优惠金额-->
<div class="popup popup-edit-price" id="modifyMerchantAmount" style="display: none;">
    <div class="mask"></div>
    <div class="box">
        <div class="title">
            <h2>修改优惠</h2>
            <a href="#" class="close"><img src="http://static.cnhnb.com/4.0/images/order/popup-close.jpg" /></a>
        </div>
        <div class="content">
            <ul>
                <li><label>商品总金额：</label><span class="red orderAmount" data-amount=""></span></li>
                <li><label>运费：</label><span class="orderFee" data-fee=""></span></li>
                <li>
                	<div class="label">优惠金额：</div>
                	<input type="text" class="orderMerchant" value="" /><span class="unit">元</span>
                	<div class="errorWrapper errorWrapper-3" id="orderMerchant-error">
	                    <label class="error" for="orderMerchant">请输入数字</label>
	                </div>
                </li>
                <li><label>订单总付款：</label><span class="red orderTotal"></span></li>
            </ul>
            <div class="btn">
                <a href="javascript:void(0);" data-id="" data-urlType="" class="confirm" id="modifyMerchant">确认</a>
                <a href="javascript:void(0);" class="close">取消</a>
            </div>
        </div>
    </div>
</div>
	
 

<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<!--<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/order/common.js"></script>
<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/order/popup.js"></script>
<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/order/out-alert.js"></script>
<script src="http://static.cnhnb.com/4.0/libs/lhgdialog/lhgdialog.min.js?self=true&skin=hn"></script>
<script type="text/javascript" src="http://static.cnhnb.com/myhn/js/core/top_foot.js?v=20170815"></script>-->
<script type='text/javascript' src="js/supply/jquery.qrcode.min.js"></script>
<script type="text/javascript">
var keyword = $("#keyword").length;
if(keyword>0){
	$.getScript("http://static.cnhnb.com/search/default/js/searchTips4.0.js?v=1.1",function(){
		console.log("加载完成");
	}); 
}
</script>
<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/login/login_window.js?v=20160526"></script>
<!-- im静态资源加载 -->
<script src="http://im.cnhnb.com/index.js" type="text/javascript" charset="UTF-8"></script> 

<script type="text/javascript">
if(typeof $.dialog !== 'undefined') {
    $.dialog.loading = function(content, icon, isBlock) {
        return $.dialog({
            content: content || '数据加载中...',
            icon: icon,
            init: function () {
                var className = isBlock ? 'ui_state_loading' : 'ui_state_loading_alt';
                $(this.DOM.border[0]).addClass(className);
            },
            lock: Boolean(isBlock),
            fixed: true,
            title: false,
            resize: false,
            cancel: false,
            ok: false
        });
    };
}
var _hnResourceUrl = "http://static.cnhnb.com/";
$(function(){
	//订单在线聊天
	$(".order-service,.im_btn,#chat").die('click').live('click',function(){
		 dAlert("bg4");
	});
	//订单去付款弹框
	$("#order_paying").live('click',function(){
		 dAlert("bg3");
	});
	$(".phone_tip,#phone_tip").on("click",function(){
		$(".hide-zz").show();
		$(".close-er").css("margin","65px 17px 0 0");
		$("#sbckurl").css("background-image","url("+_hnResourceUrl+"/4.0/images/common/bt_1.png)");
		/*var orderId=$(this).attr("orderId");
		var flag = "seller" || "buyer";
		var content="http://m.cnhnb.com/orderMgr/orderDetail/"+flag+"_"+orderId+"?hx=1";
		alert(content);
		createEwm($("#nwe-erm"), content, 164, 164); */
	});
	$(".close-er").on("click",function(){
		$(".hide-zz").hide();
	})
	/* function createEwm(obj, content, w, h){
		$(obj).jsp('');
		var param = { 
			    render: "table",
			    width: w,
			    height:h,
			    text:  content
		};
		if(window.applicationCache){
			param.render = 'canvas';
		}
		obj.qrcode(param);
		$(".hide-zz").show();
	}
	$(".close-er").on("click",function(){
		$(".hide-zz").hide();
	}) */
});
</script>
<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/personal/common/common.js?v=1"></script>
<script type="text/javascript" src="http://static.cnhnb.com/myhn/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="http://static.cnhnb.com/js/frame/hn.frame.util-0.1.js?v=1"></script>
<script type="text/javascript" src="http://static.cnhnb.com/myhn/js/core/windows.js"></script>
 <script type="text/javascript" src="http://static.cnhnb.com/js/jquery-validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="http://static.cnhnb.com/js/jquery-validation/jquery.metadata.js"></script>
<script type="text/javascript" src="http://static.cnhnb.com/js/jquery-validation/messages_cn.js"></script>
<script type="text/javascript" src="http://static.cnhnb.com/uploader/kissy-min.js" charset="utf-8"></script>
<script type="text/javascript" src="http://static.cnhnb.com/js/frame/hn.kissy.uploader.js"></script>
<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/personal/order/orderlist.js"></script>
<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/order/order-list.js"></script>
<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/order/refundDetail.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		if($(".delayTimer").length > 0){
			$(".delayTimer").each(function(){
				timer.delayDownTimerFn($(this));
			});
		}
		_s.webUrl = "http://order.cnhnb.com/";
		_s.loginUrl = "https://passport.cnhnb.com/myinfo/goLogin?returnUrl=http://order.cnhnb.com/";
		_s.payUrl = "http://hnpay.cnhnb.com/";
		_s.process.init();
		refundDetail.init();
	});
</script>
</body>
</html>
