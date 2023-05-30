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

let nome_label = document.getElementById("nome")
console.log(nome_label)
let email_label = document.getElementById("email")
console.log(email_label)


nome_label.addEventListener("focus", ()=>{
    nome_label.style.backgroundColor =  'lightblue'

})
nome_label.addEventListener("blur", ()=>{
nome_label.style.backgroundColor = ''
})

email_label.addEventListener("focus", ()=>{
    email_label.style.backgroundColor =  'lightblue'

})
email_label.addEventListener("blur", ()=>{
email_label.style.backgroundColor = ''
})



