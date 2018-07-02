// JavaScript Document
/*分销弹窗样式表*/

if($(window.parent.document)){
	var bodys = $(window.parent.document).find('body');
}else{
	var bodys = $("body");
}

var fxCss = '';
fxCss+='<style>';

/*背景透明样式*/
fxCss+='.w-bg{position:fixed; z-index:9998; left:0; top:0; background-color:#000; width:100%; height:100%; opacity:0.5; filter:alpha(opacity=50);}';

/*隐藏样式*/
fxCss+='.d-none{display:none;}';

fxCss+='.fx-wds-m1{text-align:center;}';
fxCss+='.fx-wds-m2{padding-left:37px;}';
fxCss+='.fx-wds-m2 span{color:#0684cf;}';
fxCss+='.fx-wds-m2 a{color:#0684cf;}';
fxCss+='.fx-wds-m2 a.but{ display:block; width:66px; height:30px; line-height:30px; background-color:#f47912; color:#FFF; margin:10px auto 0 auto; text-align:center; overflow:hidden;}';
fxCss+='.fx-wds-m3 h3{line-height:36px; padding:5px 0 0 41px; font-size:12px; margin:0px;}';
fxCss+='.fx-wds-m3 p{width:590px; height:250px; overflow:scroll; margin:0 0 0 41px; padding:8px; border:#cccccc solid 1px; }';
fxCss+='.fx-wds-m3 span{text-align:center; display:block; line-height:40px; padding-top:12px;}';
fxCss+='.fx-wds-m3 a{display:block; width:105px; height:29px; line-height:29px; overflow:hidden; text-align:center; background-color:#ccc; color:#666; margin:auto;}';
fxCss+='.fx-wds-m3 a.agree{margin:40px auto 0 auto;}';
fxCss+='.fx-wds-m3 a.cur{background-color:#f47912; color:#FFF;}';
fxCss+='.fx-wds-m4{margin:5px 0 0 26px; color:#666;}';
fxCss+='.fx-wds-m4 strong{font-size:14px; float:left; display:inline;color:#333;}';
fxCss+='.fx-wds-m4 img{float:left; display:inline;}';
fxCss+='.fx-wds-m4 span{color:#333;}';
fxCss+='.fx-wds-m4 a{width:88px; height:30px; overflow:hidden; display:block; margin:auto; line-height:30px; background-color:#f47912; color:#FFF; text-align:center; font-weight:bold;}';

/*弹出窗垂直水平居中样式*/
fxCss+='.fx-w{position:fixed; z-index:9999; left:50%; top:50%; margin-left:-160px; margin-top:-90px; font-family:"微软雅黑";}';

fxCss+='.fx-w-3{margin-left:-286px; margin-top:-144px;}';
fxCss+='.fx-w-4{margin-left:-338px; margin-top:-225px;}';
fxCss+='.fx-w .fx-s-1{width:345px; height:210px; overflow:hidden; border:#b9b8b8 solid 1px; background-color: #fff;}';
fxCss+='.fx-w .fx-s-2{width:676px; height:450px; overflow:hidden; border:#b9b8b8 solid 1px; background-color: #fff;}';
fxCss+='.fx-w .fx-s-3{width:572px; height:288px; overflow:hidden; border:#b9b8b8 solid 1px; background-color: #fff;}';
fxCss+='.fx-w .fx-s-4{width:676px; height:450px; overflow:hidden; border:#b9b8b8 solid 1px; background-color: #fff;}';
fxCss+='.fx-w h2{height:32px; background-color:#f3f3f3; margin:0px;}';
fxCss+='.fx-w h2 strong{font-weight:bold; line-height:32px; padding-left:19px; float:left; display:inline; font-size:14px;}';
fxCss+='.fx-w h2 a{float:right; display:inline; margin:0 16px 0 0; line-height:32px; color:#333; text-decoration:none;}';
fxCss+='.fx-w .fx-s-4 h2{ background-color:#fff; }';
fxCss+='.fx-w .fx-s-4 h2 a{ font-size:28px; }';
fxCss+='.fx-w .line{display:block; height:1px; border-bottom:#cccccc solid 1px;}';
fxCss+='.fx-w .message{line-height:21px; color:#585858; font-size:12px;}';
fxCss+='.rule-h1{font-weight:bold;font-size:16px;line-height:30px;}';
fxCss+='.rule-h2{font-size:14px;line-height:28px;}';
fxCss+='.fx-w-5 .info{line-height:22px; padding-top:30px; text-align:center;}';
fxCss+='.fx-w-5 .message a{height:30px; float:left; width:80px; text-align:center; line-height:30px; color:#FFF; margin:30px 0 0 50px; cursor:pointer; border-radius:3px;}';
fxCss+='.fx-w-5 .message .a-yes{background-color:#009435;}';
fxCss+='.fx-w-5 .message .a-no{background-color:#f47a11;}';

