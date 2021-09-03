# Spring4

## Board

### Notice

글번호, 글제목, 글내용, 작성자, 작성일, 조회수
1	  a		 a		a	 오늘		0
2	  a		 a		a	 오늘		0 
	
1. 테이블 생성
	NOTICE
	NUM
	TITLE
	CONTENTS : textarea
	WRITER
	REGDATE
	HITS
	
2. Notice Sequence
3. 기능
	1) List
		/notice/list
		/WEB-INF/views/board/list.jsp
	2) 상세
		/notice/select
		/WEB-INF/views/board/select.jsp
	3) 글쓰기
		/notice/insert GET
		/WEB-INF/views/board/insert.jsp
		/notice/insert POST
		/WEB-INF/views/board/list.jsp
	4) 삭제
		/notice/delete GET
		list
	5) 수정
	
4. 순서
1) DTO, DAO, MAPPER, Test case 테스트 수행
2) Service, Controller, JSP 연결