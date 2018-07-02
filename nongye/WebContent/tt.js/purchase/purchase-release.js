// 选择城市控件
$.fn.setCityAttr = function(text, attrs) {
    $(this).attr(attrs).text(text);
};
$(function() {
	var url = _purchase_url + "/citys";
//	var area = [];
	var cities=null;
	var countries=null;
	labelSelect();
	collapse();
	$.ajax({
		type:'post',
		url: url,
		dataType:'json',
		async: false,
		cache :false ,
		success:function(data){
//			data = data || [];
//			if(typeof data === 'string') data = eval("("+data+")");
			cities =data ;
			countries=cities.countries;
		}
    });

    var $cityDialog = $('#city-dialog');
    var $cityGroup = $('#city-group');
    var $citySelect = $('#citylist');

    $cityGroup.find('.field').remove();
    $cityGroup.find('.guess>.city-target').setCityAttr(cities.guess, {
        'data-pinyin': cities.guess_pinyin,
        'data-cityid': cities.guess_cityid
    });

    $.each(cities.cityGroup, function(index, element){
        if($(element).length <= 0) return;
        var listTemp = '', filedTemp = '';
        $(element).each(function(){
            listTemp += '<li><a data-pinyin="'+this.pinyin+'" data-cityid="'+this.city_id+'" class="city-target" href="#">'+this.real+'</a></li>'
        });
        filedTemp = '<div class="field clearfix"><span class="letters fl">'+String.fromCharCode(65+index)+'</span>'+'<ul class="clearfix">'+listTemp+'</ul></div>';
        $cityGroup.append(filedTemp);
    });
    var  cityId=$("#citylist").attr("data-cityid");
    if(cityId=="" || cityId==null){
    	$citySelect.setCityAttr(cities.guess, {
            'data-pinyin': cities.guess_pinyin,
            'data-cityid': cities.guess_cityid
        });
    }
    

    $citySelect.click(function(){
        if($cityDialog.is(':hidden')) { $cityDialog.show(); }
        else { $cityDialog.hide(); }
        return false;
    });
    $('body').click(function(){
        $cityDialog.hide();
    });
    $cityDialog.click(function(){
        return false;
    });
    $('.city-target', $cityGroup).click(function(){
        $cityDialog.hide();
        $citySelect.setCityAttr($(this).text(), {
            'data-pinyin': $(this).attr('data-pinyin'),
            'data-cityid': $(this).attr('data-cityid')
        });
        initAddressAuto();
    });

    

// 选择城市控件 -- 自动补全
    var countriesArray = $.map(countries, function (value, key) { return { value: value, data: key }; });
    $('#city-auto').autocomplete({
//        lookup: countriesArray,
        serviceUrl: _purchase_url + '/citysAuto',
        paramName: 'keyword',
        dataType : 'json',
        preventBadQueries: false,
        deferRequestBy: 100,
        onSelect: function(suggestion) {
            $cityDialog.hide();
            $citySelect.text(suggestion.value);
            $citySelect.attr("data-cityid",suggestion.data);
        },
        onHint: function (hint) {
        },
        transformResult: function(response) {
            return {
                suggestions: $.map(response, function(n) {
                    return { value: n.shortName, data: n.id };
                })
            };
        },
        onInvalidateSelection: function() {
        }
    });
    $('.autocomplete-suggestions').click(function(event){
        event.stopPropagation();
    });
    
    initAddressAuto();
    
});

$(function(){
    var $citSlt = $('#cities-select');
    var $citSltPop = $('.pop', $citSlt);
    var $citSltText = $('.text', $citSlt);
    var $citSltClose = $('.close', $citSlt);
    $citSltText.click(function(){
        $citSltPop.toggle();
    });
    $citSlt.click(function(e){
        e.stopPropagation();
    });
    $('body').click(function(){
        $citSltPop.hide();
    });
    $citSltClose.click(function(){
        $citSltPop.hide();
        return false;
    });
    $citSltPop.find('dt input:checkbox').change(function(){
        $(this).parents('dl').find('dd input:checkbox').prop('checked', $(this).prop('checked')).change();
    });

    $citSltPop.find('dd input:checkbox').change(function(){
        var textTemp = '\u4E0D\u9650';
        var citLabel = [];
        var $dls = $('dl', $citSltPop);

        $dls.each(function(index, element){
            var $check = $(element).find('dd input:checkbox');
            var $checktit = $(element).find('dt label');

            if($check.not(':checked').length<=0) {
                citLabel.push($checktit.text());
                $checktit.find('input:checkbox').prop('checked', true);
            }
            else {
                $check.filter(':checked').each(function(){
                    citLabel.push($(this).parent().text());
                });
                $checktit.find('input:checkbox').prop('checked', false);
            }
        });

        if(citLabel.length>0) {
            textTemp = citLabel.toString();
        }
        $citSltText.find('label').text(textTemp).attr('title', textTemp);
    });
});

// 标签式select 交互效果
function labelSelect() {
    var $select = $('.label-select');
    $select.each(function(){
        var curVal = $(this).find('li.cur a').attr('data-val');
        if(typeof(curVal) == "undefined") curVal = 0;
        $select.attr('data-val', curVal);
        $(this).find('li').click(function(e){
            curVal = $(this).find('a').attr('data-val');
            if(typeof(curVal) == "undefined") curVal = 0;
            $select.attr('data-val', curVal);
            $(this).addClass('cur').siblings().removeClass('cur');
            e.preventDefault();
        });
    });
}
// 折叠选项
function collapse() {
    var $collapse = $('.collapse');
    var $collapseCtrl = $('.collapse-ctrl');
    $collapse.hide();
    $collapseCtrl.click(function(){
        if($collapse.is(':hidden')) {
            $collapse.slideDown('fast');
            $(this).addClass('alt').find('a').text(function(){
                return $(this).attr('data-text-alt');
            });
        }
        else {
            $collapse.slideUp('fast');
            $(this).removeClass('alt').find('a').text(function(){
                return $(this).attr('data-text');
            });
        }
        return false;
    });
}
function initAddressAuto(){
	$('#fulladdress').autocomplete({
	      serviceUrl: _purchase_url + '/addressAuto',
	      paramName: 'keyword',
	      params: {
	    	region : $("#citylist").text()
	      },
	      dataType : 'json',
	      preventBadQueries: false,
	      deferRequestBy: 100,
	      onSelect: function(suggestion) {
	    	  $('#fulladdress').val(suggestion.value);
	    	  $('#lat').val(suggestion.data.lat);
	    	  $('#lng').val(suggestion.data.lng);
	      },
	      onHint: function (hint) {
	      },
	      transformResult: function(response) {
	          return {
	              suggestions: $.map(response, function(n) {
	                  return { value: n.name, data: n.location };
	              })
	          };
	      },
	      onInvalidateSelection: function() {
	      }
	   });
}
//$(document).ready(function() {
//	 labelSelect();
//	 collapse();
//});
