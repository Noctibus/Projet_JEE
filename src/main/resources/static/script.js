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
    let i = id.substring(id.length-1);
    let starId=id.substring(0,id.length - 1);
    for(let j=1; j<=5; j++){
        if (j<=i) {
            document.getElementById(starId+j).style.color="red";
        } else {
            document.getElementById(starId+j).style.color="white";
        }
    }
}

function mouseOut(id,rateValue){
    let starId=id.substring(0,id.length - 1);
    for(var j=1; j<=5; j++){
        if (j<=rateValue) {
            document.getElementById(starId+j).style.color="red";
        } else {
            document.getElementById(starId+j).style.color="white";
        }
    }
}