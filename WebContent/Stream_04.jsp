<%@page import="classCall.Member"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Member> mlst = Arrays.asList(
			new Member("홍", 20),
			new Member("이", 54),
			new Member("유", 19),
			new Member("왕", 42)
			);
	request.setAttribute("members", mlst);
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>max 값 </title>
</head>
<body>
${members.stream().max((m1,m2) -> m1.age.compareTo(m2.age)).get()}<br/>
${members.stream().min((m1,m2) -> m1.age.compareTo(m2.age)).get()}<br/>

</body>
</html>