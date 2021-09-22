<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>
	<h1>${board} Select Page</h1>
	
	<div class="container-fluid">
		<h3>Num : ${dto.num}</h3>
		<h3>Title : ${dto.title}</h3>
		<div>${dto.contents}</div>>
		<h3>Writer : ${dto.writer}</h3>
		<h3>Date : ${dto.regDate}</h3>
		<h3>Hits : ${dto.hits}</h3>
		
		<c:forEach items="${dto.files}" var="f">
			<div>
				<a href="./down?fileName=${f.fileName}">${f.oriName}</a>
			</div>
		</c:forEach>
		
		<hr>
		<div>
			<div class="mb-3">
				<label for="writer" class="form-label">Writer</label> <input
					type="text" class="form-control" name="writer" id="writer"
					placeholder="Enter writer" value="${member.id}" readonly="readonly">
			</div>
				
			<div class="mb-3">
				<label for="contents" class="form-label">Contents</label>
				<textarea rows="10" cols="85" name="contents" id="contents"></textarea>
			</div>
				
			<div class="mt-3 ml-0">
				<button type="button" id="comment" class="btn btn-success">WRITE</button>
			</div>
		</div>
		<hr>
		
		<c:if test="${not empty member and member.id eq dto.writer}">
			<a href="./delete?num=${dto.num}">DELETE</a>
			<a href="./update?num=${dto.num}">UPDATE</a>
		</c:if>
		
		<c:if test="${board ne 'notice'}">
			<a href="./reply?num=${dto.num}">REPLY</a>
		</c:if>
	</div>
	
	<script type="text/javascript">
		$('#comment').click(function() {
			//작성자, 내용을 콘솔에 출력
			let writer = $('#writer').val();
			let contents = $('#contents').val();
			$.post('./comment', {num: '${dto.num}', writer:writer, contents:contents}, function(result){
				console.log(result.trim());
			});
		});
	</script>
</body>
</html>