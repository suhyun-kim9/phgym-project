

var dropdown = document.querySelector(".dropdown");
var dropdownContent = document.querySelector(".dropdownContent");

  dropdown.addEventListener("click", function() {
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });


