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
${grt = (a,b) -> a > b ? true : false; '' }
${grt(3,4) }<br/>
<!--위에 두줄과 아래한줄이 같은 내용이다  -->
${((a,b) -> a > b ? true : false)(3,4)}

${fac = (n) -> n==1? 1: n*fac(n-1); '' }
${fac(5) }<br/>


</body>
</html>