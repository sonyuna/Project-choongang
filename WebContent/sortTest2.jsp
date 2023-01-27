<%@page import="java.util.Arrays"%>
<%@page import="classCall.Member"%>
<%@page import="java.util.List"%>
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
<title>Insert title here</title>
</head>
<body>
${vals = [20,17,30,2,9,23];
	sorted=vals.stream().sorted().toList() };<br/>
${vals = [2.0,1.7,3.0,2.0,9.0,2.3];
	sorted=vals.stream().sorted().toList() };<br/>
${vals = ["하","가","카"];
	sorted=vals.stream().sorted().toList() };<br/>
<hr/> 
내림차순 람다식 표현 <p/>
${vals = ["하","가","카"];
	sorted=vals.stream().sorted((x1, x2) -> x1 < x2? 1: -1).toList() };<br/>
<hr/>
${members.stream()
	.sorted((m1,m2) -> m1.age.compareTo(m2.age))
	.map(x->x.name += ":" += x.age).toList() }
<hr/> toString 적용 <br/>
${members.stream()
	.sorted((m1,m2) -> m1.age.compareTo(m1.age))
	.limit(2).toList() }
<p/>
표현언어 El 로 count하는 법 <br/>
${members.stream().count()}<br/>
</body>
</html>