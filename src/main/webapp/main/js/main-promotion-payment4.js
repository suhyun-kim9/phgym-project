var payCnt = document.getElementById("payCnt");
var payPrice = document.getElementById("payPrice");

	 function myCnt(obj) {
            payPrice.value = obj * 50000 ;
            
            console.log(payCnt)
            if(payCnt.value < 0) {
				alert("PT 회원권은 최소 1개부터 결제 가능합니다!")
				payCnt.value = 1;
				payPrice.value = 50000;
			}
        }