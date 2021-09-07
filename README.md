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
	CONTENTS
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
	4) 삭제
	5) 수정
	
	
### QnA
원본글: 질문 원글
부모글: 답글의 부모글
답글: 답글
1. 테이블 생성
	num
	title
	contents
	writer
	regDate
	hit
	ref : 글들을 그룹으로 묶을 용도
		원본글: 자기의 글 번호
		답글: 부모의 REF
	step : 그룹으로 묶은 글들의 순서 지정
		원본글: 0
		답글: 1) ref가 부모의 ref와 같고 step이 부모의 step보다 큰 것들을 찾아서 각각 step을 1씩 증가
		2) 부모의 step에 +1한 값을 자기의 step으로 입력
	depth : 답글의 들여쓰기 횟수(레벨)
		원본글: 0
		답글: 부모의 depth +1한 값