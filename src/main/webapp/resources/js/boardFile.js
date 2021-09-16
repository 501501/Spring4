/**
 * boaedFile.js
 	최대 5개까지만 추가 가능
 */

let count = 0;
let index = 0;

$("#add").click(function(){
	index ++;
	let file = '<div class="mb-3" id="del'+index+'">';
	file = file + '<input type="file" name="files" class="form-control join" name="photo" id="photo">';
	file = file + '<span data-btn-id="'+index+'" class="del"> X </span>'
	file = file + '</div>';
	
	if (count < 5) {
		$("#files").append(file);
		count ++;
	}
	else {
		alert("최대 5개");
	}
});

$("#files").on('click', '.del', function(){
	let num = $(this).attr('data-btn-id');
	/*$("#del"+num).remove();*/
	$(this).parent().remove();
	count --;
});