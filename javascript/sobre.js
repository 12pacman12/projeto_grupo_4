let colaboradores = document.querySelector("#colaboradores")



colaboradores.addEventListener("mouseover", function() {
  
    let imgAltores = document.querySelector(".div-autores");
  
  
    imgAltores.classList.remove("div-autores")

});

colaboradores.addEventListener("mouseout", function(){
  
    let imgAltores = document.querySelector(".div-autores");
    
    imgAltores.classList.add("div-autores");
   
    colaboradores.style.color = "white"
   
});

const arrayPostagens = [
    {
        titulo: "Nossa Missão",
        texto: "Promover a inclusão do sistema de energia fovoltaica em residências, no setor comecial e industrial e no agronegócio, de forma rentável e sustentável, contribuindo para a preservação ambiental e com a geração de uma energia limpa, mais barata e equlibrada.",

    },

    {
        titulo: "Nossa Visão" ,
        texto: "Acreditamos que já é possivel começar a mudança de toda matriz energética do nosso país e essa é a nossa visão, sempre focando em trazer energia renovável, substituindo por completo toda nossa matriz energética atual para a energia fotovoltáica",
    },
     
    {
        titulo: "Nossos Valores",
        texto: "Responsabilidade sócio ambiental, desenvolvimento cultural, ética, respeito, motivação e senso de justiça  ",
    },

]





for ( let i = 0; i < arrayPostagens.length; i++) {

    let article = document.createElement("article");
    
    let section = document.querySelector(".section-02");
    section.appendChild(article);
    section.style.display = "flex";
   

    article.id = `post-${i+1}`

    article. innerHTML = `
    <h2> ${arrayPostagens [i].titulo} </h2><hr>
    <P class="descricao-2">${arrayPostagens[i].texto} </p>
    `
}