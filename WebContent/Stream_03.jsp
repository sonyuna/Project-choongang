<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Stream Optional 타입 (average, min, max)</title>
</head>
<body>
${[23,34,45].stream().min().get() }<br/>
${[1,2,3].stream().min().get()} <br/>
${[].stream().min().orElse("없음")} <br/>
${[].stream().min().orElseGet(() -> -1)} <br/>
${mv = '없으면***표시'; '' }
<%--${[1,2,3].stream().min().ifPresent(x->(mv=x))}  --%>
${[].stream().min().ifPresent(x->(mv=x))}
최소값 : ${mv}
</body>
</html>