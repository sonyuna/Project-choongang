<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>anyMatch(), allMatch(), noneMatch()</title>
</head>
<body>
${[1,2,3,4,5].stream().anyMatch(v -> v>4).get() }
<%-- anyMatch 이중에 하나만 매치가 되어도 true --%>
<hr/>
${[1,2,3,4,5].stream().allMatch(v -> v < 6 ).get() }
<%-- 모든 조건이 충족할때 true  --%>
<hr/>
${[1,2,3,4,5].stream().noneMatch(v -> v > 6 ).get() }
 <%--조건을 충족하는게 한개도 존재하지 않을때 true  --%>
</body>
</html>