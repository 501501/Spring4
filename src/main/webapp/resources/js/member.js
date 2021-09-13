/*check.js*/
/*const checkAll = document.getElementById('ch');
const c1 = document.getElementsByClassName('c1');*/

/*checkAll.addEventListener('click', function(){
	if (checkAll.checked) {
		for(let c of c1) {
			c.checked = true;
		}
	} else {
		for(let c of c1) {
			c.checked = false;
		}
	}
});*/

$("#ch").click(function(){
	$(".c1").prop("checked", $(this).prop("checked"));
});

$(".c1").click(function(){
	let result = true;
	$(".c1").each(function(v1, v2) {
		if(!$(v2).prop("checked")) {
			result = false;
			console.log(v1, $(v2).prop("checked"));
			//break; each문 내에서 사용 불가
		}
	});
	
	$("#ch").prop("checked", result);
});

$("#btn").click(function(){
	if($("#ch").prop("checked")) {
		location.href="join";
	} else {
		alert("약관 동의 필수");
	}
})

// ------------------------------------------------



/*const btn = document.getElementById('btn');
const vi = document.getElementsByClassName('vi');

btn.addEventListener('click', function(){
	let flag = true;
	
	for(let v of vi) {
		if (v.checked == false) {
			alert("필수 약관 동의");
			flag = false;
			break;
		}	
	}
	if (flag){
		location.href="./join";
	}
})


for (let c of c1) {
	c.addEventListener('click', function(){
		let result = true;
		
		for(c of c1) {
			if (!c.checked) {
				result = false;
				break;
			}
		}
		checkAll.checked = result;
	});
}*/