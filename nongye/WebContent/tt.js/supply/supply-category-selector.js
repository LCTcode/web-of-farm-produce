$(document).ready(function() {
	//初始化界面dom模型、事件
	_initEvent();
	//初始化后台数据（分类数据、品种数据等）
	_initData();
});

/**
 * 用户选择的4级分类信息
 */
var _cate3Id = "init";

/**
 * 用户选择的品种信息
 */
var _product_breed = null;

function _initEvent() {
	/**
	 * 产品名称输入框事件
	 */
	_initProductNameClick();
	/**
	 * 热门、一级分类点击事件
	 */
	_initFirstCategoryClick();
	/**
	 * 字母点击事件
	 */
	_initLetterClick();
	/**
	 * 4级分类数据选中
	 */
	_initFourCategoryClick();
	/**
	 * 警告提示
	 */
	_initWarning();

	/**
	 * 产品分类点击事件
	 */
	_initProductDropSelectClick();

	/**
	 * 初始化品种信息点击
	 */
	_initProductBreedClick();

	/**
	 * 全局dom事件
	 */
	_domEventInit();
}

/**
 * 初始化各个位置数据(一级分类下的4级分类、4级分类下的品种数据等)
 */
function _initData() {
	//初始化分类数据
	_initFirstFourCategoryData();
}
var _hotCategoryDom = $('.product-choice .type-3').eq(0);
var _targetCategoryDom = $('.product-choice .type-3').eq(1);

/**
 * 初始化分类HTML信息
 * @param firstCategory 一级分类数据
 */
var _first_fourCategoryDatas = {};
var _first_fourCategoryPageDatas = {};
var _first_fourCategory_page_key = "_first_fourCategory_page_";
var _first_fourCategory_key = "_first_fourCategory_";
var _fourCategoryBreedDatas = {};
var _currentFirstCategory = -1;

var _category_letter_set = $(".product-choice .type-2 .txt");
var _letterNavigation = $('.type-2').eq(0);
var _category_letter_line = $('.product-choice .type-2 .line');
var _product_name_input = $(".product-name");

function _initCategoryHtml(firstCategory) {
	if($.trim) firstCategory = $.trim(firstCategory);
	if(firstCategory && Number(firstCategory) > 0) {
		//如果已经选择当前
		if(_currentFirstCategory != firstCategory) {
			_targetCategoryDom.empty();
			//触发事件之前将当前一级分类数据设置完毕
			_currentFirstCategory = firstCategory;
			_category_letter_set.eq(0).trigger("click");
		} else if(_currentFirstCategory == firstCategory) {
			//如果当前选择数据点击的分类相同且没有4级分类信息则重新初始化数据;
			if(_currentLetter != _category_letter_set.eq(0).text().toLowerCase()) {
				//触发事件之前将当前一级分类数据设置完毕
				_currentFirstCategory = firstCategory;
				_category_letter_set.eq(0).trigger("click");
			}
		}
		showCategoryDom();
	} else {
		showHot();
	}

	function showHot() {
		_targetCategoryDom.hide();
		_letterNavigation.hide();
		_hotCategoryDom.show();
	}

	function showCategoryDom() {
		_hotCategoryDom.hide();
		_targetCategoryDom.show();
		_letterNavigation.show();
	}
}

//上次选择的
var _currentLetter;
var _categetoryDisplayMax = 　50;
var _category_letter_data = {};
var _category_letter_key = "_category_letter_";

function _filterCategoryData() {
	var t = $(this);
	domDeal(t);
	var selectedLetter = t.text().toLowerCase();
	var category4Letters = [];
	if(selectedLetter != _currentLetter || (selectedLetter == _currentLetter && _targetCategoryDom.find("li").length == 0)) {
		category4Letters = filter();
	}
	fillHtml();

	function filter() {
		//如果重复点击，不处理
		var key = _category_letter_key + _currentFirstCategory + "_" + selectedLetter;
		var filteredCategories = _category_letter_data[key] || [];
		//优先去js缓存中的数据,如果不存在，需要获取数据
		if(!filteredCategories || filteredCategories.length == 0) {
			var fourCategoryData = _first_fourCategoryDatas[_first_fourCategory_key + _currentFirstCategory] || [];
			var i = 0;
			//			for(var category in fourCategoryData){

			$(fourCategoryData).each(function() {
				var category = $(this);
				var pinyin = category.attr("pinyin") || "";
				if(pinyin.toLowerCase().charAt(0) == selectedLetter) {
					filteredCategories.push(category);
					if(i++ >= _categetoryDisplayMax) return false;
				}
			});

			//			}
			_category_letter_data[key] = filteredCategories;
		}
		return filteredCategories;
	}

	function fillHtml() {
		_targetCategoryDom.empty();
		var fourCategoryHtml = "";
		if(category4Letters.length == 0) {
			fourCategoryHtml = "<li>暂无数据</li>";
		} else {
			$(category4Letters).each(function(index) {
				var categoryData = $(this);
				fourCategoryHtml += "<li val='" + categoryData.attr("id") + "'>" + categoryData.attr("name") || '' + "</li>";
			});
		}
		_targetCategoryDom.append(fourCategoryHtml);
	}

	function domDeal(t) {
		_category_letter_line.show();
		index_2 = _category_letter_set.index(t);
		_category_letter_set.removeClass('cur');
		t.addClass('cur');
		var marginLeft = index_2 * 22 + 3;
		_category_letter_line.animate({
			marginLeft: marginLeft
		}, 100);
	}
	_currentLetter = selectedLetter;
}

