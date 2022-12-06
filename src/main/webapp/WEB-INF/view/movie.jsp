<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
    <main class="bigMain"> 	
		<%@ include file="menu.jsp" %>

	  	<div class="box">
			<div class="moviePoster">
				<img class="poster" src='avengers${param.movieId}.jpg'/>
			</div>
			<div class="descBox"></div>
			<div class="desc">Titre : ${movie.getTitle()}</div>
			<div class="desc">Date de sortie : ${movie.getDate()}</div>
			<div class="desc">Réalisateur : ${movie.getDirector()}</div>
			<div class="desc">Synopsis : ${movie.getSynopsis()}</div>
			<div class="desc">Note : ${movie.getRate()} &#9733</div>
			<div class="desc">
				<span class="star" id="star1">&#9733</span>
				<span class="star" id="star2">&#9733</span>
				<span class="star" id="star3">&#9733</span>
				<span class="star" id="star4">&#9733</span>
				<span class="star" id="star5">&#9733</span>
			</div>
        </div>
		<div class="comments">
			<h2 class="avengersFont">Espace Commentaire</h2>
			<div class="publiedComments">
				<c:forEach items="${comments}" var="comment">
					<c:if test="${comment.movie.id==param.movieId}">	
						<div class="post">
							<span>${comment.user.username} </span>
							<span class="date">${comment.date}</span>
							<p>${comment.content}</p>
							<c:if test="${sessionScope.user.id==comment.user.id}">
								<button><a href="/deleteMovieComment?movieId=${param.movieId}&movieCommentId=${comment.id}">Supprimer</a></button>
							</c:if>
						</div>
					</c:if>
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