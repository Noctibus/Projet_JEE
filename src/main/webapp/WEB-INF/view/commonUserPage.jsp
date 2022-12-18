<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="headerBG.jsp" %>
	<main>
		<%@ include file="menu.jsp" %>	
		<div id="logout">
			<a href="logout"><button>Déconnexion</button></a>
			<p>Paramètres du compte :</p>
			<a href="deleteUser"><button>Supprimer l'utilisateur</button></a>
			<a href="changePassword"><button>Changer de mot de passe</button></a>
			<div>
				<p>NOTES :</p>
				<c:set var="subject" value="" scope="page" />
				<c:forEach items="${movieRates}" var="rate">
					<c:if test="${subject!=rate.movie.title}">
						<c:set var="subject" value="${rate.movie.title}" scope="page" />
						<p><a href="/movie?movieId=${rate.movie.id}">${subject} :</a></p>
					</c:if>
					<c:forEach var="i" begin="1" end="${rate.value}" step="1">
						<a href="/putMovieRate?value=${i}&movieId=${rate.movie.id}" class="star" id="star1" style="color:red">&#9733</a>
					</c:forEach>
					<c:forEach var="i" begin="1" end="${5-rate.value}" step="1">
						<a href="/putMovieRate?value=${rate.value+i}&movieId=${rate.movie.id}" class="star" id="star1">&#9733</a>
					</c:forEach>
				</c:forEach>
				<c:forEach items="${characterRates}" var="rate">
					<c:if test="${rate.character.herosName!=null&&subject!=rate.character.herosName}">
						<c:set var="subject" value="${rate.character.herosName}" scope="page" />
						<p><a href="/character?charId=${rate.character.id}">${subject} :</a></p>
					</c:if>
					<c:if test="${rate.character.herosName==null&&subject!=rate.character.identity}">
						<c:set var="subject" value="${rate.character.identity}" scope="page" />
						<p><a href="/character?charId=${rate.character.id}">${subject} :</a></p>
					</c:if>
					<c:forEach var="i" begin="1" end="${rate.value}" step="1">
						<a href="/putCharacterRate?value=${i}&charId=${rate.character.id}" class="star" id="star1" style="color:red">&#9733</a>
					</c:forEach>
					<c:forEach var="i" begin="1" end="${5-rate.value}" step="1">
						<a href="/putCharacterRate?value=${rate.value+i}&charId=${rate.character.id}" class="star" id="star1">&#9733</a>
					</c:forEach>
				</c:forEach>
			</div>
			<div class="publiedComments">
				<p>COMMENTAIRES :</p>
				<c:set var="subject" value="" scope="page" />
				<c:forEach items="${movieComments}" var="comment">
					<c:if test="${subject!=comment.movie.title}">
						<c:set var="subject" value="${comment.movie.title}" scope="page" />
						<p><a href="/movie?movieId=${comment.movie.id}">${subject} :</a></p>
					</c:if>
					<div class="post">
						<span>${comment.user.username} </span>
						<span class="date">${comment.date}</span>
						<p>${comment.content}</p>
						<div class="suppBox">
							<button><a href="/deleteMovieComment?movieId=${comment.movie.id}&movieCommentId=${comment.id}" class="suppr">Supprimer</a></button>
						</div>
					</div>
				</c:forEach>
				<c:forEach items="${characterComments}" var="comment">
					<c:if test="${comment.character.herosName!=null&&subject!=comment.character.herosName}">
						<c:set var="subject" value="${comment.character.herosName}" scope="page" />
						<p><a href="/character?charId=${comment.character.id}">${subject} :</a></p>
					</c:if>
					<c:if test="${comment.character.herosName==null&&subject!=comment.character.identity}">
						<c:set var="subject" value="${comment.character.identity}" scope="page" />
						<p><a href="/character?charId=${comment.character.id}">${subject} :</a></p>
					</c:if>
					<div class="post">
						<span>${comment.user.username} </span>
						<span class="date">${comment.date}</span>
						<p>${comment.content}</p>
						<div class="suppBox">
							<button><a href="/deleteCharacterComment?charId=${comment.character.id}&characterCommentId=${comment.id}" class="suppr">Supprimer</a></button>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</main>
	<%@ include file="footer.jsp" %>
</html>