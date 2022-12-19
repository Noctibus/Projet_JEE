<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="headerBG.jsp" %>
	<main>
		<%@ include file="menu.jsp" %>
		<p>Films</p>
		<c:forEach items="${movies}" var="movie">
			<tr>
				<td>
					<a href="movie?movieId=${movie.id}" class="space" id="poster">${movie.title}</a>
				</td>
				<td>
					<button><a href="/deleteMovie?movieId=${movie.id}">Supprimer</a></button>
				</td>
			</tr>
		</c:forEach>
		<p><a href="/addMovie">Ajouter un film</a></p>
		<p>Personnages</p>
		<c:forEach items="${characters}" var="character">
			<tr>
				<td>
					<c:choose>
						<c:when test="${character.herosName!=null}">
							<div class="heros"><a href="character?charId=${character.id}">${character.herosName}</a></div> 
						</c:when>
						<c:otherwise>
							<div class="heros"><a href="character?charId=${character.id}">${character.identity}</a></div> 
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<button><a href="/deleteCharacter?charId=${character.id}">Supprimer</a></button>
				</td>
			</tr>
		</c:forEach>
		<p><a href="/addCharacter">Ajouter un personnage</a></p>
	</main>
	<%@ include file="footer.jsp" %>
</html>