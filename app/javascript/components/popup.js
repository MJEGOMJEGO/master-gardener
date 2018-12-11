const popup = document.getElementById("popup");
popup.addEventListener("click", (event) => {
  event.currentTarget.classList.toggle("popup-appear");
  event.currentTarget.classList.toggle("popup-disappear");
});

