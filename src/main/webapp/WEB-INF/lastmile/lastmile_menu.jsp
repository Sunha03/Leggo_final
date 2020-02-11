<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>  
</head>
<body>
	<!-- Sidebar/menu -->
	<div id="freesidebar">
		<div id="freemenubtn">
		 	<h2 class="w3-gray" style="text-shadow:1px 1px 0 #444;font-size:20px">서울시 강남구 역삼동</h2>
		 	
	        <a id="around" class="btn btn-lg btn-default w3-button" data-toggle="popover">주변 lastmile</a>
	        <%@ include file="lastmileList.jsp" %>
	        
			<a id="favorite" class="btn btn-lg btn-default w3-button" data-toggle="popover">즐겨찾기</a>
	        <%@ include file="lastmileFavoriteList.jsp" %>

			<a id="recent" class="btn btn-lg btn-default w3-button" data-toggle="popover">최근 방문</a>
	        <%@ include file="lastmileRecentList.jsp" %>
	        
			<form action="" method="get">
				<div class="w3-cell-row">
	
					<div class="w3-cell">
				  		<input type="text" class="col-8" placeholder="검색하세요"/>
				  	</div>
				
				  	<div class="w3-cell">
				  		<a href="#" onclick="" class="w3-button w3-padding-small col-4">검색</a>
				  	</div>
				
				</div>
			</form>
		</div>
	</div>
	
	<div>
		<a href="road_map.html" class="button primary color2"
			style="width: 70%; margin: 10px; font-size: 20px;">길찾기</a><br />
		<a href="road_map.html" class="button primary color2"
			style="width: 70%; margin: 10px; font-size: 20px;">주차장</a><br />
	</div>
	
	
	<script type="text/javascript">
	 	$("#around").popover({
		    title: '<h5>주변 자전거 대여소</h5>',
		    container: 'body',
		    placement: 'right',
		    html: true, 
		    content: function() {
		        return $('#lastmileListTable').html();
		    }
		});
	
	
		$("#favorite").popover({
		    title: '<h5>즐겨찾기 자전거 대여소</h5>',
		    container: 'body',
		    placement: 'right',
		    html: true, 
		    content: function() {
		        return $('#LastmileFavoriteTable').html();
		    }
		});
		
		$("#recent").popover({
		    title: '<h5>최근 방문 자전거 대여소</h5>',
		    container: 'body',
		    placement: 'right',
		    html: true, 
		    content: function() {
		        return $('#LastmileRecentTable').html();
		    }
		});
</script>
	
</body>
</html>