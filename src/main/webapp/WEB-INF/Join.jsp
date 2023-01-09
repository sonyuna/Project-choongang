<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	String id = request.getParameter("user_id");
	String pw = request.getParameter("user_pw");
	
	String new_id = request.getParameter("new_id");
	String new_pw1 = request.getParameter("new_pw1");
	String new_pw2 = request.getParameter("new_pw2");
	String user_name = request.getParameter("user_name");
	String user_nick = request.getParameter("user_nick");
	String user_birth = request.getParameter("user_birth");
	String user_addr = request.getParameter("user_addr");
	String user_phone = request.getParameter("user_phone");
	String user_email = request.getParameter("user_email");
		
	String intro = request.getParameter("join");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
가입이 완료되었습니다.
아이디 : <%=new_id%><br>
회원명 : <%=user_name %>
생년월일 : <%=user_birth %>
이름: <%=user_name %>
주소: <%=user_addr %>
닉네임: <%=user_nick %>
휴대번호 : <%=user_phone %>
이메일 : <%=user_email %>
</body>
</html>