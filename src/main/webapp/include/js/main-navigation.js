document.addEventListener("DOMContentLoaded", function() {
    var dr1 = document.querySelector(".dr1");
    var dr2 = document.querySelector(".dr2");
    var dr4 = document.querySelector(".dr4");

    var dropdownContent = document.querySelector(".dropdownContent");
    var dropdownContent2 = document.querySelector(".dropdownContent2");
    var dropdownContent3 = document.querySelector(".dropdownContent3");

    if (dr1) {
        dr1.addEventListener("click", function() {
            if (dropdownContent) dropdownContent.style.display = "none";
            if (dropdownContent2) dropdownContent2.style.display = "none";
        });
    }

    if (dr2) {
        dr2.addEventListener("click", function() {
            if (dropdownContent) dropdownContent.style.display = "none";
            if (dropdownContent2) dropdownContent2.style.display = "none";
        });
    }

    if (dr4) {
        dr4.addEventListener("click", function() {
            if (dropdownContent) dropdownContent.style.display = "none";
            if (dropdownContent2) dropdownContent2.style.display = "none";
        });
    }

    var dropdown = document.querySelector(".dropdown");
    var dropdown2 = document.querySelector(".dropdown2");
    var dropdown3 = document.querySelector(".dropdown3");

    if (dropdown) {
        dropdown.addEventListener("click", function() {
            if (dropdownContent.style.display === "block") {
                dropdownContent.style.display = "none";
            } else {
                dropdownContent.style.display = "block";
                if (dropdownContent2) dropdownContent2.style.display = "none";
                if (dropdownContent3) dropdownContent3.style.display = "none";
            }
        });
    }

    if (dropdown2) {
        dropdown2.addEventListener("click", function() {
            if (dropdownContent2.style.display === "block") {
                dropdownContent2.style.display = "none";
            } else {
                dropdownContent2.style.display = "block";
                if (dropdownContent) dropdownContent.style.display = "none";
                if (dropdownContent3) dropdownContent3.style.display = "none";
            }
        });
    }

    if (dropdown3) {
        dropdown3.addEventListener("click", function() {
            if (dropdownContent3.style.display === "block") {
                dropdownContent3.style.display = "none";
            } else {
                dropdownContent3.style.display = "block";
                if (dropdownContent) dropdownContent.style.display = "none";
                if (dropdownContent2) dropdownContent2.style.display = "none";
            }
        });
    }

    var li1 = document.querySelector(".main_nav > li:nth-of-type(1) > a");
    var li2 = document.querySelector(".main_nav > li:nth-of-type(2) > a");
    var li3 = document.querySelector(".main_nav > li:nth-of-type(3) > a");
    var li4 = document.querySelector(".main_nav > li:nth-of-type(4) > a");
    var li5 = document.querySelector(".main_nav > li:nth-of-type(5) > a");
    var ani = document.querySelector(".animation");

    if (li1 && ani) {
        li1.addEventListener("click", function() {
            ani.style.left = "200px";
            ani.style.width = "130px";
        });
    }

    if (li2 && ani) {
        li2.addEventListener("click", function() {
            ani.style.left = "357px";
            ani.style.width = "115px";
        });
    }

    if (li3 && ani) {
        li3.addEventListener("click", function() {
            ani.style.left = "490px";
            ani.style.width = "150px";
        });
    }

    if (li4 && ani) {
        li4.addEventListener("click", function() {
            ani.style.left = "660px";
            ani.style.width = "110px";
        });
    }

    if (li5 && ani) {
        li5.addEventListener("click", function() {
            ani.style.left = "808px";
            ani.style.width = "119px";
        });
    }
});
