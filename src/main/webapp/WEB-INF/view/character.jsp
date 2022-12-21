<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
    <main class="bigMain"> 	
		<%@ include file="menu.jsp" %>

		<div class="box">
			<div class="descBox"></div>
			<div class="moviePoster">
				<img class="characterPicture" src='${character.pictureAddress}'/>
			</div>
			<c:if test="${character.herosName!= null}">
				<div class="desc">Nom de Héros : ${character.herosName}</div>
			</c:if>
			<div class="desc">Identité : ${character.identity}</div>
			<div class="desc">Acteur : ${character.actor}</div>
			<div class="desc">Origines : ${character.origins}</div>
			<div class="desc">Note : ${character.rate} &#9733</div>
			<div class="desc">
				<c:forEach var="i" begin="1" end="${rate}" step="1">
					<a href="/putCharacterRate?value=${i}&charId=${character.id}" class="star" id="star1" style="color:red">&#9733</a>
				</c:forEach>
				<c:forEach var="i" begin="1" end="${5-rate}" step="1">
					<a href="/putCharacterRate?value=${rate+i}&charId=${character.id}" class="star" id="star1">&#9733</a>
				</c:forEach>
			</div>
			<span>Le personnage à-t-il survécu ?</span>
			<button id="buttonCacher" onclick= "cacherStatut()">Spoiler</button> 
			<div id="cacher">
				<p><c:choose><c:when test="${character.isAlive()}">Ce personnage est toujours vivant !!</c:when><c:otherwise>Hélas, ce personnage est mort...</c:otherwise></c:choose></p>
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
								<button><a href="/deleteCharacterComment?charId=${param.charId}&characterCommentId=${comment.id}" class="suppr">Supprimer</a></button>
							</div>
						</c:if>
					</div>
				</c:forEach>
			</div>
			<form class="commentform" method="post" action="saveCharacterComment?charId=${param.charId}">
				<div class="space">
					<textarea name="characterCommentContent" id="commentSpace" rows="6" cols="188" placeholder="Laisser un commentaire."></textarea>
				</div>
				<input type="submit" value="Publier">
			</form>	
		</div>
    </main>
	<%@ include file="footer.jsp" %>
	<script type="text/javascript" src="/script.js"></script>
</html>