/**
 * 选择4级分类数据、出发品种数据
 */
var _category_breed_data = {};
var _category_breedd_data_key = "_category_breed_";

function _selectFourCategory() {
	var four_category_id = $(this).attr("val") || "";
	if(four_category_id && four_category_id.length > 0) {
		$('.product-choice').hide();
		var keyword = $(this).text();
		$('.product-name').val(keyword);
		_lastkeyword = keyword;
		selectedFourCategory(four_category_id);
		0
		hideProductMsg();
	}
}

function _productDropSelected() {
	t = $(this);
	var dropValue = t.attr("val");
	var fourCategoryId = parseToKeyValue(_cate3_key);
	$(".product-drop").hide();
	var targetBreed = parseToKeyValue(_breed_key);
	var name = "";
	if(targetBreed && targetBreed != "") {
		name = $(this).text().split("-")[0] || "";
	} else {
		name = $(this).text().split("-")[1] || "";
	}
	_product_name_input.val(name);
	selectedFourCategory(fourCategoryId, targetBreed);

	function parseToKeyValue(key) {
		var dropValuePrefixes = dropValue.split(_cate3_split_value_name) || [];
		//只有4级分类信息
		if(dropValuePrefixes.length == 1 && dropValuePrefixes[0] == key) {
			return dropValuePrefix[1] || "";
		} else if(dropValuePrefixes.length > 1) {
			var valuePrefixStr = dropValuePrefixes[0];
			var valueStr = dropValuePrefixes[1];
			var values = valueStr.split(_cate3_split_value_char) || [];
			var valuePrefixes = valuePrefixStr.split(_cate3_split_value_char) || [];
			for(var i = 0; i < valuePrefixes.length; i++) {
				if(key == valuePrefixes[i])
					return values[i];
			}
			return "";
		}
	};
}

function _productBreedSelected() {
	var t = $(this);
	var breedId = t.attr("val") || "";
	//获取到品种信息
	if(breedId && breedId.length > 0) {
		var breedName = t.text();
		$(".product-breed").text(breedName);
		_product_breed = breedId;
	}
	breed_drop_hide();
}

var _getBreedBycate3Id_url = "../supply/breed";

function selectedFourCategory(fourCategoryId, targetBreed) {
	_cate3Id = fourCategoryId;
	var key = _category_breedd_data_key + fourCategoryId;
	var breeds = _category_breed_data[key];
	$('.breed-drop ul').empty();
	$(".release .row-1 .col-ico").hide();
	var breedHtml = "";
	if(!breeds || breeds.length == 0) {
		//如果品种不存在，则需要动态去获取品种信息
		fetchBreed(targetBreed);
	} else {
		fillBreed(breeds, targetBreed);
	}
	_currentSupplyTitle = _product_name_input.val();
	$("#isSearchProductInfo").val("1");
	$(".product-drop ul").empty();

	/**
	 * 获取品种信息
	 */
	function fetchBreed(targetBreed) {
		$.ajax({
			type: 'post',
			url: _getBreedBycate3Id_url + "/" + fourCategoryId,
			data: {
				ac: Math.random()
			},
			dataType: 'json',
			async: false,
			cache: false,
			success: function(data) {
				//清空原有数据
				if(data && data.length > 0) {
					_category_breed_data[_category_breedd_data_key + fourCategoryId] = data;
					fillBreed(data, targetBreed);
				}
			}
		});
	}

	/**
	 * 填充品种信息
	 * @param breed
	 * @returns
	 */
	function fillBreed(breeds, targetBreed) {
		var bool = false;
		$(breeds).each(function() {
			var t = $(this);
			breedHtml += "<li val='" + t.attr("id") + "'>" + t.attr("name") + "</li>";
			bool = true;
		});
		breedHtml += "<li val='-1'>其他</li>";
		$('.breed-drop ul').append(breedHtml);
		if(targetBreed) {
			$('.breed-drop ul').find("li[val='" + targetBreed + "']").trigger("selected");
			$(".release .row-1 .col-3").show();
		} else if(bool) {
			breed_drop_show();
		}
	}
}

