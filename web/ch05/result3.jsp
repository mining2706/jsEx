<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="keyword.KeywordDAO" %>  
<%@ page import="java.util.List" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8"); //한글 인코딩 설정
KeywordDAO dao=new KeywordDAO();
String search=request.getParameter("search");//입력한 키워드
List<String> items=dao.list(search);
for(String str : items){
	out.println(str+"<br>");
}
%>
</body>
</html>







