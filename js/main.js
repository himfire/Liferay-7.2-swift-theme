$(function () {
    $(document).scroll(function () {
        if($('.personal-menu-dropdown .dropdown').hasClass('show')){
            $('.personal-menu-dropdown ').click();
        }
    });
});

var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function () {
    scrollFunction();
};

function scrollFunction() {
    if (document.body.scrollTop > 150 || document.documentElement.scrollTop > 150) {
        if (!window.matchMedia("(max-width: 600px)").matches) {
            mybutton.style.display = "block";
        }
    } else {
        mybutton.style.display = "none";
    }

}


// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    setTimeout(function () {
        window.scrollTo({top: 0, behavior: 'smooth'});
    }, 1000);
}