/**
 * 填充产品输入框下拉菜单数据
 */
var _fillProductSelectorTimeout = null;
var _keyword = "";

function _fillProductsSelector() {
	var t = _product_name_input;
	//	product_drop_show();
	//输入信息
	_keyword = $.trim(t.val());
	_fillProductSelectorTimeout = setTimeout(_fillProductsData, 300)
}

var _initProductsData_url = "company/supplyAuto";
var　 _lastkeyword = "";
var _search_url;

function _fillProductsData() {
	$("#isSearchProductInfo").val("0");
	if(_lastkeyword == _keyword) return;
	_lastkeyword = _keyword;
	$(".product-breed").text("品种");
	$.ajax({
		type: 'post',
		url: _search_url + _initProductsData_url,
		data: {
			keyword: encodeURIComponent(_keyword),
			t: Math.random()
		},
		dataType: 'jsonp',
		jsonp: 'callback',
		cache: false,
		jsonpCallback: '_fillProducts',
		success: function(data) {
			//清空原有数据
			//			_fillProducts(data);
		}
	});
}

function _fillProducts(data) {
	$('.product-drop ul').empty();
	data = eval("(" + data + ")");
	if(data && data.length > 0) {
		var productDropHtml = "";
		$(data).each(function() {
			var p = $(this);
			productDropHtml += "<li val='" + (p.attr("value") || '') + "'>" + (p.attr("name") || '') + "</li>";
		});
		$('.product-drop ul').append(productDropHtml);
		parse(data);
		dropNumber = 0;
		product_drop_show();
	} else {
		$('.product-drop').hide();
	}

	/*产品下拉框显示*/
	function product_drop_show() {
		var top = $('.product-name').offset().top + _product_name_input.height() + 3;
		var left = $('.product-name').offset().left;
		$('.product-drop').css('top', top);
		$('.product-drop').css('left', left);
		$('.product-drop').show();
		breed_drop_hide();
		_isdrop = 1;
	}

	/**
	 * 解析数据获取品种信息
	 */
	function parse(data) {
		// cate1-cate3|aaaa-bbbb
		$(data).each(function(index) {
			var productDropObj = $(this);
			var productDropObjValue = productDropObj.attr("value");
			var valuePrefix = productDropObjValue.split(_cate3_split_value_name)[0] || "";
			var value = productDropObjValue.split(_cate3_split_value_name)[1] || "";
			//			 if(valuePrefix.indexOf(_cate3_split_value_char) > 0){
			var valuePrefixes = valuePrefix.split(_cate3_split_value_char);
			var breeds = productDropObj.attr("breeds");
			var cate3Id = null;
			if(valuePrefixes == _cate3_key) {
				//品种信息
				cate3Id = value;
			} else {
				var values = value.split(_cate3_split_value_char);
				for(var i = 0; i < valuePrefixes.length; i++) {
					if(valuePrefixes[i] == _cate3_key) {
						cate3Id = values[i];
						break;
					}
				}
			}
			if(!breeds) breeds = [];
			if(typeof breeds === 'string') breeds = eval("(" + breeds + ")");
			if(cate3Id && breeds.length > 0) {
				_category_breed_data[_category_breedd_data_key + cate3Id] = breeds;
			}
			//			 }
		});
	}

}

function _initProductChoicePanel() {
	product_choice_show();
	_hotCategoryDom.show();
	_targetCategoryDom.hide();
	_letterNavigation.hide();
	_currentLetter = "";
	_currentFirstCategory = -1;
	/*产品分类框显示*/
	function product_choice_show() {
		clearTimeout(_fillProductSelectorTimeout);
		var top = $('.product-name').offset().top + $('.product-name').height() + 3;
		var left = $('.product-name').offset().left;
		$('.product-choice').css('top', top);
		$('.product-choice').css('left', left);
		$('.product-choice').show();
		$('.product-drop').hide();
		breed_drop_hide();
		$('.product-choice .type-1 .txt').removeClass('cur');
		$(this).addClass('cur');
		var marginLeft = 0 * 80 + 10;
		$('.product-choice .type-1 .line').animate({
			marginLeft: marginLeft
		}, 100);

		_isdrop = 0;
		dropNumber = 0;
	}
}

