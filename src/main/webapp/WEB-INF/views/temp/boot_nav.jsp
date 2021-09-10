<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="nav nav-tabs">
	<li class="nav-item"><a class="nav-link active"
		aria-current="page" href="/s4/">Home</a></li>
	<li class="nav-item"><a class="nav-link" href="/s4/notice/list">Notice</a>
	</li>
	<li class="nav-item"><a class="nav-link" href="/s4/qna/list">QnA</a>
	</li>
	
	<c:choose>
		<c:when test="${not empty member}">
			<li class="nav-item"><a class="nav-link" href="/s4/member/mypage">Mypage</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/s4/member/logout">Logout</a>
			</li>
		</c:when>

		<c:otherwise>
			<li class="nav-item"><a class="nav-link" href="/s4/member/check">Join</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/s4/member/login">Login</a>
			</li>
		</c:otherwise>
	</c:choose>
</ul>
