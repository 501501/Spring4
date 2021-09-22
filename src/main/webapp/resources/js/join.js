/**
 * join.js
 */
 
const btn = document.getElementById('btn');
const join = document.getElementsByClassName('join');
const pws = document.getElementsByClassName('pw');
const frm = document.getElementById('frm');
const id = document.getElementById('id');
const idResult = document.getElementById('idResult');
const idCheck = document.getElementById('idCheck');

$('#id').blur(function() {
	let id = $('#id').val();
	$.get('./idCheckAjax?id='+id, function(data){
		data = data.trim();
		if (data == '1') {
			$('#idResult').html('사용 가능');
		} else {
			$('#idResult').html('사용 불가능');
		}
	});
	console.log(id);
	
});

idCheck.addEventListener('click', function(){
	open("./idCheck?id="+id.value, "", "width=400, height=200, top=200, left=300");
});


id.addEventListener('keyup', function(){
	if (id.value.trim().length >= 6) {
		idResult.innerHTML = '올바른 ID';
	} else {
		idResult.innerHTML = 'ID는 6글자 이상';
	}
});


pws[1].addEventListener('blur', function(){
	let result = checkEqual(pws[0], pws[1]);
	if (!result) {
		alert("비밀번호 불일치");
	}
})


/*id.addEventListener('blur', function(){
	let l = id.value.trim().length;
	if (l < 6) {
		id.focus();
	}
});*/


/*id.addEventListener('change', function(){
	alert('change');
});*/


btn.addEventListener('click', function(){
	//비어있는 것들 검사 
	let ce = checkEmpty(join);
	//두 개 값이 같은지 검사
	let ce2 = checkEqual(pws[0], pws[1]);
	//비밀번호 6글자 이상 검사
	let cl = checkLength();
	
	if (ce && ce2 && cl) {
		frm.submit();
	} else {
		alert("필수 입력");
	}
});


function checkLength(){
	let l = pws[0].value.trim().length;
	if (l >= 6) {
		return true;
	} else {
		return false;
	}
}


function checkEqual(check1, check2){
	return check1.value == check2.value;
}


function checkEmpty(joins){
	let result = true;
	
	for(j of joins) {
		if (j.value.trim() == "") {
			result = false;
			break;
		}
	}
	return result;
}