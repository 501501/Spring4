<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board} Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
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
			<button type="button" id="fileAdd" class="btn btn-primary">File Add</button>
			<div id="fileAddResult">
			</div>
			
			<button type="submit" class="btn btn-primary mt-3">Write</button>
		</form>
	</div>
	<script type="text/javascript" src="../resources/js/boardFile.js"></script>
	<script type="text/javascript">
		$('#contents').summernote();
	</script>
</body>
</html>