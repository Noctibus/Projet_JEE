<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
    <main class="bigMain"> 	
		<%@ include file="menu.jsp" %>

	  	<section id="templine">
			<c:forEach var="i" begin="1" end="4">
				<a href="movie?nb=${i-1}" class="space" id="poster">
					<img style='width: 300px; height: 400px; margin-top: -90px;' src= 'avengers${i}.jpg'/>
				</a>

			</c:forEach>
			
		</section>

		<div class="comments">
			<h2 class="avengersFont">Espace Commentaire</h2>
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