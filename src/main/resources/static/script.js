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
