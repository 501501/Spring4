/*select.js*/

const c1 = document.getElementsByClassName('c1');
const btn = document.getElementById('btn');

btn.addEventListener('click', function(){
	alert("btn click");
	for(let ch of c1) {
		if (!ch.checked) {
			ch.checked = !ch.checked;
		}
	}
});

for(let ch of c1) {
	if (ch.checked) {
		ch.checked = !ch.checked;
	} else {
		ch.checked = !ch.checked;
	}
}

for(let ch of c1) { // ch = 전역변수
	ch.addEventListener('click', function(){
		alert(ch.checked);
	});
}