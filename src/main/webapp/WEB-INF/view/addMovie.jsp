<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="headerBG.jsp" %>
	<main>
		<%@ include file="menu.jsp" %>	
		<div class="addBox">
			<p>Ajout d'un film :</p>
            <form action="/addMovie" method="post">
                <div class="space">
                    <label for="title">Titre :</label>
                    <input type="text" name="title" required/>
                </div>
                <div class="space">
                    <label for="releaseDate">Date de sortie :</label>
                    <input type="date" name="releaseDate" required/>
                </div>
                <div class="space">
                    <label for="director">Réalisateur :</label>
                    <input type="text" name="director" required/>
                </div>
                <div class="space">
                    <label for="synopsis">Synopsis :</label>
                    <textarea name="synopsis" rows="6" cols="80" placeholder="New York, États-Unis, 2023, les Avengers se rassemblent..." required></textarea>
                </div>
                <div class="space">
                    <label for="pictureAddress">Adresse de l'affiche du film :</label>
                    <input type="text" name="pictureAddress" required/>
                </div>
                <input type="submit" value="Ajouter">
            </form>
        </div>
	</main>
	<%@ include file="footer.jsp" %>
</html>