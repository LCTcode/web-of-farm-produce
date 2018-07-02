!
    function(t, o, n) {
        t.BaseView = function() {
            this.$dorpdown = t(".topbar .dropdown"), this.$banner = t(".topbanner"), this.$category = t(".category"), this.$toolbar = t("#J-global-toolbar"), this.init()
        }, t.BaseView.prototype = {
            init: function() {
                this.$dorpdown.length > 0 && this.dropdown(), this.$banner.length > 0 && this.banner(), this.$category.length > 0 && this.category(), this.$toolbar.length > 0 && this.toolbar()
            },
            dropdown: function() {
                this.$dorpdown.hover(function() {
                    t(this).addClass("hover")
                }, function() {
                    if (t(this).removeClass("hover"), "Microsoft Internet Explorer" == navigator.appName && "MSIE8.0" == navigator.appVersion.split(";")[1].replace(/[ ]/g, "")) {
                        var o = t(this).find(".dropdown-label i");
                        o.addClass("content-empty"), setTimeout(function() {
                            o.removeClass("content-empty")
                        }, 0)
                    }
                })
            },
            banner: function() {
                var o = this.$banner,
                    n = t(".close", o),
                    i = t(".pack", o),
                    e = t(".big", o),
                    a = t(".small", o),
                    r = t("#topAdvDuration"),
                    s = parseInt(r.val()) || 5000,
                    h = function() {
                        a.animate({
                            opacity: 1
                        }, 200)
                    },
                    l = function() {
                        e.animate({
                            height: a.height()
                        }, 600, "easeOutCirc", function() {
                            t(this).hide(), h(), t("html, body").scroll()
                        })
                    };
                a.css({
                    opacity: 0
                }), n.click(function() {
                    return o.slideUp("fast"), !1
                }), i.click(function() {
                    return l(), !1
                }), setTimeout(function() {
                    l()
                }, s)
            },
            category: function() {
                var o = this.$category,
                    n = o.find(".label>dl"),
                    i = o.find(".panel>div");
                n.on("mouseenter", function() {
                    var o = t(this).attr("data-target");
                    t(this).addClass("hover").siblings().removeClass("hover"), i.eq(o).show().siblings().hide()
                }), t(".category").on("mouseleave", function() {
                    t(this).find(".panel").hide(), t(this).find(".label>dl").removeClass("hover")
                }).on("mouseover", function() {
                    t(this).find(".panel:hidden").show()
                })
            },
            toolbar: function() {
                var n = this.$toolbar.find(".hn-toolbar-wrap"),
                    i = this.$toolbar.find(".hn-toolbar-tab").not('.hn-tbar-tab-supply,.hn-tbar-tab-purchase'),
                    e = function() {
                        n.height(t(o).height())
                    };
                i.hover(function() {
                    t(this).addClass("hn-tbar-tab-hover")
                }, function() {
                    t(this).removeClass("hn-tbar-tab-hover")
                });
                var a = this.$toolbar.find(".hn-tbar-tab-top a");
                a.click(function() {
                    return t("html, body").stop(!0).animate({
                        scrollTop: 0
                    }, 300), !1
                }), e(), t(o).resize(e)
            }
        };
        /*2016-5-18*/
        $(".quick-start").hover(function() {
            $(this).find(".code-index-as").show()
        }, function() {
            $(this).find(".code-index-as").hide()
        })
        
    }(jQuery, window, document);
    var tm = null;
    var hnPopup = hnPopup || function(){};
    var hn_popup=new hnPopup();
    var callIsLogin = function(){
    	var $this = $(this);
    	var types = $this.attr("call-type");
    	var callee = $this.attr("call-key");
    	var obj = $this.attr("call-object");
    	if(types == "shop"){
    		if(obj && obj!="\""){
        		obj = shopinfo.shopCode;
        	}else{
        		obj = callee;
        	}
    		var loginUrl = init_user.shopUrl + "common/getUserLoginInfo" ;
    		//var loginUrl = "http://lgx.cnhnkj.cn/b2bWeb-shop/" + "common/getUserLoginInfo";
	    	$.ajax({
	    		url:  loginUrl,
	    		type: "POST",
	    		dataType : 'jsonp',
	    		jsonp:"jsonCallback",
		    	success: function(login) {
			    	if(login.userId){
			    		call400(init_user.shopUrl + "common/" + obj + "/call400", $this);
			    		//call400("http://lgx.cnhnkj.cn/b2bWeb-shop/common/" + obj + "/call400");
			    	}else {//登录框
			    		$this.addClass("callp");
			    		dp_opentheme();
			    	}
		    	},
		    	error:function(){
		    		$this.addClass("callp");
	    			var dataMsg = call_manage.messageTips.dataMsg;
	    			dataMsg.content = "系统异常，请稍后再试";
	    			hn_popup.tip_open(dataMsg);
		    	}
	    	 });
    	}else{
    		if(types == "supply"){
    			Login_util.dosubmit(function(){
    				call400(_supply.sUrl + _supply.supplyId + "/call400" , $this);
    			});
    		}else{
    			Login_util.dosubmit(function(){
    				if(types == "purchase"){
    					call400(init.purchaseurl + "purchase/" + callee + "/call400/" + obj , $this);
    				}
    			});
    		}
    	}
    };
    $('.callp').bind('click.callLogin', callIsLogin);
    
    function call400(callUrl, $obj){
    	$.ajax({
    		type: "post",
    		async: false,
    		url:   callUrl,
    		dataType : 'jsonp',  
	        jsonp:"jsonCallback",
    		success: function(result) {
    			if(result != null){
    				if(result.returnFlag == -1){
    					$(".hide-zz").show().find(".out-box2").show();
    					$(".call-400").addClass("callp");
    				}else if(result.status == "SUCCESS"){
    					clearTimeout(tm);
    					tm = setTimeout(function() { //在单击事件中添加一个setTimeout()函数，设置单击事件触发的时间间隔
    						$obj.addClass("zhuanjie");
    						$obj.unbind('click.callLogin');
    						var maxtime = 20;//60*60 //一个小时，按秒计算，自己调整!
    						var timer = null;
    						timer = setInterval(function(){
						    	if(maxtime>=0){
						    		var seconds = Math.floor(maxtime%60);
						    		var msg = "转接中 "+seconds;
						    		$('.zhuanjie').html(msg);
						    		--maxtime;
						    	}else{
						    		clearInterval(timer);
						    		//一下两个方法是倒计时结束后调用的方法
						    		$(".zhuanjie").addClass("callp").removeClass("zhuanjie").html("拨打电话");
						    		//设置下一次的倒计时
						    		maxtime=20;
		    						$obj.bind('click.callLogin', callIsLogin);
						    		//timer = setInterval("CountDown()",1000);  //重新开始
						    	}
    						},1000);
    					}, 300);
    					$(".hide-zz").show().find(".call-box").show();
    				}else if(result.errorCode == '401' || result.errorCode == '402'){
    					$(".call-400").addClass("callp");
    					var dataMsg = call_manage.messageTips.onlineChat;
    					dataMsg.content = result.errorMessage;
    					hn_popup.tip_open(dataMsg);
    				}else if(result.errorCode == "405" || result.errorCode == "406"){
    					$(".call-400").addClass("callp");
    					var dataMsg = call_manage.messageTips.dataMsg;
    					dataMsg.content = result.errorMessage;
    					hn_popup.tip_open(dataMsg);
    				}else if(result.errorCode == "400"){
    					$(".call-400").addClass("callp");
    					var dataMsg = call_manage.messageTips.bindMobile;
    					dataMsg.content = result.errorMessage;
    					hn_popup.tip_open(dataMsg);
    				}else if(result.errorCode){
    					$(".call-400").addClass("callp");
    					var dataMsg = call_manage.messageTips.dataMsg;
    					dataMsg.content = result.errorMessage;
    					hn_popup.tip_open(dataMsg);
    				}else{
    					$(".call-400").addClass("callp");
    					var dataMsg = call_manage.messageTips.dataMsg;
    					dataMsg.content = "系统异常，请稍后再试";
    					hn_popup.tip_open(dataMsg);
    				}
    			}
    		},
    		error:function(){//失败
    			$(".call-400").addClass("callp");
    			var dataMsg = call_manage.messageTips.dataMsg;
    			dataMsg.content = "系统异常，请稍后再试";
    			hn_popup.tip_open(dataMsg);
    		}
    	});
    }
    
    
   
    $(".sub-div button,.close-er").click(function(){
    	$(".hide-zz").hide().find(".out-box2,.call-box").hide();
    })
    
    $(function(){
    	/*-- 左侧浮动点击洽谈 --*/
    	$(".show-big").click(function() {
    		$('.l-discuss-box').show();
    		$(".shop-l-discuss").hide();
    	});
    	$(".l-d-box-tit").click(function() {
    		$('.l-discuss-box').hide();
    		$(".shop-l-discuss").show();
    	});
    })
    
