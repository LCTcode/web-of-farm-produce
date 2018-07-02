<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试用网页</title>
<script type="text/javascript" src="tt.js/jquery-3.2.1.js"></script>
</head>
<body>
	这是一个测试网页
	<br>
	<%-- <c:choose>
						<c:when test="${empty list}">
						</c:when>
						<c:otherwise>
							<c:forEach items="${list }" var="RAS"
								varStatus="i">
							<c:if test="${RAS.name}==${RAS[i].name}">
							${RAS.name}<br>${RAS.value}
								
							
								
							</c:if>
								${RAS.name}
								
							</c:forEach>
						</c:otherwise>
					</c:choose> --%>

	<script type="text/javascript">
	  
	function ajaxDemo(){
		var keywords=document.getElementById("keywords").value;
		//alert(keywords);
		$.ajax({
			method : "POST",
			url : "ajaxSupplyServlet",
			data : {
					"keywords":keywords
						}
			}).done(function(msg) {
						
				 var jsonObj = $.parseJSON(msg);
				 
				 $.each(jsonObj,function(i,ReciveAjaxSupply){
					 
					// alert(ReciveAjaxSupply.name);
					// $(".ted").append(ReciveAjaxSupply.name);
					 
		 $(".ted").append(ReciveAjaxSupply.name+"<input type='type'"+"name='value'"+"/>"+"&nbsp&nbsp");
				 })
			
					});
	}
	</script>

	
	<input type="text" id="keywords" onblur="ajaxDemo()" />
	<div class="ted">
	
	</div>
</body>
</html>