<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<c:import url="./temp/boot_head.jsp"></c:import>
	
	<script type="text/javascript">
		alert('Hello world');
	</script>
	<link href="./resources/css/home.css" rel="stylesheet">
</head>
<body>
<c:import url="./temp/boot_nav.jsp"></c:import>
	<h1 class="c1">Home Page</h1>
	
	<h1 id="d1">Other H1</h1>
	
	<div id="d2">
		<h3>In DIV</h3>
	</div>
	
	<img class="c1" id="d3" alt="gosim" src="./resources/images/img1.jpg">
	
	<div>
		<button onClick="fn1()">CLICK</button>
	</div>
	
	<script type="text/javascript">
		console.log('body script');	
	</script>
	
	<!-- <script type="text/javascript" src="./resources/js/home.js"></script> -->	
	<script type="text/javascript" src="./resources/js/function_1.js"></script>
</body>
</html>
