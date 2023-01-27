<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% request.setAttribute("var1", 10L); %>
<%-- <c:set var="var1" value="${10}"/>--%>
<!-- 위에 두개가 같은 뜻이다. -->
${var1 = 10} \${var1} <br/>
${hh =['a','b','c']; '' }
${hh}<br/>
</body>
</html>