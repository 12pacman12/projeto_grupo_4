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

let nome_input = document.getElementById("nome")

let label =document.querySelector("label[for=nome]")

let nomeHelper = document.getElementById("nome-helper")
let email_helper = document.getElementById("email-helper")

let emailInput = document.getElementById("email")

let label2 =document.querySelector("label[for=email]")

nome_input.addEventListener("focus", ()=>{
    nome_input.style.backgroundColor =  'lightblue' 
    label.classList.add("required-popup") 

})

console.log(label2)
nome_input.addEventListener("blur", ()=>{
nome_input.style.backgroundColor = ''
label.classList.remove("required-popup")
})

emailInput.addEventListener("focus", ()=>{
    emailInput.style.backgroundColor =  'lightblue'
    label2.classList.add("required-popup")

})
emailInput.addEventListener("blur", ()=>{
emailInput.style.backgroundColor = ''
label2.classList.remove("required-popup")
})

nome_input.addEventListener("change",(e)=>{
  let nomeInputValue = e.target.value
  if(nomeInputValue.length < 3){
    nome_input.classList.remove("correct")
    nome_input.classList.add("error")
    nomeHelper.innerText = "O nome de usuário deve conter pelo menos 3 caracteres"
    nomeHelper.classList.add("visible");
    
    if(nomeInputValue.length == 0 ){
      nome_input.classList.remove("error")
      nomeHelper.classList.remove("visible")
    }

    }else{
      nome_input.classList.add("correct")
      nomeHelper.classList.remove("visible")
  }

})




emailInput.addEventListener("change",(e)=>{

   let valor = e.target.value
   if(valor.includes("@") && valor.includes(".com") ){

     emailInput.classList.add("correct")
     emailInput.classList.add("error")
    //  email_helper.innerText = "Email inválido"
    //  email_helper.classList.add("visible")
            
   } 
   if(valor.length < 3){
    emailInput.classList.add("error")
    email_helper.innerText = "Email inválido"
    email_helper.classList.add("visible")
   }
   if(valor == 0){
    emailInput.classList.remove("error")
    email_helper.classList.remove("visible")
    emailInput.classList.remove("correct")
   }

//    let emailInputLabel = e.target.value
  //  if(valor.length < 3){
  //     emailInput.classList.add("error")
  //   }
}) 

     console.log(valor)

// função de estilização input correto 

// function estilizarInputCorreto(input, helper){
//   helper.classList.remove("visible")
//   input.classList.remove("error")
//   input.classList.add("correct")
// }


// function estilizarInputIncorreto(input, helper){
//   helper.classList.remove("visible")
//   input.classList.remove("error")
//   input.classList.add("correct")
// }