/*收货地址样式*/
fxCss+='.w-box{position:fixed; z-index:9999; left:50%; top:50%; margin-left:-160px; margin-top:-90px; font-family:"微软雅黑";}';
fxCss+='.w-consignee{margin-left:-250px; margin-top:-175px;}';
fxCss+='.w-consignee-box{width:500px; height:350px; overflow:hidden; border:#b9b8b8 solid 1px; background-color: #fff;}';
fxCss+='.w-box h2{height:32px; background-color:#f3f3f3; margin:0px;}';
fxCss+='.w-box h2 strong{font-weight:bold; line-height:32px; padding-left:19px; float:left; display:inline; font-size:14px;}';
fxCss+='.w-box h2 a{float:right; display:inline; margin:0 16px 0 0; line-height:32px; color:#333; text-decoration:none;}';
fxCss+='.w-box .line{display:block; height:1px; border-bottom:#cccccc solid 1px;}';
fxCss+='.w-box .message{}';
fxCss+='.w-box .message ul{padding-left:20px;}';
fxCss+='.w-box .message li{height:26px; line-height:26px; padding-top:10px;}';
fxCss+='.w-box .message li em{float:left; display:inline; width:15px; text-align:center; color:#f00;}';
fxCss+='.w-box .message li span{float:left; display:inline; width:70px;}';
fxCss+='.w-box .message li p{float:left; display:inline; width:390px;}';
fxCss+='.w-box .message li p input{height:24px; line-height:24px; border:#e5e5e5 solid 1px; width:120px; padding-left:10px;}';
fxCss+='.w-box .message li p input.consignee-street{width:330px;}';
fxCss+='.w-box .message li p input.consignee-postal{width:120px;}';
fxCss+='.w-box .message li p input.consignee-phone{width:180px;}';
fxCss+='.w-box .message li p input.consignee-areaCode{width:40px;}';
fxCss+='.w-box .message li p input.consignee-tel{width:120px;}';
fxCss+='.w-box .message li p input.consignee-ext{width:40px;}';
fxCss+='.w-box .message .consignee-but{padding-top:50px;}';
fxCss+='.w-box .message .consignee-but p{float:left; display:inline; line-height:24px; margin-left:230px;}';
fxCss+='.w-box .message .consignee-but p input{margin-top:5px;float:left; display:inline;}';
fxCss+='.w-box .message .consignee-but .but{float:right; display:inline; line-height:24px; height:24px; width:130px; margin-right:20px;}';

fxCss+='</style>';
document.writeln(fxCss);

/*一行文字水平垂直居中样式弹窗*/
var fxHtml_1 = '';
fxHtml_1+='<div class="w-bg"></div>';
fxHtml_1+='<div class="fx-w fx-w-1 d-none">';
fxHtml_1+='	<div class="fx-s-1">';
fxHtml_1+='    	<h2><strong>提示</strong><a href="javascript:void(0);" onclick="windows_close();">×</a></h2>';
fxHtml_1+='        <span class="line"></span>';
fxHtml_1+='        <div class="message">';
fxHtml_1+='        	<table width="100%" border="0" cellpadding="0" cellspacing="0">';
fxHtml_1+='            	<tr>';
fxHtml_1+='                	<td valign="middle" height="144" class="fx-wds-m1"></td>';
fxHtml_1+='                </tr>';
fxHtml_1+='            </table>';
fxHtml_1+='      </div>';
fxHtml_1+='    </div>';
fxHtml_1+='</div>';

/*多行文字垂直居中样式弹窗*/
var fxHtml_2 = '';
fxHtml_2+='<div class="w-bg"></div>';
fxHtml_2+='<div class="fx-w fx-w-2 d-none">';
fxHtml_2+='	<div class="fx-s-1">';
fxHtml_2+='    	<h2><strong>提示</strong><a href="javascript:void(0);" onclick="windows_close();">×</a></h2>';
fxHtml_2+='        <span class="line"></span>';
fxHtml_2+='        <div class="message">';
fxHtml_2+='        	<table width="100%" border="0" cellpadding="0" cellspacing="0">';
fxHtml_2+='            	<tr>';
fxHtml_2+='                	<td valign="middle" height="144" class="fx-wds-m2">';
fxHtml_2+='                    </td>';
fxHtml_2+='                </tr>';
fxHtml_2+='            </table>';
fxHtml_2+='        </div>';
fxHtml_2+='    </div>';
fxHtml_2+='</div>';

/*自定义大小弹窗*/
var fxHtml_3 = '';
fxHtml_3+='<div class="w-bg"></div>';
fxHtml_3+='<div class="fx-w fx-w-3 d-none">';
fxHtml_3+='	<div class="fx-s-2">';
fxHtml_3+='    	<h2><strong>提示</strong><a href="javascript:void(0);" onclick="windows_close();">×</a></h2>';
fxHtml_3+='        <span class="line"></span>';
fxHtml_3+='        <div class="message">';
fxHtml_3+='        </div>';
fxHtml_3+='    </div>';
fxHtml_3+='</div>';

/*自定义大小弹窗-02-无头部背景*/
var fxHtml_6 = '';
fxHtml_6+='<div class="w-bg"></div>';
fxHtml_6+='<div class="fx-w fx-w-3 d-none">';
fxHtml_6+='	<div class="fx-s-4">';
fxHtml_6+='    	<h2><strong></strong><a href="javascript:void(0);" onclick="windows_close();">×</a></h2>';
fxHtml_6+='        <div class="message-text">';
fxHtml_6+='        </div>';
fxHtml_6+='    </div>';
fxHtml_6+='</div>';

