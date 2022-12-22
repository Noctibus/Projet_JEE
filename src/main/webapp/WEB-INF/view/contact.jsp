<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
	<%@ include file="header.jsp" %>
	<main>
	<%@ include file="menu.jsp" %>	
        
        <h2 class="avengersFont" id="formTitle">Formulaire de contact</h2>

		<form method="post" action="/index" spellcheck="false">
            <p class="formItem">
                Nom: <input type="text" id="nom" name="nom" required/>
            </p>
    
            <p class="formItem">
                Prénom: <input type="text" id="prenom" name="prenom" required/>
            </p>
                    
            <p class="formItem">
                Genre:
                    <label for="homme"></label><input type="radio" name="genre" id="genre" value="Homme" required/>Homme
                    <label for="femme"></label><input type="radio" name="genre" id="genre" value="Femme"/>Femme
                    <label for="autre"></label><input type="radio" name="genre" id="genre" value="Autre"/>Bébé
            </p>
    
            <p class="formItem">
                Adresse e-mail:
                <input id="email" type="email"  name="email" required/>
            </p>
    
            <p class="formItem">
                Date de naissance:
                <input type="date" id="datenaissance" name="datenaissance" required/>
            </p>
    
            <p class="formItem">
                <div class="formItem">Message:</div>
                <textarea class="commentaire" id="commentaire" name="commentaire" rows="15" cols="100"placeholder="ATTENTION : Pas d'informations personnelles" required></textarea>
            </p>
                
            <p class="formItem">
                <input type="submit" value="Envoyer">
            </p>
        </form>

	</main>
	<%@ include file="footer.jsp" %>
</html>