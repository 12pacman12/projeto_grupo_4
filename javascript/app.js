const form = document.querySelector("form");
const inputName = document.querySelector("#nome");
const formSection = document.querySelector("#form-section");
const messageSection = document.querySelector("#message-section");
const userName = document.querySelector("#nome-usuario");

form.addEventListener("submit", (event) => {
  event.preventDefault();
  formSection.style.display = "none";
  messageSection.style.display = "block";
  userName.innerText = `${inputName.value}`;
});