/*协议弹窗*/
	/*协议文本*/
var xy_txt = '';
xy_txt += '<strong class="rule-h1">第一章 总则</strong><br />';
xy_txt += '<strong class="rule-h2">第一条</strong><br />';
xy_txt += '为了建立公平，诚信，透明的平台运营环境，规范卖家行为，更好的提升卖家服务，提高买家用户体验；保障惠农分销平台供应商、分销商的合法权益、维护惠农分销平台正常运营秩序，特制定本管理规范。<br />';
xy_txt += '<strong class="rule-h2">第二条</strong><br />';
xy_txt += '本管理规范用于规范供应商、分销商（统称为惠农分销平台用户）入驻和退出惠农分销平台，在惠农分销平台的经营活动过程<br />';
xy_txt += '<strong class="rule-h2">第三条</strong><br />';
xy_txt += '供应商、分销商在惠农分销平台的日常经营、管理中应诚实守信、遵纪守法，积极提升自身品质和信誉，给客户和消费者带来更好的体验。<br />';
xy_txt += '<strong class="rule-h1">第二章 定义</strong><br />';
xy_txt += '<strong class="rule-h2">第四条</strong><br />';
xy_txt += '惠农分销平台，是指为惠农分销平台用户提供分销服务的网络交易平台，域名为：fenxiao.cnhnb.com<br />';
xy_txt += '<strong class="rule-h2">第五条</strong><br />';
xy_txt += '供应商，是指通过惠农分销平台向分销商提供产品供其销售的会员。<br />';
xy_txt += '<strong class="rule-h2">第六条</strong><br />';
xy_txt += '分销商，是指在惠农网分销平台有购买商品资质的会员<br />';
xy_txt += '<strong class="rule-h2">第七条</strong><br />';
xy_txt += '同一个惠农网帐号不充许同时拥有供应商和分销商身份。<br />';
xy_txt += '<strong class="rule-h2">第八条</strong><br />';
xy_txt += '产品，是指供应商在惠农分销平台发布的商品。<br />';
xy_txt += '<strong class="rule-h1">第三章 入驻</strong><br />';
xy_txt += '<strong class="rule-h2">第九条</strong><br />';
xy_txt += '供应商和分销商入驻惠农分销平台须至少同时具备以下条件：<br />';
xy_txt += '(一)已注册为惠农网会员<br />';
xy_txt += '(二)持有并提交最新有效年检的《企业法人营业执照》副本的原件扫描件，且拟在惠农分销平台开展的经营活动不超过其《企业法人营业执照》核准的经营范围；持有并提交《组织机构代码证》的原件扫描件。以上条件的审核通过惠农网企业认证完成。<br />';
xy_txt += '(三)签署《惠农分销平台入驻协议》。<br />';
xy_txt += '(四)供应商需为惠农网农商易会员。<br />';
xy_txt += '<strong class="rule-h1">第四章 经营</strong><br />';
xy_txt += '<strong class="rule-h2">第十条</strong><br />';
xy_txt += '供应商在惠农分销平台导入产品信息时，须遵守《中国惠农网法律声明》和《中国惠农网产品发布规则》关于发布商品或信息的规定。<br />';
xy_txt += '(一) 供应商成功入驻惠农分销平台后即可导入产品。<br />';
xy_txt += '(二)供应商导入的产品不得包含以下外部链接：<br />';
xy_txt += '1.产品信息及页面中含有供应商自身店铺链接；<br />';
xy_txt += '2.产品信息及页面中含有供应商自身店铺的文字或图片广告及水印。<br />';
xy_txt += '<strong class="rule-h2">第十一条</strong><br />';
xy_txt += '供应商在惠农分销平台不得发布、销售假冒伪劣产品或信息。<br />';
xy_txt += '<strong class="rule-h2">第十二条</strong><br />';
xy_txt += '供应商在产品描述页面、店铺页面等所有惠农网提供的渠道中，应当对产品的基本属性、成色、瑕疵等必须说明的信息进行真实、完整的描述。<br />';
xy_txt += '供应商保证其出售的产品可以正常使用，符合法律法规及相关国家标准、行业标准，产品不存在任何危及人身财产安全的隐患，具备产品应当具备的使用性能、符合产品或其包装上注明采用的标准等。<br />';
xy_txt += '<strong class="rule-h2">第十三条</strong><br />';
xy_txt += '供应商在惠农分销平台不得同时发布两件以上的同款产品。<br />';
xy_txt += '<strong class="rule-h2">第十四条</strong><br />';
xy_txt += '惠农分销平台支持目前支持支付宝担保交易支付方式。<br />';
xy_txt += '<strong class="rule-h1">第五章 违规与处理</strong><br />';
xy_txt += '<strong class="rule-h2">第十五条</strong><br />';
xy_txt += '根据供应商违规情形的严重程度，惠农分销平台处理措施划分如下：<br />';
xy_txt += '(一)分销限权15天，1个月，三个月或永久分销限权，且不能导入新产品，并在惠农分销平台前台搜索屏蔽；<br />';
xy_txt += '(二)在惠农分销平台内下架相关产品；<br />';
xy_txt += '(三)在惠农分销平台内删除相关产品；<br />';
xy_txt += '(四)惠农分销平台首页公示；<br />';
xy_txt += '(五)永久清退出惠农分销平台。<br />';
xy_txt += '<strong class="rule-h2">第十六条</strong><br />';
xy_txt += '惠农分销平台对供应商进行独立的违规次数统计，并对供应商的违规行为采取以下处理方式：<br />';
xy_txt += '供应商一般违规次数超过五次的，将在惠农分销平台内下架供应商的所有产品；<br />';
xy_txt += '供应商严重违规次数超过十次的，将供应商清退出惠农分销平台；<br />';
xy_txt += '供应商的违规次数在每年十二月三十一日二十四时清零。<br />';
xy_txt += '<strong class="rule-h2">第十七条</strong><br />';
xy_txt += '在供应商出现违规情形，惠农分销平台经最终认定属实后，有权在不通知当事人的情况下进行处理。<br />';
xy_txt += '<strong class="rule-h2">第十八条</strong><br />';
xy_txt += '惠农网将依据《中国惠农网产品发布规则》或《中国惠农网法律声明》的相关规定判定分销商违规并进行处理。<br />';
xy_txt += '<strong class="rule-h2">第十九条</strong><br />';
xy_txt += '供应商和分销商分别授权惠农分销平台对其违规行为的责任承担进行独立判断，届时供应商和分销商应按照惠农分销平台的要求提供相关证据材料。<br />';
xy_txt += '<strong class="rule-h1">第六章 退出</strong><br />';
xy_txt += '<strong class="rule-h2">第二十条</strong><br />';
xy_txt += '供应商、分销商有权根据自己的经营情况，可主动退出惠农分销平台。<br />';
xy_txt += '<strong class="rule-h2">第二十一条</strong><br />';
xy_txt += '供应商退出后，惠农分销平台将删除其在惠农分销平台的产品信息。<br />';
xy_txt += '<strong class="rule-h2">第二十二条</strong><br />';
xy_txt += '供应商若退出后再入驻须符合以下条件：<br />';
xy_txt += '(一) 供应商因严重违规被清退的，永久不得重新入驻；<br />';
xy_txt += '(二)若符合以下任一情形，可在自被拒绝或被自主退出之日起算一个月后重新提交入驻申请：<br />';
xy_txt += '1.供应商自主申请退出的；<br />';
xy_txt += '2.供应商因审核未通过被拒绝入驻的。<br />';
xy_txt += '<strong class="rule-h2">第二十三条</strong><br />';
xy_txt += '分销商若出现以下任一情形，惠农分销平台有权将其清退出惠农分销平台：<br />';
xy_txt += '(一)分销商存在《中国惠农网法律声明》中规定的严重违规行为；<br />';
xy_txt += '(一)分销商存在《中国惠农网产品发布规则》中规定的严重违规行为；<br />';
xy_txt += '<strong class="rule-h2">第二十四条</strong><br />';
xy_txt += '分销商自主申请退出或被惠农分销平台清退的，符合入驻条件后可重新申请入驻。<br />';
xy_txt += '<strong class="rule-h1">第七章 附则</strong><br />';
xy_txt += '<strong class="rule-h2">第二十五条</strong><br />';
xy_txt += '本管理规范自2015年2月10日起生效。<br />';
	/*html样式代码*/
