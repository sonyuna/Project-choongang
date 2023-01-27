<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("someVal", "test");
	//19번라인이랑 같이 써야하는애

	String aa ="test"; //17번, 18번이랑 같이다녀야하는애

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= aa.compareTo("test") %><br/>
<%= aa.equals("test") %><br/>
${someVal == 'test' }<br/>

</body>
</html>