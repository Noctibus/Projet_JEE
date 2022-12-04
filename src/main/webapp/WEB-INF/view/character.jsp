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
				<img class="characterPicture" src='character${param.charId}.png'/>
			</div>
			<c:if test="${characters[param.charId-1].getHerosName()!= null}">
				<div class="desc">Nom de Héros : ${characters[param.charId-1].getHerosName()}</div>
			</c:if>
			<div class="desc">Identité : ${characters[param.charId-1].getIdentity()}</div>
			<div class="desc">Acteur : ${characters[param.charId-1].getActor()}</div>
			<div class="desc">Origines : ${characters[param.charId-1].getOrigins()}</div>
			<div class="desc">Note : ${characters[param.charId-1].getRate()} &#9733</div>
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
					<c:if test="${comment.character.id==param.charId}">	
						<div class="post">
							<span>${comment.user.username} </span>
							<span class="date">${comment.date}</span>
							<p>${comment.content}</p>
						</div>
					</c:if>
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
</html>