var fxHtml_4 = '';
fxHtml_4+='<div class="w-bg"></div>';
fxHtml_4+='<div class="fx-w fx-w-4 d-none">';
fxHtml_4+='	<div class="fx-s-2">';
fxHtml_4+='    	<h2><strong>协议</strong><a href="javascript:void(0);" onclick="windows_close();">×</a></h2>';
fxHtml_4+='        <span class="line"></span>';
fxHtml_4+='        <div class="message">';
fxHtml_4+='        	<table width="100%" border="0" cellpadding="0" cellspacing="0">';
fxHtml_4+='            	<tr>';
fxHtml_4+='                	<td valign="middle" height="144" class="fx-wds-m3">';
fxHtml_4+='                    	<h3>尊敬的农商易用户,入驻前请仔细阅读您以下协议</h3>';
fxHtml_4+='                        <p>'+xy_txt+'</p>';
fxHtml_4+='                        <span><input name="" class="w-agree" type="checkbox" value="" />我同意以上协议，并已知晓相关的权利和义务</span>';
fxHtml_4+='                        <a href="javascript:void(0);" class="agree">关闭</a>';
fxHtml_4+='                    </td>';
fxHtml_4+='                </tr>';
fxHtml_4+='            </table>';
fxHtml_4+='        </div>';
fxHtml_4+='    </div>';
fxHtml_4+='</div>';


