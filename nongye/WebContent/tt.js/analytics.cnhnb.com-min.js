var _hmt = _hmt || [];
(function() {
	function a() {
		c()
	}

	function c() {
		document.write(unescape("%3Cscript src='//static.cnhnb.com/js/analytics/hm.js' type='text/javascript'%3E%3C/script%3E"))
	}

	function d(f) {
		var j = document.cookie;
		if(j != null && j != "") {
			j = j.split(";");
			for(var h = 0; h < j.length; h++) {
				var g = j[h];
				var e = g.split("=");
				if(e != null && f == e[0].trim()) {
					return decodeURIComponent(e[1])
				}
			}
		}
	}
	a();
	var b = document.getElementById("hn_analytics_all");
	if(b) {
		b.parentNode.removeChild(b)
	}
})();