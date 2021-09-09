/**
 * 
 */

let f1 = function(){
	const title = document.getElementById("title");
	const writer = document.getElementById("writer");
	const frm = document.getElementById("frm");
	const t1 = document.getElementById("t");
	const w1 = document.getElementById("w");
	
	t1.innerHTML="";
	w1.innerHTML="";
	
	let t = title.value;
	let w = writer.value;
	
	let check = true;
	
	if (t == ""){
		check = false;
		t1.innerHTML = "필수 입력 사항입니다.";
	} 
	
	if (w == ""){
		check = false;
		w1.innerHTML = "필수 입력 사항입니다.";
	}
	
	if (check) {
		frm.submit();
	} else {
		alert("필수 입력");
	}
};

let b1 = document.getElementById("b1");
b1.addEventListener("click", f1);