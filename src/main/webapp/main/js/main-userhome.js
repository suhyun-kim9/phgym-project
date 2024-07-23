		var mySlide = document.querySelector(".main-wrap");
        var num = 1;
        
        function changeImg() {
            var img = document.createElement("img");
            img.src = "img/slide" + ++num + ".jpg";
            img.classList.add("main-img");

            mySlide.appendChild(img); //1개 추가
            mySlide.removeChild(mySlide.firstElementChild); //첫번째 자식삭제
        
            //적절한 시점에 초기화
            if(num == 4) num = 1;
        }

        /* 프로그램 시작 시 동작할 기능 */
        (function() {
            setInterval(changeImg, 3000);
        }) ();