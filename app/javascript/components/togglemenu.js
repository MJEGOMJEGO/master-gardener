const menu = document.querySelector(".dropdown-on-avatar");
const page = document.querySelector(".container");
const close = document.querySelector(".close");

if(menu) {
  menu.addEventListener("click", (event) => {
    const dropDown = $("#mobile-menu");
    dropDown.toggleClass("menu-hidden", 3000, "ease");
    dropDown.toggleClass("menu-show", 3000, "ease");
  });
}

if(page) {
  page.addEventListener("click", (event) => {
    dropDown = document.getElementById("mobile-menu");
    dropDown.classList.add("menu-hidden");
    dropDown.classList.remove("menu-show");
  });
}

if(close) {
  close.addEventListener("click", (event) => {
    dropDown = document.getElementById("mobile-menu");
    dropDown.classList.add("menu-hidden");
    dropDown.classList.remove("menu-show");
  });
}
