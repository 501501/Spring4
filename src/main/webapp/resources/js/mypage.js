/**
 * 
 */
 
const modify = document.getElementById('modify');
/*const del = document.getElementById('del');*/
const del = document.querySelector("#del");

del.addEventListener('click', function(){
	let result = confirm("Delete?");
	if(result) {
		location.href = "./delete";
	}
	/*location.href = './delete?id='+del.value;*/
})