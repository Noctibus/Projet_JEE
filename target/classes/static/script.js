/* afficher ou cacher le statut d'un personnage */
let affichageStatut = document.getElementById("cacher");

/* permet de masquer ou afficher le statut d'un personnage */
function cacherStatut() {
    if (getComputedStyle(affichageStatut).visibility == "hidden") {
        affichageStatut.style.visibility = "visible";       
    } else {
        affichageStatut.style.visibility = "hidden";
    }
}

/* affichage dynamique des étoiles */
function mouseOver(id){
    let i = id.substring(4);
    for(let j=1; j<=5; j++){
        if (j<=i) {
            document.getElementById("star"+j).style.color="red";
        } else {
            document.getElementById("star"+j).style.color="white";
        }
    }
}

function mouseOut(){
    let end = <c:out value="${rate}"/>;
    for(let j=1; j<=5; j++){
        if (j<=end) {
            document.getElementById("star"+j).style.color="red";
        } else {
            document.getElementById("star"+j).style.color="white";
        }
    }
}