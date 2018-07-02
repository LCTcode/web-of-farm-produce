window.onload = function() {
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