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
	<h1>Check Page</h1>
	
	<div class="container-fluid">
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="" id="ch">
		  <label class="form-check-label" for="ch">
		    Check ALL
		  </label>
		</div>
		
		<div class="form-check">
		  <input class="form-check-input c1 vi" type="checkbox" value="" id="flexCheckDefault1">
		  <label class="form-check-label" for="flexCheckDefault1">
		    약관1
		  </label>
		</div>
		
		<div class="form-check">
		  <input class="form-check-input c1 vi" type="checkbox" value="" id="flexCheckDefault2">
		  <label class="form-check-label" for="flexCheckDefault2">
		    약관2
		  </label>
		</div>
		
		<div class="form-check">
		  <input class="form-check-input c1 vi" type="checkbox" value="" id="flexCheckDefault3">
		  <label class="form-check-label" for="flexCheckDefault3">
		    약관3
		  </label>
		</div>
		
		<div class="form-check">
		  <input class="form-check-input c1" type="checkbox" value="" id="flexCheckDefault4">
		  <label class="form-check-label" for="flexCheckDefault4">
		    약관4(광고성)
		  </label>
		</div>
	</div>
	
	<button id="btn">회원가입</button>
	<!-- <a href="./join" id="btn">회원가입</a> -->
	
	<script type="text/javascript" src="../resources/js/member.js"></script>
</body>
</html>