/*一行或多行文字弹窗*/
function windows_open(i,txt){
	if(bodys.find('.fx-w-'+i).length==0){
		bodys.find('.fx-w-'+i).remove();
	}
	if(i=='1'){bodys.append(fxCss);bodys.append(fxHtml_1);bodys.find('.fx-w-'+i).show();}
	if(i=='2'){bodys.append(fxCss);bodys.append(fxHtml_2);bodys.find('.fx-w-'+i).show();}
	bodys.find('.fx-wds-m'+i).html(txt);
}

/*自定义弹窗提示框*/
function windows_custom_open(t,c,w,h){
	if(bodys.find('.fx-w-3').length==0){
		bodys.find('.fx-w-3').hide().remove();
	}
	bodys.append(fxCss);
	bodys.append(fxHtml_3);
	bodys.find('.fx-s-2').width(w);
	bodys.find('.fx-s-2').height(h);
	bodys.find('.fx-w-3').css('margin-left',-w/2);
	bodys.find('.fx-w-3').css('margin-top',-h/2);
	bodys.find('.fx-w-3 h2 strong').html(t);
	bodys.find('.fx-w-3').show();
	bodys.find('.fx-w-3 .message').html(c);
}

/*自定义弹窗提示框-02-无头部顶部*/
function windows_custod(t,c,w,h){
	if(bodys.find('.fx-w-3').length==0){
		bodys.find('.fx-w-3').hide().remove();
	}
	bodys.append(fxCss);
	bodys.append(fxHtml_6);
	bodys.find('.fx-s-4').width(w);
	bodys.find('.fx-s-4').height(h);
	bodys.find('.fx-w-3').css('margin-left',-w/2);
	bodys.find('.fx-w-3').css('margin-top',-h/2);
	bodys.find('.fx-w-3 h2 strong').html(t);
	bodys.find('.fx-w-3').show();
	bodys.find('.fx-w-3 .message-text').html(c);
}

/*分销弹窗关闭事件*/
function windows_close(){
	bodys.find(".fx-w").hide().remove();
	bodys.find(".w-bg").hide().remove();
}

/*协议弹窗*/
function xy_window(id){
	if($('.fx-w-4').length==0){
		$('.fx-w-4').hide().remove();
	}
	$("body").append(fxHtml_4);
	$('.fx-w-4').show();
	if($('#'+id).attr('checked')){
		$('.w-agree').attr('checked',true);
	}else{
		$('.w-agree').attr('checked',false);	
	}
	$('.fx-w-4 ').find('input').click(function(){
		if($('.fx-w-4 ').find('input').attr('checked')){
			$('.fx-w-4 .message a').addClass('cur');
			//$('.fx-w-3 .message a').attr('href',url);
		}else{
			$('.fx-w-4 .message a').removeClass('cur');
			//$('.fx-w-3 .message a').attr('href','javascript:void(0);');	
		}
	});
	$('.fx-w-4 ').find('.agree').click(function(){
		if($('.w-agree').attr('checked')){
			$('#'+id).attr('checked',true);
		}else{
			$('#'+id).attr('checked',false);	
		}
		windows_close();
	});
	
}

var xy_txt2 = '';
xy_txt2 += '<strong class="rule-h1 tc">惠农网服务条款</strong>';
xy_txt2 += '<br />';
xy_txt2 += '<strong class="rule-h2">湖南惠农科技有限公司（以下简称惠农网）依据以下条件和条款为您提供所享有的服务，请仔细阅读并遵守。 </strong><br />';
xy_txt2 += '欢迎阅读惠农网服务条款协议(下称“本协议”)。本协议阐述之条款和条件适用于您使用惠农网、手机惠农网及关联产品所提供的各种工具和平台提供的所有服务。<br />';
xy_txt2 += '<br />';
xy_txt2 += '<strong class="rule-h2">一、接受条款  </strong><br />';
xy_txt2 += '1、本协议内容包括协议正文及所有惠农网已经发布或将来可能发布的各类规则。所有规则为协议不可分割的一部分，与协议正文具有同等法律效力。<br />';
xy_txt2 += '2、以任何方式进入惠农网并使用服务即表示您已充分阅读、理解并同意接受本协议以及惠农网的一切“条款”， 不得以未仔细阅读为由进行抗辩。<br />';
xy_txt2 += '3、惠农网有权根据业务需要酌情修订“条款”，并以网站公告的形式进行更新，不再单独通知予您。如您继续使用“服务”，则视为已接受经修订的“条款”；如您不同意相关修订，请您立即停止使用“服务”。当您与惠农网发生争议时，应以最新的“条款”为准。<br />';
xy_txt2 += '<br />';
xy_txt2 += '<strong class="rule-h2">二、注册须知</strong><br />';
xy_txt2 += '1、使用惠农网服务的用户必须是具备完全民事权利能力和与所从事的民事行为相适应的行为能力的自然人、法人或其他组织。<br/>';
xy_txt2 += '2、在惠农网填写的任何信息不得侵犯或涉嫌侵犯他人合法权益。如设置的信息涉嫌侵犯他人合法权益，惠农网进行相应处理，直至终止向您提供服务。<br/>';
xy_txt2 += '3、完成注册可以直接成为买家，但获得卖家资格必须要先完成个人/企业实名认证；免费卖家不享受店铺功能，只能发布产品供应信息；开通店铺功能必须申请成为付费卖家。<br/>';
xy_txt2 += '4、账户安全:您须自行负责对您的登陆账号、支付账号信息、密码等信息保密，且须对该登录名和密码下发生的所有活动担责任。<br/>';
xy_txt2 += '<br />';