function _initFirstCategoryClick() {
	//关闭按钮
	$(".product-choice-close").live("click", function() {
		$(".product-choice").hide();
	});

	//热门、6分类选择事件
	var index_1;
	$('.product-choice .type-1 .txt').live('click', function() {
		index_1 = $('.product-choice .type-1 .txt').index(this);
		$('.product-choice .type-1 .txt').removeClass('cur');
		$(this).addClass('cur');
		var marginLeft = index_1 * 80 + 10;
		$('.product-choice .type-1 .line').animate({
			marginLeft: marginLeft
		}, 100);
		_category_letter_set.removeClass('cur');
		var firstCategory = $(this).attr("cateId");
		_initCategoryHtml(firstCategory);
	})
}

function _initLetterClick() {
	_category_letter_set.live("click", _filterCategoryData);
}

function _initFourCategoryClick() {
	$(".type-3 li").live("selected", _selectFourCategory);
}

/**
 * 当前选择的4级分类信息
 */
_currentFourCategory = null;

/**
 * 当前选择的品种信息
 */
_currentBreedId = null;

_currentSupplyTitle = "";

function _initProductNameClick() {
	//产品名称输入框聚焦、按键、点击事件
	$('.product-name').on('focus keyup input click', function(event) {
		var pValue = $.trim($(this).val()) || "";
		before();
		if(pValue == '') {
			_initProductChoicePanel();
			_lastkeyword = "";
		} else {
			hideProductMsg();
			//每次有输入的情况下则丢掉上次请求
			if(_fillProductSelectorTimeout != null) clearTimeout(_fillProductSelectorTimeout);
			//上下按键则不处理
			var keyCode = event.keyCode || event.which;
			if(keyCode == 40 || keyCode == 38) return;
			$('.product-choice').hide();
			_fillProductsSelector();
		}

		function before() {
			$(".release .row-1 .col-msg").text("").hide();
			/**
			 * 当输入的数据与原来选择的数据发生改变，隐藏品种，清空之前选择数据
			 */
			if(_currentSupplyTitle != pValue) {
				_product_col_msg.hide();
				$(".breed-drop ul").empty();
				breed_drop_hide();
				_currentFourCategory = null;
				_currentBreedId = null;
				_currentSupplyTitle = "";
				_product_breed = null;
				_cate3Id = null;
			}
		}
	});
}

/**
 * 初始化提示事件
 */
function _initWarning() {
	/*无品名 提示*/
	$('.release .row-1 .col-ico').hover(function() {
		var top = $(this).offset().top - 32;
		var left = $(this).offset().left + 15;
		$('.product-msg').css('top', top);
		$('.product-msg').css('left', left);
		$('.product-msg').show();
	}, function() {
		$('.product-msg').hide();
	});
}

var _cate3_key = "cate3Id";
var _breed_key = "breedId";
var _cate3_split_value_name = "|";
var _cate3_split_value_char = "-";
var _initFourCategoriesByFirstCategory_url = "../supply/cate3";

function _initFirstFourCategoryData() {
	$(".type-1").find("li[cateId]").each(function(index) {
		//默认第一个为-1，热门的无需处理
		if(index > 0) {
			var firstCategoryId = $(this).attr("cateId");
			$.ajax({
				type: 'post',
				url: _initFourCategoriesByFirstCategory_url + "/" + firstCategoryId,
				data: {
					id: firstCategoryId
				},
				dataType: 'json',
				success: function(data) {
					//清空原有数据
					if(data && data.length > 0) {
						_first_fourCategoryDatas[_first_fourCategory_key + firstCategoryId] = data;
					}
				}
			});
		}
	});
}

function _initProductDropSelectClick() {
	$(".product-drop ul li").live("selected", _productDropSelected);
}

function _initProductBreedClick() {
	$(".breed-drop ul li").live("selected", _productBreedSelected);
}

var _isdrop = 0;
var _key = 0;
var dropNumber = 0;
var select_name = "";

