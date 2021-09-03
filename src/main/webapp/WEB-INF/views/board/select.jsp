<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
</head>
<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>
	<h1>Select Page</h1>
	
	<div class="container-fluid">
		<h3>Num : ${dto.num}</h3>
		<h3>Contents : ${dto.contents}</h3>
		<h3>Writer : ${dto.writer}</h3>
		<h3>RegDate : ${dto.regDate}</h3>
		<h3>Hits : ${dto.hits}</h3>
		
		<a href="./delete?num=${dto.num}">DELETE</a>
	</div>
</body>
</html>