xy_txt2 += '<strong class="rule-h2">三、服务使用规则</strong> <br />';
xy_txt2 += '<strong class="rule-h2">1、关于信息</strong> <br />';
xy_txt2 += '惠农网不对产品描述的准确性或内容负责。您保证发布的资料信息不会违反任何法律、法规、条例、规章，不侵害任何第三者的权益，并且不含有惠农网认为应禁止或限制发布的信息。<br />';
xy_txt2 += '<br />';
xy_txt2 += '<strong class="rule-h2">2、交易规则</strong> <br />';
xy_txt2 += '不得操纵交易或使用任何装置、软件或例行程序干扰交易系统。如惠农网发现任何破坏交易规则的行为，有权根据情节轻重对会员予以帐号限权直至帐号关闭等处罚。<br />';
xy_txt2 += '<br />';
xy_txt2 += '<strong class="rule-h2">3、关于处理交易争议</strong> <br />';
xy_txt2 += '3.1.惠农网不涉及买卖双方因交易而产生的买卖纠纷及法律纠纷，不会牵涉交易过程。倘若您与平台上的其他供应商、采购商或为惠农网提供支持服务的其他第三方供应商发生争议，您免除惠农网(及惠农网代理人和雇员)在因该等争议而引起的，或在任何方面与该等争议有关的不同种类和性质的任何(实际和后果性的)权利主张、要求和损害赔偿等方面的责任。<br />';
xy_txt2 += '3.2.买卖双方在交易履行过程中产生交易争议，双方自行协商解决，若双方无法协商或协商不能达成一致意见，一方或双方可申请提交惠农网进行斡旋处理。因惠农网非司法机构，对证据的鉴别能力及对纠纷的处理能力有限，故不对争议处理结果承担任何责任。<br />';
xy_txt2 += '3.3.惠农网有权受理并调解您与其他用户因交易或利益产生的争议，同时有权单方面独立判断其他会员对您的投诉及(或)索偿是否成立，若惠农网判断投诉（或）索偿成立，有权终止您在惠农网的一切账号和关联服务，同时惠农网有权扣减您交纳的会员费、其他服务费及保证金（如有），惠农网保留追究法律责任的权利。<br />';
xy_txt2 += '<br />';
xy_txt2 += '<strong class="rule-h2">4、其他服务</strong> <br />';
xy_txt2 += '关于惠农网提供的农业行情、政策、展会服务等资讯信息，以及对部分付费会员推送买家信息、精准营销，惠农网不对以上信息真实性、准确性、及时性、全面性负责及由此带来的损失不承担任何责任。<br />';
xy_txt2 += '<br />';
xy_txt2 += '<strong class="rule-h2">5、违反规则的后果</strong> <br />';
xy_txt2 += '5.1您注册平台用户时，填写的所有资料是真实有效的，平台不对您的合法信息承担任何法律责任。<br />';
xy_txt2 += '5.2如您利用平台涉嫌违法行为且对平台的任意第三方造成损害的，您均应当以自己的名义独立承担所有的法律责任，惠农网不承担任何责任。 <br />';
xy_txt2 += '5.3在不限制其他补救措施的前提下，发生下述任一情况，惠农网立即发出警告，采取暂时中止、永久中止或终止您的帐号使用资格，删除您在平台上的产品信息及您在网站上展示的任何其他资料：<br />';
xy_txt2 += '&nbsp;&nbsp;(i)您违反本协议；<br />';
xy_txt2 += '&nbsp;&nbsp;(ii)无法核实或鉴定您向惠农网提供的任何资料；<br />';
xy_txt2 += '&nbsp;&nbsp;(iii)您从事涉嫌诈骗活动，平台随时终止您的账户。<br />';
xy_txt2 += '5.4如您被平台用户投诉，涉及到违法或违反本协议的行为，平台将第一时间告知您，您必须于3个工作日内提交举证资料，如未提供平台有权公布您的违法行为及部分用户信息并做出处罚（包括但不限于限权、商品下架、用户违法信息曝光、终止服务等）。<br />';
xy_txt2 += '<br />';

xy_txt2 += '<strong class="rule-h2">四、惠农网平台服务和地位</strong><br />';
xy_txt2 += '1、通过惠农网提供的平台服务，您可在惠农网网站上发布交易信息、查询商品和服务信息、达成交易意向、参加惠农网组织的活动、使用其它信息服务及部分商家在线交易服务。<br />';
xy_txt2 += '2、惠农网仅提供交易平台，不参与交易过程，交易风险由买卖双方自行承担，您须谨慎交易。同时，惠农网不涉及买卖双方因交易而产生的法律关系及法律纠纷，不会且不能牵涉进交易各方的交易当中。敬请注意，惠农网不能控制或保证商贸信息的真实性、合法性、准确性，亦不能控制或保证交易所涉及的物品的质量、安全或合法性，以及相关交易各方履行在贸易协议项下的各项义务的能力。惠农网不能也不会控制交易各方能否履行协议义务。此外，您应注意到，与以欺诈手段行事的人进行交易的风险是客观存在的。惠农网希望您在使用惠农网网站时，小心谨慎并运用常识。 <br />';

    /*html样式代码*/
