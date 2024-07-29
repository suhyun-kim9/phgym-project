var payCnt = document.getElementById("payCnt");
var payPrice = document.getElementById("payPrice");

payCnt.value !== 0; 
           
	 function myCnt(obj) {
		
		 payPrice.value = obj * 50000 ;
            
            if(payCnt.value < 1) {
				alert("PT 회원권은 최소 1개부터 결제 가능합니다!")
				payCnt.value = 1;
				payPrice.value = 50000;
			}
            
            
	 }