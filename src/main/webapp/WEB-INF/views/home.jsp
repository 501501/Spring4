<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<c:import url="./temp/boot_head.jsp"></c:import>
	
	<script type="text/javascript">
		alert('Hello world');
	</script>
</head>
<body>
<c:import url="./temp/boot_nav.jsp"></c:import>
	<h1>Home Page</h1>
	
	<script type="text/javascript">
		console.log('body script');	
	</script>
</body>
</html>
