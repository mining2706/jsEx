<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.2.1.min.js">
	
</script>
<script>
	$(function() {
		$("#button1").click(function() {
			// id가 dan인 태그에 입력한 값
			var dan = $("#dan").val();
			// 비동기적인 방식으로 서버 호출
			$.ajax({
				type : "post",
				url : "result1.jsp",
				data : "dan=" + dan,
				success : function(data) { //콜백함수
					//alert(data);
					//div 태그에 결과가 출력됨
					$("#result").html(data);
				}
			});
			alert("test");
		});
	});
</script>
</head>
<body>
	<!-- 동기적 방식(synchronized)
순서대로 작업 진행
비동기적 방식(asynchronized)
동시에 진행(백그라운드에서 실행됨) -->
	<h2>동기식(single thread)</h2>
	<form action="result.jsp">
		단을 입력하세요
		<input type="text" name="dan">
		<input type="submit" value="확인">
		<% if(request.getParameter("result")!=null){ %>
		<div><%=request.getParameter("result") %></div>
		<% } %>
	</form>
	<h2>비동기식(multi thread)</h2>
	단을 입력하세요
	<input type="text" id="dan">
	<input type="button" id="button1" value="확인">
	<div id="result">결과 출력 영역</div>
</body>
</html>


