<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业实名认证</title>
<link rel="stylesheet" href="tt.css/base.min.css">
<link rel="stylesheet" href="tt.css/common.min.css">
<link rel="stylesheet" href="tt.css/personal/common_1.css">
<link rel="stylesheet" href="tt.css/common.css">
<link rel="stylesheet" href="tt.css/personal/frame.css">
<link rel="stylesheet" type="text/css" href="tt.css/company-certification.css"/>
<link rel="stylesheet" href="tt.css/left_1.css" />
</head>
<script type="text/javascript">  
    function validForm(fm){  
       fm.action = fm.action + "?corporate_name=" + fm['corporate_name'].value + "&corporate_representative=" + fm['corporate_representative'].value;  
       return true;  
    }  
</script>




<body myHnCode="RealCertification_zh">
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
          <div class="qrcode"><img src="tt.img/businessAttestation/topbar-hn-app.gif" alt="手机信农网">
            <p><span>扫一扫下载</span><span>手机APP</span></p>
          </div>
        </div>
      </li>
      <li class="dropdown pngfix">
        <div class="dropdown-label"><i>&nbsp;</i><span>关注信农</span></div>
        <div class="dropdown-layer dd-hn-qrcode">
          <div class="qrcode"><img src="tt.img/businessAttestation/topbar-qrcode.gif" alt="信农官方微信">
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
        <a href="#" target="_blank" class="logo"><img src="tt.img/businessAttestation/logo_2.jpg"height="40px;" /></a>
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
                <a class="main-link" href="#" module="2">帐号管理</a>
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
           
                </div>
                <span class="line"></span>
            </li>
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
    	<div class="frame-title mb20">企业认证</div>
		    <div class="content">
		        <div class="user-iteam main-tips clearfix">
	                <h3>审核须知：</h3>
	                <ul>
	                    <li>1.您提供的信息仅供信农网实名认证，不挪作他用</li>
	                    <li>2.三证合一的企业请上传有效的统一社会信用代码证件照</li>
	                    <li>3.企业名称、法人代表请与证件上名称保持一致</li>	           
	                </ul>
	                <ul>
	                    <li>4.证件要求完整清晰无遮挡</li>
	                    <li>5.证件上文字清晰可辨</li>
	                    <li>6.证件未备案、过期将无法通过审核</li>
	                    <li>7.审核通过后，不支持修改，请核实后确认提交</li>
	                </ul>
	            </div>
		    	<div class="user-con">	       
		            <!-- 三证合一 -->
		            <form action="/nongye/fileuploadBusinessServlet" method="post" enctype="multipart/form-data"  onsubmit="return validForm(this)">
		            <input type="hidden" name="type" id="typeNew" />
		            <div style="display:none;" id="tickContainer">
					</div>
		            <div id="licenceMergeWrap">
		            <div class="user-iteam">        	
		                <span class="user-label">企业名称：</span>
		                <input type="text" placeholder="企业名称与证件名称需保持一致" name="corporate_name" id="corporate_name"class="user-txt" required="required" " >
		                <em class="star">*</em>
		                <span class=" red fs_12">（注：通过企业实名认证后将不能再修改，请确保填写正确）</span>
		                <span class="reg-hint">
			                	<i class="reg-ico-1" style="display: none;">&nbsp;</i>
			                	<i class="reg-ico-2" style="display: none;">&nbsp;</i>
			                	<span class="red" id="companyNamev1"></span>
		                </span>
		            </div>
		            <div class="user-iteam">        	
		                <span class="user-label">法人代表：</span>
		                <input type="text" placeholder="法人姓名与证件姓名需保持一致"name="corporate_representative" id="corporate_representative"  required="required"   class="user-txt">
		                <em class="star">*</em>
		            </div>
		            <!-- <div class="user-iteam">        	
		                <span class="user-label">统一社会信用代码：</span>
		                <input type="text" placeholder="执照号码与图片号码需保持一致" minlength="15" maxlength="18" class="user-txt" name="licence" id="licence" >
		                <em class="star">*</em>
		            </div> -->
		            <div class="user-iteam h_80">        	
		                <div class="fl mr_10" id="tick">
						<input type="file" class="g-u input01" id="licence" name="licence" value="上传图片" name="filedata"  required="required" />
							<input type="hidden" id="J_Urls_3" name="refundImageUrls" />
						</div>
						
						<span class="label-exam">示例：</span>
		                <a id="w3-2" href="javascript:void(0);" class="btn-1 btn-width-a">
		                	<div class="comp-cert-img"><img src="tt.img/businessAttestation/license.jpg" height="68" alt=""></div>
						</a>
						<div class="comp-cert-img-tips">
		           		 请上传1张图片，支持jpg、png、gif格式，每张最大2M，建议上传清晰、真实图片
		                <br><em class="star">*</em>
			            </div>
		            </div>
		            <div class="clear"></div>
		           <div class="form-context">
						<div class="clear"></div>
						<div style="padding-left:50px;">
						<ul id="picture_queen_3" class="grid pic-gird-1"></ul>
				   </div>
				   </div>
					<div class="user-iteam red tip">
                           	注：请保持以上信息真实准确，审核时间一般在工作日8小时内完成，节假日稍有延迟。
                    </div>
		            <div class="user-iteam h_35">        	
		                 <button class="btn-2" type="submit" >
		                 提交
		                </button>
		            </div>
		            
		            </div>
		            </form>
		        </div>        
		    </div>
    </div>
    <!-- frame-container /-->   
