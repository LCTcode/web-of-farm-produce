/**
 * 前台校验框架
 * @param V
 */
(function(V){
	var v = V ;
	
	var default_selector_empty_tips = "请选择";
	
	var default_input_empty_tips = "请输入";
	
	/*
	 * 规则集合
	 */
	v.rules = [];
	
	/**
	 * 接口、初始化校验规则
	 */
	v.register =function(rules){
		try {
			console.log("init validator rules");
		} catch (e) {
		}
		if(rules && rules instanceof Array){
			v.rules = rules ;
			//绑定离开事件
			bindblur();
		}else{
			try {
			  console.log("validator rules must be array!");
			 } catch (e) {
		     }
		}
	};
	
	/**
	 * 校验方法
	 */
	v.validator = function(rules){
		var result = true ;
		 if(!rules) rules = this.rules;
		 if(rules instanceof Array && rules.length > 0 ){
			 v(rules).each(function(){
				 var rule = v(this)[0];
				 if(rule.name){
					var bool =  v.valideSingleton(rule);
					if(!bool){
						result = bool ;
					}
				 }
			 });
		 };
		 return result ;
	};
	
	/**
	 * 判断是否为空值
	 */
	function isNull(input){
		input = v(input);
		if(typeof input != 'undefined'){
			if(input.length > 0){
				//多个。比如 radio、checkbox 等。
				var bool = false ;
				input.each(function(){
					bool = adjustNull(v(this));
					//如果有一个不为空 则直接推出
					if(!bool) {
						return false ;
					}
				});
				return bool ;
			}else{
				 return adjustNull();
			}
		}
	};
	
	/**
	 * 判断单个对象值是否为空
	 * @param singleton
	 * @returns
	 */
	function adjustNull(singleton){
		var bool = true;
		var i = v(singleton);
		//如果是隐藏的，直接不判断
		if(i.is(":hidden")) return false ;
		var type = (i.attr("type") || i[0].tagName || "").toLowerCase();
		//单选、多选则判断是否选中一个
		if(type == 'checkbox' || type == 'radio'){
			if(i.attr("checked")){
				bool = false ;
				//跳出循环
				return false ;
			}
		}else if(type == 'select'){
			//下拉框
			var selected = i.find("option:selected");
			if(!selected || selected.length == 0) return true  ;
			var value = selected.val();
			if(value && value != "" && value != "-1"){
				bool =  false  ;
			}
		}else{
			var value = i.val();
			if(value && v.trim(value) != ""){
				bool =  false  ;
			}
		}
		return bool;
	}
	
	
	/**
	 * 校验单个规则
	 */
	v.valideSingleton = function(rule){
		var name = rule.name || "";
		var require = rule.require || false;
		var tips = rule.tips || "";
		var title = rule.title ||"";
		var input = v(":input[name='"+name+"']");
		var regexs = rule.regexs || []	;
		if(typeof input != 'undefined'){
			var value = input.val();
			//必填
			if(require){
				var isnull = isNull(input);
				if(isnull){
					var tips = getTipsPrefix(input) + title;
					//显示错误信息
					v.showTips(name,tips);
					return false
				}
			}
			
			//如果有正则表达式，需要校验正则表达式
			if(regexs && regexs.length > 0 ){
				for(var i = 0 ; i < regexs.length ; i++){
					var regex = regexs[i].regex ;
					var tips = (title + regexs[i].tips) || (title + "格式不正确"); 
					//当输入了字符串正则，则直接准换成正则表达式
					if(typeof regex === "string"){
						regex = new RegExp(regex);
					}
					//为正则的时候处理
					if(regex instanceof RegExp && !regex.test(v.trim(value))){
						v.showTips(name,tips);
						return false; 
					}
				}
			}
		}
		return true ;
	};
	
	function getTipsPrefix(input){
		input = v((input && input.length > 0) ? input[0] : input );
		var type = (input.attr("type") || input[0].tagName || "" ).toLowerCase();
		if(type == 'checkbox' || type == 'radio' || type == 'select'){
			return default_selector_empty_tips;
		}
		return default_input_empty_tips;
	}
	
	/**
	 * 展现单个提示信息
	 */
	v.showTips = function(name,tips){
		var t = v.findTips(name);
		var ts = t.children().eq(0) || t;
		if(tips && tips != "") {
			ts.text(tips);
		}
		t.show();
	};
	
	v.hideTips = function(name){
		var t = v.findTips(name);
		v(t).hide();
	}
	
	/**
	 * 通过名称获取到
	 */
	v.findTips = function(name){
		//TODO 通过名称找到错误提示对象
	 	return V("#"+name+"-msg");
	};
	
	/**
	 * 绑定blur事件
	 */
	var ruleMap = {};
	bindblur = function(rules){
		if(!rules) rules = v.rules;
		 if(rules instanceof Array && rules.length > 0 ){
			 for(var i = 0; i < rules.length ; i++){
				 var rule = rules[i];
				 	 var name = rule.name ;
					 if(name && rule.bindBlur){
						 ruleMap[name] = rule;
						 /**
						  * 离开焦点的时候校验
						  */
						 v(":input[name='"+name+"']").live("blur",function(){
							    var n = v(this).attr("name");
							    var r = ruleMap[n];
								var bool =  v.valideSingleton(r);
								if(!bool){
									result = bool ;
									v.showTips(n,r.tips);
								}
						 });
						 /**
						  * 焦点聚焦的时候隐藏提示框
						  */
						 v(":input[name='"+rule.name+"']").live("keyup input focus",function(){
							 		var n = v(this).attr("name");
									v.hideTips(n);
						 });
					 }
			 }
		 }
	};
	window.V = v;
})(jQuery);