function myFunction() {
    var x = document.getElementById("dropdown-menu-profile");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    }
    else {
        x.className = x.className.replace(" w3-show", "");
    }
}

function toggle_nav() {
	var x = document.getElementById("mobile_nav");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}

$(document).ready(function(){
  	$('.owl-carousel').owlCarousel({
	    center: true,
	    items:4,
	    loop:true,
	    margin:10,
	    responsive:{
	        600:{
	            items:4
	        }
	    }
	});
});
