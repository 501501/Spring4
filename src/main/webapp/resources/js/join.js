/**
 * join.js
 */

 // id, pw, name, email, phone 비어있으면 안됨
 
$("#btn").click(function() {
	let result = true;
	let t;

	$(".join").each(function(s1, s2) {
		if ($(s2).val() == "") {
			result = false;
			t = s2;
		}
	});
	if (result) {
		alert('submit');
		//$("#frm").sumbit();
	} else {
		alert('필수 입력');
		$(t).focus();
	}
});