var fxHtml_L = '';
fxHtml_L+='<div class="w-bg"></div>';
fxHtml_L+='<div class="fx-w fx-w-4 d-none">';
fxHtml_L+=' <div class="fx-s-2">';
fxHtml_L+='     <h2><strong>用户服务协议</strong><a href="javascript:void(0);" onclick="windows_close();">×</a></h2>';
fxHtml_L+='        <span class="line"></span>';
fxHtml_L+='        <div class="message">';
fxHtml_L+='         <table width="100%" border="0" cellpadding="0" cellspacing="0">';
fxHtml_L+='             <tr>';
fxHtml_L+='                 <td valign="middle" height="144" class="fx-wds-m3">';
fxHtml_L+='                     <h3>会员注册协议</h3>';
fxHtml_L+='                        <p>'+xy_txt2+'</p>';
fxHtml_L+='                        <a href="javascript:void(0);" class="agree cur">同意并关闭</a>';
fxHtml_L+='                    </td>';
fxHtml_L+='                </tr>';
fxHtml_L+='            </table>';
fxHtml_L+='        </div>';
fxHtml_L+='    </div>';
fxHtml_L+='</div>';

function xy_window_L(id){
    //alert(1);
    if($('.fx-w-4').length==0){
        $('.fx-w-4').hide().remove();
    }
    $("body").append(fxHtml_L);
    $('.fx-w-4').show();
   /* if($('#'+id).attr('checked')){
        $('.w-agree').attr('checked',true);
        $('.fx-w-4 .message a').addClass('cur');
    }else{
        $('.w-agree').attr('checked',false);    
    }
    $('.fx-w-4 ').find('input').click(function(){
        if($('.fx-w-4 ').find('input').attr('checked')){
            $('.fx-w-4 .message a').addClass('cur');
            //$('.fx-w-3 .message a').attr('href',url);
        }else{
            $('.fx-w-4 .message a').removeClass('cur');
            //$('.fx-w-3 .message a').attr('href','javascript:void(0);');   
        }
    });*/
    $('.fx-w-4 ').find('.agree').click(function(){
        /*if($('.w-agree').attr('checked')){
            $('#'+id).attr('checked',true);
            $("#"+id).parent().siblings(".submit").removeAttr("disabled").removeClass("disabled");
        }else{
            $('#'+id).attr('checked',false);
            $("#"+id).parent().siblings(".submit").attr("disabled",true).addClass("disabled");
        }*/
    	$("#"+id).removeAttr("disabled").removeClass("disabled");
        windows_close();
    });
    
}

/*确认提示弹窗*/
function fx_confirm_window(msg){
	var url=arguments[1] ? arguments[1] : '';
	var obj=arguments[2] ? arguments[2] : '';
	var fn=null;
	if(typeof url =='function'){
		fn=url;
		url='';
	}
	if(bodys.find('.fx-w-5').length==0){
		bodys.find('.fx-w-5').hide().remove();
		bodys.find(".w-bg").hide().remove();
	}
	var fxHtml_5 = '';
	fxHtml_5+='<div class="w-bg"></div>';
	fxHtml_5+='<div class="fx-w fx-w-5 d-none">';
	fxHtml_5+='  <div class="fx-s-1">';
	fxHtml_5+='    <h2><strong>提示</strong></h2>';
	fxHtml_5+='    <span class="line"></span>';
	fxHtml_5+='    <div class="message">';
	fxHtml_5+='      <div class="info"></div>';
	fxHtml_5+="      <a href=\"javascript:void(0);\" class='a-yes'>确认</a>&nbsp;<a href=\"javascript:void(0);\" class='a-no'>取消</a>";
	fxHtml_5+='    </div>';
	fxHtml_5+='  </div>';
	fxHtml_5+='</div>';
	//$("body").append(fxHtml_5);
	bodys.append(fxCss);
	bodys.append(fxHtml_5);
	bodys.find('.fx-w-5').show();
	bodys.find('.fx-w-5 .info').html(msg);
	bodys.find('.a-yes').click(function(){
		fx_confirm_close(url);
		fx_confirm_call_back(fn,obj);
	});
	bodys.find('.a-no').click(function(){
		fx_confirm_close();
	});
}
function fx_confirm_close(url){
	if(url && url!=''){
		location=url;
	}else{
		bodys.find('.fx-w-5').hide().remove();
		bodys.find(".w-bg").hide().remove();
	}
}
function fx_confirm_call_back(fn,obj){
	if(typeof fn=='function'){
		setTimeout(fn(obj),10);
	}
}

