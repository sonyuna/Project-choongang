<%@page import="expressionLanguage.Ther"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Ther th = new Ther();
	th.setCel("서울", -7.0);
	request.setAttribute("t", th);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
${t.info}<br/>
섭씨 서울온도 : ${t.getCel('서울')}<br/>
화씨 : ${t.getFah('서울')} <br/>
</body>
</html>