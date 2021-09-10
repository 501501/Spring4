/*check.js*/
const checkAll = document.getElementById('ch');
const c1 = document.getElementsByClassName('c1');
const btn = document.getElementById('btn');
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

checkAll.addEventListener('click', function(){
	if (checkAll.checked) {
		for(let c of c1) {
			c.checked = true;
		}
	} else {
		for(let c of c1) {
			c.checked = false;
		}
	}
});

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
}