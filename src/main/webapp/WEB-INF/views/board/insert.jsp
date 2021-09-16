<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board} Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
</head>
<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>
	<h1>Insert Page</h1>
	<div class="container-fluid">
		<form class="col-md-5 mx-auto" action="./insert" method="post" enctype="multipart/form-data">
			<div class="mb-3">
				<label for="title" class="form-label">Title</label> <input
					type="text" class="form-control" name="title" id="title"
					placeholder="Enter title">
			</div>
			
			<div class="mb-3">
				<label for="writer" class="form-label">Writer</label> <input
					type="text" class="form-control" name="writer" id="writer"
					placeholder="Enter writer" value="${member.id}" readonly="readonly">
			</div>
			
			<div class="mb-3">
				<label for="contents" class="form-label">Contents</label>
				<textarea rows="10" cols="85" name="contents" id="contents"></textarea>
			</div>
			
			<!-- button 추가 -->
			<div class="mt-3 ml-0" id="files">
			<label for="file" class="form-label"></label> 
				<button id="add" type="button" class="btn btn-success">File Add</button>
			</div>
			
			<div class="mt-3 ml-0">
				<button type="submit" class="btn btn-success">ADD</button>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="../resources/js/boardFile.js"></script>
</body>
</html>