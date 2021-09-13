<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
</head>
<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>
	<h1>Modify Page</h1>
	<div class="container-fluid">
		<form id="frm" class="col-md-5 mx-auto" action="./modify" method="POST">
			
			<!-- pw : 변경 가능 -->
			<div class="mb-3">
				<label for="pw" class="form-label">PW</label> 
				<input type="password" class="form-control join pws" name="pw" id="pw" placeholder="Enter password">
			</div>
			
			<div class="mb-3">
				<label for="pw2" class="form-label">PW 확인</label> 
				<input type="password" class="form-control join pws" name="pw2" id="pw2" placeholder="Enter password again">
			</div>
			
			<!-- phone : 변경 가능 -->
			<div class="mb-3">
				<label for="phone" class="form-label">전화번호</label> 
				<input type="tel" class="form-control join" name="phone" id="phone" value="${member.phone}">
			</div>
			
			<!-- email : 변경 가능 -->
			<div class="mb-3">
				<label for="email" class="form-label">이메일</label> 
				<input type="email" class="form-control join" name="email" id="email"  value="${member.email}">
			</div>
			
			<div class="mt-3 ml-0" id="change">
				<button id="btn" type="button" class="btn btn-success">수정</button>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="../resources/js/modify.js"></script>
</body>
</html>