var endDate = document.querySelector("#endDate"); 
    
        function myMethod(obj) {
            payMethod.value = obj;
        }
        
        function myBank(obj) {
			refundBankname.value = obj;
        }

	    function onChangeCal(obj) {
	    	
	    	var startDate = new Date(obj.value);
	    	startDate.setMonth(startDate.setMonth() + 12);
	    	console.log(startDate);
	    }
	    
	    
	    

        function myMethod(obj) {
            payMethod.value = obj;
        }
        
        function myBank(obj) {
			refundBankname.value = obj;
        }

	    function onChangeCal(obj) {
	    	console.log(obj.value);
            
	    	var startDate = new Date(obj.value);

	    	startDate.setMonth(startDate.getMonth() + 12);
            startDate.setHours(startDate.getHours() - 24);

            var ohStartDate = startDate.toISOString().split('T')[0];
            endDate.value = ohStartDate;
	    }
	    