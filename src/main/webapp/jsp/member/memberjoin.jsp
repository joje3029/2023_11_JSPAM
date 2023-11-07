<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Map<String, Object> articleMap = (Map<String, Object>) request.getAttribute("articleMap");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member join</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="doMemberjoin" method="post">
		<div>아이디 : <input name="loginId" type="text" /></div>
		<div>비밀번호 : <input name="loginPw" type="text" /></div>
		<div>비멀번호 확인 : <input name="loginPwchck" type="text" /></div>
		<div>이름 : <input name="userName" type="text" /></div>
	<script>
		
	</script>
	<button>가입</button>
	</form>
</body>
</html>