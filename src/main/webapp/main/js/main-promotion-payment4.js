var payCnt = document.getElementById("payCnt");
var payPrice = document.getElementById("payPrice");

	 function myCnt(obj) {
		
		if(payCnt.value < 1) {
				alert("PT 회원권은 최소 1개부터 결제 가능합니다!")
				payCnt.value = 1;
				payPrice.value = 50000;
			}
            payPrice.value = obj * 50000 ;
            payCnt != 0;
            console.log(payCnt)
            
            
	 }