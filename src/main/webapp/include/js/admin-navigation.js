

var dropdown = document.getElementById("dropdown");
var dropdownContent = document.getElementById("nav_2");

  dropdown.addEventListener("click", function() {
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });


