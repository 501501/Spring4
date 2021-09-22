<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>

<!-- 
ID: 비어있으면 X
PW: 두 개가 일치, 비어있으면 X, 6글자 이상, 대소문자 숫자 특수문자 1개 이상
name: 비어있으면 X
phone: 비어있으면 X, 전화번호 형식
email: 
-->
</head>
<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>
	<h1>Join Page</h1>
	<div class="container-fluid">
		<form id="frm" class="col-md-5 mx-auto" action="./join" method="POST">
			<div class="mb-3">
				<label for="id" class="form-label">ID</label> 
				<input type="text" class="form-control join" name="id" id="id" placeholder="Enter ID">
				<div class="mt-3 ml-0">
					<button id="idCheck" type="button" class="btn btn-success">ID 중복확인</button>
				</div>
				<div id="idResult"></div>
			</div>
			
			<div class="mb-3">
				<label for="pw" class="form-label">PW</label> 
				<input type="password" class="form-control join pw" name="pw" id="pw" placeholder="Enter password">
			</div>
			
			<div class="mb-3">
				<label for="pw2" class="form-label">PW 확인</label> 
				<input type="password" class="form-control join pw" name="pwCheck" id="pw2" placeholder="Enter password again">
			</div>
			
			<div class="mb-3">
				<label for="name" class="form-label">이름</label> 
				<input type="text" class="form-control join" name="name" id="name" placeholder="Enter name">
			</div>
			
			<div class="mb-3">
				<label for="phone" class="form-label">전화번호</label> 
				<input type="tel" class="form-control join" name="phone" id="phone" placeholder="01012345678">
			</div>
			
			<div class="mb-3">
				<label for="email" class="form-label">이메일</label> 
				<input type="email" class="form-control join" name="email" id="email" placeholder="email@email.com">
			</div>
			
			<div class="mt-3 ml-0">
				<button id="btn" type="button" class="btn btn-success">JOIN</button>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="../resources/js/join.js"></script>
</body>
</html>