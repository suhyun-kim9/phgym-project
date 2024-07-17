

var dropdown = document.querySelector(".dropdown");
var dropdownContent = document.querySelector(".dropdownContent");

  dropdown.addEventListener("click", function() {
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });


  // var liElements = document.querySelectorAll('.main_nav > li');

  // for (var i = 0; i<liElements.length; i++){
  //   console.log(liElements[i]);
  //   var target = liElements[i];
  //   target.addEventListener("click", function(event){
  //       event.target.classList.add('active'); 
  //   });
  // }



  var li1 = document.querySelector(".main_nav > li:nth-of-type(1) > a");
  var li2 = document.querySelector(".main_nav > li:nth-of-type(2) > a");
  var li3 = document.querySelector(".main_nav > li:nth-of-type(3) > a");
  var li4 = document.querySelector(".main_nav > li:nth-of-type(4) > a");
  var li5 = document.querySelector(".main_nav > li:nth-of-type(5) > a");
  var ani = document.querySelector(".animation");

  li1.addEventListener("click",function(){
    //li2.style.left = "340px";
    ani.style.left = "200px";
    ani.style.width = "130px";

  })

  li2.addEventListener("click",function(){
    //li2.style.left = "340px";
    ani.style.left = "357px";
    ani.style.width = "115px";
  })

  li3.addEventListener("click",function(){
    //li2.style.left = "340px";
    ani.style.left = "492px";
    ani.style.width = "150px";

  })
  li4.addEventListener("click",function(){
    //li2.style.left = "340px";
    ani.style.left = "660px";
    ani.style.width = "110px";

  })
  
  li5.addEventListener("click",function(){
    //li2.style.left = "340px";
    ani.style.left = "808px";
    ani.style.width = "145px";

  })




//   const handleToggleActive = (e) => {
//     const target = e.target;
//     liElements.forEach((li) => {
//       li.classList.remove('active');
//     });
//     target.classList.add('active');
//   };


  
//   liElements.forEach((li) => {
//     li.addEventListener('click', handleToggleActive);
//   });
