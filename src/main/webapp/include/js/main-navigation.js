
var dropdown = document.querySelector(".dropdown");

var dr1 = document.querySelector(".dr1");
var dr2 = document.querySelector(".dr2");
var dr4 = document.querySelector(".dr4");

var dropdown2 = document.querySelector(".dropdown2");
var dropdownContent = document.querySelector(".dropdownContent");
var dropdownContent2 = document.querySelector(".dropdownContent2");

dr1.addEventListener("click", function() {
    dropdownContent.style.display = "none";
    dropdownContent2.style.display = "none";
      
  });

  dr2.addEventListener("click", function() {
    dropdownContent.style.display = "none";
    dropdownContent2.style.display = "none";
  });

  dr4.addEventListener("click", function() {
    dropdownContent.style.display = "none";
    dropdownContent2.style.display = "none";
  });

  dropdown.addEventListener("click", function() {
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
      dropdownContent2.style.display = "none";
    }
  });

  dropdown2.addEventListener("click", function() {
    if (dropdownContent2.style.display === "block") {
      dropdownContent2.style.display = "none";
    } else {
      dropdownContent2.style.display = "block";
      dropdownContent.style.display = "none";
    }
  });


// var dr = document.querySelectorAll('.dr');
// var dropdownContent2 = document.querySelector('.dropdownContent2');
// var dropdownContent = document.querySelector('.dropdownContent');



// var mainNav =  document.querySelector(".main_nav");



// mainNav.addEventListener("click", function(e){
//     console.log(e.target);
// });


// for (var i = 0; i < dr.length; i++){
//     dr[i].addEventListener("click", function(e){
//         console.log(e.target.previousElementSibling);
//         console.log(e.target.classList);
//         console.log(e.target.classList.contains('dropdown'));
//     });
// }   
 
// function myFunction2() {
//     document.querySelector(".drdown2").classList.toggle("show");
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
    ani.style.left = "490px";
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
    ani.style.width = "119px";

  })

