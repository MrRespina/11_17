/**
 * 
 */
 
 function check(){
	
	let xBox = document.calcForm.x;
	let yBox = document.calcForm.y;
	
	if(isEmpty(xBox)){
		alert('x 값을 입력해주세요!');
		xBox.value='';
		xBox.focus();
		return false;
	} else if(isNotNumber(xBox)){
		alert('x 값에 숫자를 입력해주세요!');
		xBox.value='';
		xBox.focus();
		return false;
	} else if(isEmpty(yBox)){
		alert('y 값을 입력해주세요!');
		yBox.value='';
		yBox.focus();
		return false;
	} else if(isNotNumber(yBox)){
		alert('y 값에 숫자를 입력해주세요!');
		yBox.value='';
		yBox.focus();
		return false;
	}
	
	return true;
	
}