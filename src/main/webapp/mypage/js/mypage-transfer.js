function check() {
	var userNo = document.querySelector("input[name=userNo]");
	if(userNo.value == "") {
		alert("회원번호를 입력해 주세요.");
		return false;
	}
	
	var numberRegex = /^[0-9]+$/;
	if(!numberRegex.test(userNo.value)) {
		alert("숫자만 입력 가능합니다.");
		userNo.focus();
		return false;
	}
	return true;
}