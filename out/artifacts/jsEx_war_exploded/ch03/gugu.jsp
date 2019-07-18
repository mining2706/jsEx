<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script>
        function winclose() {
            // opener 팝업창을 오픈한 창
            opener.document.getElementById("dan").value
                = document.form1.dan.value;
            window.close(); //현재 창 닫기
        }
    </script>
</head>
<body>
<% // gugu.jsp?dan=입력값 으로 넘어온 값
//http://localhost/web02/ch03/gugu.jsp?dan=5
// Integer.parseInt(스트링) 스트링=>숫자로
    int dan = Integer.parseInt(request.getParameter("dan"));
%>
<h2><%=dan%>단</h2>
<%
    for (int i = 1; i <= 9; i++) {
        out.println(dan + "x" + i + "=" + dan * i + "<br>");
    }
%>
<form name="form1">
    메인창에 전달할 값:<input type="text" name="dan">
    <input type="button" value="닫기" onclick="winclose()">
</form>
</body>
</html>