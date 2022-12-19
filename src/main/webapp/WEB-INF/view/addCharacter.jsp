<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="headerBG.jsp" %>
	<main>
		<%@ include file="menu.jsp" %>	
		<div id="registerBox">
			<p>Ajout d'un personnage :</p>
            <form action="/addCharacter" method="post">
                <div class="space">
                    <label for="identity">Identité :</label>
                    <input type="text" name="identity" required/>
                </div>
                <div class="space">
                    <label for="herosName">Nom de héros (facultatif) :</label>
                    <input type="text" name="herosName"/>
                </div>
                <div class="space">
                    <label for="actor">Acteur :</label>
                    <input type="text" name="actor" required/>
                </div>
                <div class="space">
                    <label for="origins">Origines :</label>
                    <textarea name="origins" placeholder="Originaire d'une petite planète du fin fond de la galaxie..." required></textarea>
                </div>
                <div class="space">
                    Statut :
                    <input type="checkbox" name="status" checked/>
                    <label for="status">Vivant</label>
                </div>
                <div class="space">
                    <label for="pictureAddress">Adresse de l'image du personnage :</label>
                    <input type="text" name="pictureAddress" required/>
                </div>
                <input type="submit" value="Ajouter">
            </form>
        </div>
	</main>
	<%@ include file="footer.jsp" %>
</html>