<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
    <main class="bigMain"> 	
		<%@ include file="menu.jsp" %>

		<div class="box">
			<div class="descBox"></div>
			<div class="desc">Nom de Héros : ${characters[param.charId-1].getHerosName()}</div>
			<div class="desc">Identité : ${characters[param.charId-1].getIdentity()}</div>
			<div class="desc">Acteur : ${characters[param.charId-1].getActor()}</div>
			<div class="desc">Origines : ${characters[param.charId-1].getOrigins()}</div>
			<div class="desc">Note : ${characters[param.charId-1].getRate()} &#9733</div>
	</div>

		<div class="comments">
			<h2 class="avengersFont">Espace Commentaire</h2>
			<div class="publiedComments">
				<p style="color: black">blabla</p>
			</div>
			<form class="commentform" methode="post">
				<div class="space">
					<textarea name="comment" rows="6" cols="188" placeholder="Laisser un commentaire."></textarea>
				</div>
				<input type="submit" value="Publier">
			</form>
			
		</div>
    </main>
	<%@ include file="footer.jsp" %>
</html>