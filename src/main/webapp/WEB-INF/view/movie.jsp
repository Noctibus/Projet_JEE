<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
    <main class="bigMain"> 	
		<%@ include file="menu.jsp" %>

	  	<div class="box">
			<c:set var="poster" value="${movies[param.nb].toString()}"/>
			<c:set var="title" value="${movies[param.nb].getTitle()}"/>
			<c:set var="date" value="${movies[param.nb].getDate()}"/>
			<c:set var="director" value="${movies[param.nb].getDirector()}"/>
			<c:set var="synopsis" value="${movies[param.nb].getSynopsis()}"/>
			<c:set var="rate" value="${movies[param.nb].getRate()}"/>
				<div class="moviePoster">${poster}</div>
				<div class="descBox"></div>
				<div class="desc">Titre : ${title}</div>
				<div class="desc">Date de sortie : ${date}</div>
				<div class="desc">Réalisateur : ${director}</div>
				<div class="desc">Synopsis : ${synopsis}</div>
				<div class="desc">Note : ${rate} &#9733</div>
        </div>

		<div class="comments">
			<h2 class="avengersFont">Espace Commentaire</h2>
			<div class="publiedComments">
				<p style="color: black">blabla</p>
			</div>
			<form class="commentform" methode="post">
				<div class="space">
					<textarea id="commentSpace" rows="6" cols="213" placeholder="Laisser un commentaire."></textarea>
				</div>
			</form>
			
		</div>
    </main>
	<%@ include file="footer.jsp" %>
</html>