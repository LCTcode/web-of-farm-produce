/**
 * 
 */
function uaredirect(f) {
	try {
		var showpc = getParam("show");
		if(showpc=="pc"){
			setCookie("show","pc",-1);
			return;
		} else if(getCookie("show")=="pc"){
			return;
		}
		if (document.getElementById("bdmark") != null) {
			return
		}
		var b = false;
		if (arguments[1]) {
			var e = window.location.host;
			var a = window.location.href;
			if (isSubdomain(arguments[1], e) == 1) {
				f = f + "/#m/" + a;
				b = true
			} else {
				if (isSubdomain(arguments[1], e) == 2) {
					f = f + "/#m/" + a;
					b = true
				} else {
					f = a;
					b = false
				}
			}
		} else {
			b = true
		}
		if (b) {
			var c = window.location.hash;
			if (!c.match("fromapp")) {
				if ((navigator.userAgent.match(/(iPhone|iPod|Android|ios)/i))) {
					location.replace(f)
				}
			}
		}
	} catch (d) {
	}
}
function isSubdomain(c, d) {
	this.getdomain = function(f) {
		var e = f.indexOf("://");
		if (e > 0) {
			var h = f.substr(e + 3)
		} else {
			var h = f
		}
		var g = /^www\./;
		if (g.test(h)) {
			h = h.substr(4)
		}
		return h
	};
	if (c == d) {
		return 1
	} else {
		var c = this.getdomain(c);
		var b = this.getdomain(d);
		if (c == b) {
			return 1
		} else {
			c = c.replace(".", "\\.");
			var a = new RegExp("\\." + c + "$");
			if (b.match(a)) {
				return 2
			} else {
				return 0
			}
		}
	}
};

function setCookie(c_name,value,expiredays)
{
	document.cookie=c_name+"="+escape(value)+";expires="+expiredays+";path=/;domain="+getDomain();
}
function getCookie(c_name)
{
if (document.cookie.length>0)
  {
  c_start=document.cookie.indexOf(c_name + "=");
  if (c_start!=-1)
	{ 
	c_start=c_start + c_name.length+1;
	c_end=document.cookie.indexOf(";",c_start);
	if (c_end==-1) c_end=document.cookie.length;
	return unescape(document.cookie.substring(c_start,c_end));
	} 
  }
return "";
};
function getDomain(){
	  var domain = window.document.domain;
	  var domainchars = domain.split(".");
	  domain = "";
	  for(var i = 1 ; i < domainchars.length ; i ++){
		 domain += (i == 1 ? "" : ".") + domainchars[i] ;
	  }
	  return domain ;
};

function getParam(name){
    var search = document.location.search;
    var pattern = new RegExp("[?&]"+name+"\=([^&]+)", "g");
    var matcher = pattern.exec(search);
    var items = null;
    if(null != matcher){
            try{
                    items = decodeURIComponent(decodeURIComponent(matcher[1]));
            }catch(e){
                    try{
                            items = decodeURIComponent(matcher[1]);
                    }catch(e){
                            items = matcher[1];
                    }
            }
    }
    return items;
};
