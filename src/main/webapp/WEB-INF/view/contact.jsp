<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
	<%@ include file="header.jsp" %>
	<main>
	<%@ include file="menu.jsp" %>	
        
        <h2 class="avengersFont" id="formTitle">Formulaire de Contact</h2>

		<form method="post" action="/index.jsp" spellcheck="false">
            <p class="formItem">
                Nom: <input type="text" id="nom" name="nom"/>
                <span class="erreur" id="erreurnom"></span>
            </p>
    
            <p class="formItem">
                Prénom: <input type="text" id="prenom" name="prenom"/>
                <span class="erreur" id="erreurprenom"></span>
            </p>
                    
            <p class="formItem">
                Genre:
                <input type="radio" id="genre" value="Homme" name="genre" />
                    Homme
                </input>
                <input type="radio" id="genre" value="Femme" name="genre">
                    Femme
                </input>
                <input type="radio" id="genre" value="Autre" name="genre">
                    Autre
                </input>	
                <span class="erreur" id="erreurgenre"></span>
            </p>
    
            <p class="formItem">
                Adresse e-mail:
                <input id="email" type="text"  name="email"/>
                <span class="erreur" id="erreuremail"></span>
            </p>
    
            <p class="formItem">
                Date de naissance:
                <input type="date" id="datenaissance" name="datenaissance" />
                <span class="erreur" id="erreurdatenaissance"></span>
            </p>
    
            <p class="formItem">
                <div class="formItem">Message:</div>
                <textarea class="commentaire" id="commentaire" name="commentaire" rows="15" cols="100"placeholder="ATTENTION : Pas d'informations personnelles"></textarea>
                <span class="erreur" id="erreurcommentaire"></span>
            </p>
                
            <p class="formItem">
                <input type="submit" value="Envoyer">
            </p>
        </form>

	</main>
	<%@ include file="footer.jsp" %>
</html>