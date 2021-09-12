<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>My Page</h1>
	<h3>ID : ${member.id}</h3>
	<h3>Email : ${member.email}</h3>
	
	<button id="modify">수정</button>
	<button id="del" value="${member.id}">탈퇴</button>

<script type="text/javascript" src="../resources/js/mypage.js"></script>
</body>
</html>