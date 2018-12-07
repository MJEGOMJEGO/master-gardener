import "bootstrap";
import "jquery";

menuTrigger = document.querySelector(".js-menu-trigger");
menuTrigger.classList.toggle("change");

$("#mobile-menu").toggleClass("menu-hidden", 800, "easeOutQuint");
