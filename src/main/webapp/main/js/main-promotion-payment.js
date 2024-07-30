 		/* 결제방법 */
		var methodList = document.querySelector('.method-list')
		var payMethod = document.querySelector('#payMethod')
		
		// select 옵션 변경 시
		methodList.addEventListener('change', (event) => {
		  // option에 있는 도메인 선택 시
		  if(event.target.value !== "direct") {
		    // 선택한 도메인을 input에 입력하고 disabled
		    payMethod.value = event.target.value
		    payMethod.disabled = true
		  } else { // 직접 입력 시
		    // input 내용 초기화 & 입력 가능하도록 변경
		    payMethod.value = ""
		    payMethod.disabled = false
		  }
		})
		
		/* 환불은행 */
		var nameList = document.querySelector('.name-list')
		var refundName = document.querySelector('#refundBankname')
		
		// select 옵션 변경 시
		nameList.addEventListener('change', (event) => {
		  // option에 있는 도메인 선택 시
		  if(event.target.value !== "direct") {
		    // 선택한 도메인을 input에 입력하고 disabled
		    refundName.value = event.target.value
		    refundName.disabled = true
		  } else { // 직접 입력 시
		    // input 내용 초기화 & 입력 가능하도록 변경
		    refundName.value = ""
		    refundName.disabled = false
		  }
		})
        
        var endDate = document.querySelector("#endDate"); 

	    function onChangeCal(obj) {
	    	console.log(obj.value);
            
	    	var startDate = new Date(obj.value);

	    	startDate.setMonth(startDate.getMonth() + 12);
            startDate.setHours(startDate.getHours() - 24);

            var ohStartDate = startDate.toISOString().split('T')[0];
            endDate.value = ohStartDate;
	    }
	    
		
		
		
		
		
		
		
		
		