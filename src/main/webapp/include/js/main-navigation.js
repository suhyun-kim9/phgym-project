
var dropdown = document.querySelector(".dropdown");

var dr1 = document.querySelector(".dr1");
var dr2 = document.querySelector(".dr2");
var dr4 = document.querySelector(".dr4");

var dropdown2 = document.querySelector(".dropdown2");
var dropdownContent = document.querySelector(".dropdownContent");
var dropdownContent2 = document.querySelector(".dropdownContent2");

var dropdown3 = document.querySelector("#dropdown3");
var dropdownContent3 = document.querySelector(".dropdownContent3");





  dropdown3.addEventListener("click", function() {
	  if (dropdownContent3.style.display === "block") {
     	  dropdownContent3.style.display = "none";
      
    } else {
		dropdownContent3.style.display = "block";
     	dropdownContent.style.display = "none";
      	dropdownContent2.style.display = "none";
}
	});
	
	
	

  dropdown.addEventListener("click", function() {
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
      dropdownContent2.style.display = "none";
      dropdownContent3.style.display = "none";
}
  });

  dropdown2.addEventListener("click", function() {
    if (dropdownContent2.style.display === "block") {
      dropdownContent2.style.display = "none";
    } else {
      dropdownContent2.style.display = "block";
      dropdownContent.style.display = "none";
      dropdownContent3.style.display = "none";
      }
   
  });
  
  
  
  //=- --------------------------------------
  
  
  
  
  
	

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

  
  

  var li1 = document.querySelector(".main_nav > li:nth-of-type(1) > a");
  var li2 = document.querySelector(".main_nav > li:nth-of-type(2) > a");
  var li3 = document.querySelector(".main_nav > li:nth-of-type(3) > a");
  var li4 = document.querySelector(".main_nav > li:nth-of-type(4) > a");
  var li5 = document.querySelector(".main_nav > li:nth-of-type(5) > a");
  var ani = document.querySelector(".animation");

  li1.addEventListener("click",function(){
    ani.style.left = "200px";
    ani.style.width = "130px";
  });

  li2.addEventListener("click",function(){
    ani.style.left = "357px";
    ani.style.width = "115px";
  });

  li3.addEventListener("click",function(){
    ani.style.left = "490px";
    ani.style.width = "150px";
  });
  
  li4.addEventListener("click",function(){
    ani.style.left = "660px";
    ani.style.width = "110px";
  });
  
  li5.addEventListener("click",function(){
    ani.style.left = "808px";
    ani.style.width = "119px";
  });
  