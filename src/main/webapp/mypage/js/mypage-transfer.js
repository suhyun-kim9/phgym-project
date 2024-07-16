function check() {
	var userNo = document.querySelector("input[name=userNo");
	var memPayNo = document.querySelector("input[name=memPayNo");
	if(userNo.value == "") {
		alert("회원번호를 입력해 주세요.");
		return false;
	}
	return true;
}