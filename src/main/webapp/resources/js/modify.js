/**
 * modify.js
 */
 
const change = document.getElementById('change');
const pws = document.getElementsByClassName('pws');
const frm = document.getElementById('frm');

change.addEventListener('click', function(){
	// 비밀번호가 공백인 경우
	if (pws[0]==null || pws[1]==null) {
		alert("비밀번호를 입력하세요.");
	}
	
	// 비밀번호 조건 true check
	// 6글자 이상, pws[0]과 pws[1] 일치 검사
	else {
		// pws[0]과 pws[1] 일치하고
		if (pws[0].value == pws[1].value) {
			// pws[0]이 6글자 이상인 경우
			if (pws[0].value.trim().length >= 6) {
				frm.submit();
			}
			else {
				alert("비밀번호를 6글자 이상으로 설정하세요.");
			}
		} else {
			alert("입력한 두 비밀번호가 일치하지 않습니다.");
		}
	}
});