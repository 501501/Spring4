<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<c:import url="./temp/boot_head.jsp"></c:import>

</head>
<body>
<c:import url="./temp/boot_nav.jsp"></c:import>
	<h1>Home Page</h1>
	
	<c:if test="${not empty member}">
		<h3>Login 성공</h3>
	</c:if>
	
	<c:if test="${empty member}">
		<h3>Login 전</h3>
	</c:if>
	
	<button id="btn">CLICK</button>
	
	<script type="text/javascript">
		/* const btn = document.getElementById("btn");
		btn.addEventListener() ... */
	
		$("#btn").click(function () {
			alert("click");
		});
	</script>
</body>
</html>