function _domEventInit() {
	/*鼠标点击下拉框外 下拉框消失*/
	$(document).click(function() {
		$('.product-drop').hide();
		breed_drop_hide();
		/*
		 * 当没有选择品种的时候，隐藏品种选项
		 */
		if(_product_breed == null) {
			_product_col_msg.hide();
		} else {
			_product_col_msg.show();
		}
	})
	$('.product-drop').click(function(event) {
		var obj = event.target || event.srcElement;
		if((obj['tagName'] || "").toLowerCase() == 'li') {
			$(obj).trigger("selected");
		}
		event.stopPropagation();
	})
	$('.breed-drop').click(function(event) {
		var obj = event.target || event.srcElement;
		if((obj['tagName'] || "").toLowerCase() == 'li') {
			$(obj).trigger("selected");
		}
		event.stopPropagation();
	})
	$('.product-name').click(function(event) {
		event.stopPropagation();
	})
	$('.product-breed').click(function(event) {
		var t = $(this);
		if($(".breed-drop ul li").length > 0) {
			breed_drop_show();
		}
		event.stopPropagation();
	})
	$('.product-unit').click(function(event) {
		event.stopPropagation();
	})
	$('.product-choice').click(function(event) {
		var obj = event.target || event.srcElement;
		if((obj['tagName'] || "").toLowerCase() == 'li' && $(obj).attr("val")) {
			$(obj).trigger("selected");
			event.stopPropagation();
		}
	})
	/*监测键盘事件*/
	$(document).keydown(function(event) {
		var keyCode = event.keyCode || event.which;
		if(keyCode == 38) { //上箭头
			_key = 38;
			dropMove();
		} else if(keyCode == 40) { //下箭头
			_key = 40;
			dropMove();
		} else if(keyCode == 13) { //回车
			_key = 13;
			dropClose();
		}
	});
}

//上下箭头事件
function dropMove() {
	if(_key == 38) dropNumber = dropNumber - 1;
	if(_key == 40) dropNumber = dropNumber + 1;
	if(_isdrop == 1) {
		var total = $('.product-drop li').length;
		if(total == 0) return;
		var height = $('.product-drop li').height();
		if(dropNumber > total) dropNumber = 1;
		if(dropNumber < 1) dropNumber = total;
		$('.product-drop li').removeClass('cur');
		$('.product-drop li').eq(dropNumber - 1).addClass('cur');
		$(".product-drop").scrollTop((dropNumber - 1) * height);
		select_name = $('.product-drop ul li').eq(dropNumber - 1).html();
		$('.product-name').val(select_name);
	}
}
//回车事件
function dropClose() {
	if(_isdrop == 1) {
		$('.product-name').blur();
		var selectedCategory = $('.product-drop ul li[class="cur"]');
		if(selectedCategory.length > 0) {
			$('.product-drop ul li[class="cur"]').trigger("selected");
		} else {
			var allCategoies = $('.product-drop ul li');
			if(allCategoies.length > 0) {
				allCategoies.eq(0).trigger("selected");
			}
		}
		$('.product-drop').hide();
	}
}

var _product_col_msg = $(".release .row-1 .col-3");

function breed_drop_show() {
	_product_col_msg.show();
	var top = $('.product-breed').offset().top + $('.product-breed').height() + 3;
	var left = $('.product-breed').offset().left;
	$('.product-breed').addClass("active");
	$('.breed-drop').css('top', top);
	$('.breed-drop').css('left', left);
	$('.breed-drop').show();
}

function breed_drop_hide() {
	$('.product-breed').removeClass("active");
	$('.breed-drop').hide();
}

function productMsgShow(msg) {
	var productName = $(this).val() || "";
	if(productName == "") {
		$(".release .row-1 .col-msg").text("请输入产品名称").show();
		$(".release .row-1 .col-ico").hide();
	}
}

function hideProductMsg() {
	$(".release .row-1 .col-msg").text("").hide();
	$(".release .row-1 .col-ico").hide();
}

/**
 * 禁止回退
 * @param e
 * @returns
 */
function banBackSpace(e) {
	var ev = e || window.event;
	var obj = ev.target || ev.srcElement;
	var t = obj.type || obj.getAttribute('type');
	var vReadOnly = obj.getAttribute('readonly');
	var vEnabled = obj.getAttribute('enabled');
	vReadOnly = (vReadOnly == null) ? false : vReadOnly;
	vEnabled = (vEnabled == null) ? true : vEnabled;
	var flag1 = (ev.keyCode == 8 && (t == "password" || t == "text" || t == "textarea") &&
		(vReadOnly == true || vEnabled != true)) ? true : false;
	var flag2 = (ev.keyCode == 8 && t != "password" && t != "text" && t != "textarea") ?
		true : false;
	if(flag2) return false;
	if(flag1) return false;
}
document.onkeypress = banBackSpace;
document.onkeydown = banBackSpace;