const popup = document.getElementById("popup");

if (popup){
  popup.addEventListener("click", (event) => {
    event.currentTarget.classList.toggle("popup-appear");
    event.currentTarget.classList.toggle("popup-disappear");
  });
}