var call_manage = {
	messageTips : {
		dataMsg : {
			width:'444',
			height:'245',
			title:'提示',
			content:'',
			btn:[
		        {
		            style: {
		                width: "186px",
		                marginLeft: "128px"
		            },
		            id:"sure",
		            txt:'知道了'
		        }
		    ],
			afterCreate: function(){
				$("#sure").bind("click",function(){
					hn_popup.popup_close();
				});
			}
		},onlineChat: {
			width:'444',
			height:'245',
			title:'提示',
			content:'',
			btn:[
			     {
			    	 style: {
						 marginLeft: "80px",
						 backgroundColor: "#FFF",
						 border: "#FFF solid 1px",
						 color: "#666"
					 },
					 hover: {
						 backgroundColor: "#f5f5f5"
					 },
			    	 id:"onlineCh",
			    	 txt:'知道了'
			     },
				{
					 style: {
						 marginLeft: "60px"
					 },
					 id:"onmessage",
					 txt:'在线咨询'
				},
		    ],
			afterCreate: function(){
				$("#onlineCh").click(function(){
					hn_popup.popup_close();
				});
				$("body").on("click","#onmessage",function(){
					hn_popup.popup_close();
					$("#chat").click();
				});
			}
		},bindMobile: {
			width:'444',
			height:'245',
			title:'提示',
			content:'',
			btn:[
			        {
			            style: {
			                width: "186px",
			                marginLeft: "128px"
			            },
			            id:"bindMb",
			            txt:'去绑定'
			        }
		    ],
			afterCreate: function(){
				$("#bindMb").on("click",function(){
					hn_popup.popup_close();
					window.open(init_user.hnUserWebUrl+"home/securityCenter");
				});
			}
		}
	}
}

    
