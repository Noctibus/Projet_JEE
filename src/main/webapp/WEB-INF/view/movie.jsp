<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
    <main class="bigMain"> 	
		<%@ include file="menu.jsp" %>
	  	<div class="box">
			<div class="moviePoster">
				<img class="poster" src='${movie.pictureAddress}'/>
			</div>
			<div class="descBox"></div>
			<div class="desc">Titre : ${movie.getTitle()}</div>
			<div class="desc">Date de sortie : ${movie.getDate()}</div>
			<div class="desc">Réalisateur : ${movie.getDirector()}</div>
			<div class="desc">Synopsis : ${movie.getSynopsis()}</div>
			<div class="desc">Personnages :
				<c:forEach items="${movie.getCharacters()}" var="character">
					<c:choose>
						<c:when test="${character.getHerosName()== null}">
							<c:choose>
								<c:when test="${character.id==movie.getCharacters()[movie.getCharacters().size()-1].id}"><a href="character?charId=${character.getId()}"> ${character.getIdentity()}.</a></c:when>    
								<c:otherwise><a href="character?charId=${character.getId()}"> ${character.getIdentity()}, </a></c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${character.id==movie.getCharacters()[movie.getCharacters().size()-1].id}"><a href="character?charId=${character.getId()}"> ${character.getHerosName()}.</a></c:when>    
								<c:otherwise><a href="character?charId=${character.getId()}"> ${character.getHerosName()}, </a></c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>	
				</c:forEach>
			</div>
			<div class="desc">Note : ${movie.getRate()} &#9733</div>
			<div class="desc">
				<c:forEach var="i" begin="1" end="${rate}" step="1">
					<a href="/putMovieRate?value=${i}&movieId=${movie.id}" class="star" id="star${i}" style="color:red" onmouseover="mouseOver(id)" onmouseout="mouseOut()">&#9733</a>
				</c:forEach>
				<c:forEach var="i" begin="1" end="${5-rate}" step="1">
					<a href="/putMovieRate?value=${rate+i}&movieId=${movie.id}" class="star" id="star${rate+i}" onmouseover="mouseOver(id)" onmouseout="mouseOut()">&#9733</a>
				</c:forEach>
			</div>
        </div>
		<div class="comments">
			<h2 class="avengersFont">Espace Commentaire</h2>
			<div class="publiedComments">
				<c:forEach items="${comments}" var="comment">	
					<div class="post">
						<span>${comment.user.username} </span>
						<span class="date">${comment.date}</span>
						<p>${comment.content}</p>
						<c:if test="${sessionScope.user.username==comment.user.username||sessionScope.user.administrator}">
							<div class="suppBox">
								<button><a href="/deleteMovieComment?movieId=${param.movieId}&movieCommentId=${comment.id}" class="suppr">Supprimer</a></button>
							</div>
						</c:if>
					</div>
				</c:forEach>
			</div>
			<form class="commentform" method="post" action="saveMovieComment?movieId=${param.movieId}">
				<div class="space">
					<textarea name="movieCommentContent" id="commentSpace" rows="6" cols="188" placeholder="Laisser un commentaire."></textarea>
				</div>
				<input type="submit" value="Publier">
			</form>			
		</div>
    </main>
	<%@ include file="footer.jsp" %>
</html>