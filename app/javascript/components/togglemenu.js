const menu = document.querySelector(".dropdown-on-avatar");
const page = document.querySelector(".body");
const close = document.querySelector(".close");

// if(menu) {
//   menu.addEventListener("click", (event) => {
//     const dropDown = $("#mobile-menu");
//     dropDown.toggleClass("disappear-menu", 3000, "ease");
//     dropDown.toggleClass("menu-hidden", 3000, "ease");
//     dropDown.toggleClass("menu-show", 3000, "ease");
//   });
// }

// if(page) {
//   page.addEventListener("click", (event) => {
//     dropDown = document.getElementById("mobile-menu");
//     dropDown.classList.add("menu-hidden");
//     dropDown.classList.remove("menu-show");
//   });
// }

// if(close) {
//   close.addEventListener("click", (event) => {
//     dropDown = document.getElementById("mobile-menu");
//     dropDown.classList.add("menu-hidden");
//     dropDown.classList.remove("menu-show");
//   });
// }

if(menu) {
  menu.addEventListener("click", (event) => {
    const menuList = $("#menu-list");
    console.log('bonjour');
    menuList.removeClass("hide");
    menuList.toggleClass("menu-appear", 3000, "ease");
    menuList.toggleClass("menu-disappear", 3000, "ease");
  });
}

// if(page) {
//   page.addEventListener("click", (event) => {
//     const menuList = $("#menu-list");
//     console.log('bonjour');
//     //menuList.removeClass("hide");
//     //menuList.toggleClass("menu-appear", 3000, "ease");
//     menuList.addClass("menu-disappear", 3000, "ease");
//   });
// }
