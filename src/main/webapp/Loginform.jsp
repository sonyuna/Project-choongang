<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- 주소에 줄줄이 붙어보내면 get / 값만 보내면 post -->
        <form action="join.jsp" method="post" />
        <div>
            <legend> 로그인 </legend>
            <label for="user_id"> 아이디 </label>
            <input type="text" id="user_id" name="user_id" size="10" autofocus>

            <label for="user_pw"> 비밀번호 </label>
            <input type="password" id="user_pw" name="user_pw">
            
           <button class="log"> 로그인 </button>
        </div>
</body>
</html>