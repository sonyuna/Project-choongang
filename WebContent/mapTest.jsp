<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="classCall.Test" %>
<%@ page import ="classCall.MyHash" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--${Test.setAaa("테스트")}  --%>${Test.setAaa("테스트")}
${Test.getAaa()}
${MyHash.setMh("111", "ttt")}
${MyHash.getMh("111") }s
</body>
</html>