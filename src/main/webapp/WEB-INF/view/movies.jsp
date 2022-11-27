<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
    <main class="bigMain"> 	
		<%@ include file="menu.jsp" %>

	  	<section id="templine">
			
		</section>

		<div class="comments">
			<h2>Espace Commentaire</h2>
			<div class="publiedComments">
				<p style="color: black">blabla</p>
			</div>
			<form id="commentform" methode="post">
				<div class="space">
					<textarea name="comment" rows="6" cols="213" placeholder="Laisser un commentaire."></textarea>
				</div>
				<input type="submit" value="Publier">
			</form>
			
		</div>
    </main>
	<%@ include file="footer.jsp" %>
</html>