<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	List<Map<String, Object>> articleListMap = (List<Map<String, Object>>) request.getAttribute("articleListMap");
	int mathNUM =(int)request.getAttribute("mathNUM");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Article list</title>
</head>
<body>
	<div>게시물 리스트 v4</div>
	
	<table border="1">
		<colgroup>
			<col />
			<col width="200" />
		</colgroup>
		<tr>
			<th>번호</th>
			<th>날짜</th>
			<th>제목</th>
		</tr>
		<% for(Map<String, Object> articleMap : articleListMap) { %>
			<tr>
				<td><%= articleMap.get("id") %></td>
				<td><%= articleMap.get("regDate") %></td>
				<td><a href="detail?id=<%= articleMap.get("id") %>"><%= articleMap.get("title") %></a></td>
			</tr>
		<% } %>
		
	</table>
		<% for(int i=0; i<mathNUM; i++){ %>
			<button><a href="num=<%= i+1 %>"></a><%= i+1%></button>
		<% } %>
	
	<div><a href="../home/main">메인 페이지</a></div>
</body>
</html>