<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
	<main class="bigMain">
		<%@ include file="menu.jsp" %>
		<div class="userBox" id="adminMovieBox">
			<table class="itemsOnLine">
				<th class="avengersFont">Films</th>
				<c:forEach items="${movies}" var="movie">
						<tr>
						<div class="managmentBox">
							<td><a href="movie?movieId=${movie.id}">${movie.title}</a></td>
							<td><button><a class="managmentButton" href="/deleteMovie?movieId=${movie.id}">Supprimer</a></button></td>
						</div>
					</tr>
				</c:forEach>
			</table>
			<button><a class="managmentButton" href="/addMovie">Ajouter un film</a></button>
		</div>
		
		<div class="userBox" id="adminCharacBox">
			<table class="itemsOnLine" id="tableCharac">
				<th class="avengersFont">Personnages</th>
				<c:forEach items="${characters}" var="character">
					<tr></tr>
					<div class="managmentBox">
							<td>
							<c:choose>
								<c:when test="${character.herosName!=null}">
									<a class="managmentItem" href="character?charId=${character.id}">${character.herosName}</a>
								</c:when>
								<c:otherwise>
									<a class="managmentItem" href="character?charId=${character.id}">${character.identity}</a>
								</c:otherwise>
							</c:choose>
							</td>
							<td><button><a class="managmentButton" href="/deleteCharacter?charId=${character.id}">Supprimer</a></button></td>
					</div>
				</tr>
				</c:forEach>
			</table>
			<button><a class="managmentButton" href="/addCharacter">Ajouter un personnage</a></button>
		</div>
	</main>
	<%@ include file="footer.jsp" %>
</html>