/*编辑收货地址弹出框*/
function consigneeInfoEdit(b){
	if(b.type == 'add')var title='添加';else var title='修改';
	if(b.consignee_name && b.consignee_name!=''){
		var consignee_name = b.consignee_name;
	}else{
		var consignee_name = '';
	}
	if(b.consignee_province && b.consignee_province!=''){
		var consignee_province = b.consignee_province;
	}else{
		var consignee_province = 0;
	}
	if(b.consignee_city && b.consignee_city!=''){
		var consignee_city = b.consignee_city;
	}else{
		var consignee_city = 0;
	}
	if(b.consignee_area && b.consignee_area!=''){
		var consignee_area = b.consignee_area;
	}else{
		var consignee_area = 0;
	}
	if(b.consignee_street && b.consignee_street!=''){
		var consignee_street = b.consignee_street;
	}else{
		var consignee_street = '';
	}
	if(b.consignee_postal && b.consignee_postal!=''){
		var consignee_postal = b.consignee_postal;
	}else{
		var consignee_postal = '';
	}
	if(b.consignee_phone && b.consignee_phone!=''){
		var consignee_phone = b.consignee_phone;
	}else{
		var consignee_phone = '';
	}
	if(b.consignee_areaCode && b.consignee_areaCode!=''){
		var consignee_areaCode = b.consignee_areaCode;
	}else{
		var consignee_areaCode = '';
	}
	if(b.consignee_tel && b.consignee_tel!=''){
		var consignee_tel = b.consignee_tel;
	}else{
		var consignee_tel = '';
	}
	if(b.consignee_ext && b.consignee_ext!=''){
		var consignee_ext = b.consignee_ext;
	}else{
		var consignee_ext = '';
	}
	var html = '';
	html+='<div class="w-bg"></div>';
	html+='<div class="w-box w-consignee d_none">';
	html+='  <div class="w-consignee-box">';
	html+='    <h2><strong>'+title+'收货地址</strong><a href="javascript:void(0);" class="consigneeDel">×</a></h2>';
	html+='    <span class="line"></span>';
	html+='    <div class="message">';
	html+='      <ul>';
	html+='        <li>';
	html+='          <em>*</em>';
	html+='          <span>收货人：</span>';
	html+='          <p><input value="'+consignee_name+'" name="consignee-name" id="consignee-name" class=consignee-"name" placeholder="请填写联系人姓名" /></p>';
	html+='        </li>';
	html+='        <li>';
	html+='          <em>*</em>';
	html+='          <span>所在地区：</span>';
	html+='          <p>';
	html+='          <select id="consignee-province" name="consignee-province"><option value="0">选择省份</option><option value="1">湖南省</option><option value="2">湖北省</option></select>';
	html+='          <select id="consignee-city" name="consignee-city"><option value="0">选择城市</option><option value="1">长沙市</option><option value="2">常德市</option></select>';
	html+='          <select id="consignee-area" name="consignee-area"><option value="0">选择区</option><option value="1">天心区</option><option value="2">开福区</option></select>';
	html+='          </p>';
	html+='        </li>';
	html+='        <li>';
	html+='          <em>&nbsp;</em>';
	html+='          <span>&nbsp;</span>';
	html+='          <p><input value="'+consignee_street+'" name="consignee-street" id="consignee-street" class="consignee-street" placeholder="请填写街道地址" /></p>';
	html+='        </li>';
	html+='        <li>';
	html+='          <em>*</em>';
	html+='          <span>邮政编码：</span>';
	html+='          <p><input value="'+consignee_postal+'" name="consignee-postal" id="consignee-postal" class="consignee-postal" placeholder="请填写邮政编码" /></p>';
	html+='        </li>';
	html+='        <li>';
	html+='          <em>*</em>';
	html+='          <span>手机号码：</span>';
	html+='          <p><input value="'+consignee_phone+'" name="consignee-phone" id="consignee-phone" class="consignee-phone" placeholder="请填写手机号码" /></p>';
	html+='        </li>';
	html+='        <li>';
	html+='          <em>*</em>';
	html+='          <span>固定电话：</span>';
	html+='          <p><input value="'+consignee_areaCode+'" name="consignee-areaCode" id="consignee-areaCode" class="consignee-areaCode" placeholder="区号" /> <input value="'+consignee_tel+'" name="consignee-tel" id="consignee-tel" class="consignee-tel" placeholder="电话号码" /> <input value="'+consignee_ext+'" name="consignee-ext" id="consignee-ext" class="consignee-ext" placeholder="分机号" /></p>';
	html+='        </li>';
	html+='      <ul>';
	html+='      <div class="consignee-but">';
	html+='        <p><input type="checkbox" name="default" id="default" />设为默认</p>';
	html+='        <a href="#" class="but">保存并设为收货地址</a>';
	html+='      </div>';
	html+='    </div>';
	html+='  </div>';
	html+='</div>';
	bodys.append(html);
	bodys.find('.w-consignee').show();
	bodys.find('.consigneeDel').click(function(){
		consigneeClose();
	});
}
function consigneeClose(){
	bodys.find('.w-consignee').hide().remove();
	bodys.find(".w-bg").hide().remove();	
}