</div>

<script type="text/javascript" src="tt.js/left.js"></script>
<script type="text/javascript" src="tt.js/jquery-1.7.2.min.js"></script>
<!--<script type="text/javascript" src="http://static.cnhnb.com/4.0/libs/lhgdialog/lhgdialog.min.js?self=true&skin=hn"></script>
<script type="text/javascript" src="http://static.cnhnb.com/4.0/js/personal/common/common.js?v=1"></script>
<script type="text/javascript" src="http://static.cnhnb.com/myhn/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="http://static.cnhnb.com/js/frame/hn.frame.util-0.1.js?v=1"></script>
<script type="text/javascript" src="http://static.cnhnb.com/myhn/js/core/top_foot.js"></script>
<script src="http://static.cnhnb.com/uploader/kissy-min.js" charset="utf-8"></script>-->
<!--<script type="text/javascript" src="http://static.cnhnb.com/js/frame/hn.kissy.uploader.js"></script>-->
<script type="text/javascript">
var init={
		resourceUrl:"http://static.cnhnb.com/",
		userPictures:'',
		certification:"",
		newcertification:"",
		orgPictures:'',
		domainUrl:"cnhnb.com",
		showImg:"http://img.cnhnb.com/",
		webUrl:"http://hnuser.cnhnb.com/",
		type:"",
		typeNew:"",
		status:"",
		statusNew:"",
		tickPictures:''
	}
</script>
<script type="text/javascript" src="http://static.cnhnb.com/myhn/js/companyCertification.js?v=20160303"></script>
<div class="footer">
  <div class="container">
    <div class="ptb20 clearfix">
      <div class="foot-qr clearfix">
        <div class="qrcode"><img src="tt.img/businessAttestation/topbar-hn-app.gif" alt="手机信农网">
          <p><span>扫一扫下载</span><span>手机APP</span></p>
        </div>
        <div class="qrcode"><img src="tt.img/businessAttestation/topbar-qrcode.gif" alt="信农官方微信">
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
        <li><a href="http://www.cnhnb.com/sitemap.jsp" target="_blank">网站地图</a></li>
      </ul>
      <div class="copyright">
        <p>湘ICP备13007354号-1  | 服务热线：400-008-8688</p>
        <p>互联网药品信息服务资格证书:(湘)-经营性-2014-0005  湖南信农科技有限公司  <a href="http://pageblockslookup.cnhnb.com/media/filebin/HN-zhizhao.jpg" target="_blank">营业执照号</a></p>
        <p>&copy;2011-2018 Cnhnb B2B SYSTEM All Rights Reserved</p>
        <p class="imgs"><a target="_blank" href="http://www.hnga.gov.cn/" rel="nofollow"><img alt="45" src="tt.img/businessAttestation/jhd_47.png"></a><a target="_blank" href="http://webscan.360.cn/" rel="nofollow"><img alt="55" src="//static.cnhnb.com/myhn/message/images/jhd_55.png"></a></p>
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
</body>
</html>