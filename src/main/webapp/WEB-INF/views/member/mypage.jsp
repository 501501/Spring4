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
	<div>
		<img alt="" src="../resources/upload/member/${member.memberFilesDTO.fileName}">
	</div>
	
	<a href="./modify">수정</a>
	<a href="#" id="del">탈퇴</a>
	<%-- <button id="del" value="${member.id}">탈퇴</button> --%>

<script type="text/javascript" src="../resources/js/mypage.js"></script>
</body>
</html>