/**
 * 
 */
 
const modify = document.getElementById('modify');
const del = document.getElementById('del');

modify.addEventListener('click', function(){
	location.href = "./modify";
})

del.addEventListener('click', function(){
	location.href = './delete?id='+del.value;
})