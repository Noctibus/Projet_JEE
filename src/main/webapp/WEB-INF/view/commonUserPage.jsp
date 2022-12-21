<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
	<main class="mainUser">
		<%@ include file="menu.jsp" %>	
		<div>

			<div class="userBox" id="userInfo">
				<h2 class="avengersFont">Informations personnelles</h2>
				<div class="param">
					Adresse e-mail : ${sessionScope.userInformations.emailAddress}
				</div>
				<div class="param">
					Age : ${sessionScope.userInformations.age}
				</div>
				<div class="param">
					Genre : ${sessionScope.userInformations.gender}
				</div>
				<div class="divInfo">
					<button><a class="buttonInfoUser" href="/personalInformations">Modifier</a></button>
				</div>
			</div>

			<div class="userBox" id="paramBox">
				<h2 class="avengersFont">Parametres du compte</h2>
				<div class="param">
					<a href="/logout">Déconnexion</a>
				</div>
				<div class="param">
					<a href="/deleteUser">Supprimer l'utilisateur</a>
				</div>
				<div class="param">
					<a href="/changePassword">Changer de mot de passe</a>
				</div>
			</div>
			
			<div class="userBox" id="rateBox">
				<h2 class="avengersFont">NOTES</h2>
				<div class="insideBox">
					<c:set var="subject" value="" scope="page" />
					<c:forEach items="${movieRates}" var="rate">

						<div class="userItem">
							<c:if test="${subject!=rate.movie.title}">
								<c:set var="subject" value="${rate.movie.title}" scope="page" />
								<p><a href="/movie?movieId=${rate.movie.id}">${subject}</a></p>
							</c:if>
							<c:forEach var="i" begin="1" end="${rate.value}" step="1">
								<a href="/putMovieRate?value=${i}&movieId=${rate.movie.id}&requestOrigin=commonUserPage" class="star" id="star1" style="color:red">&#9733</a>
							</c:forEach>
							<c:forEach var="i" begin="1" end="${5-rate.value}" step="1">
								<a href="/putMovieRate?value=${rate.value+i}&movieId=${rate.movie.id}&requestOrigin=commonUserPage" class="star" id="star1">&#9733</a>
							</c:forEach>
						</div>

					</c:forEach>
					<c:forEach items="${characterRates}" var="rate">

						<div class="userItem">
							<c:if test="${rate.character.herosName!=null&&subject!=rate.character.herosName}">
								<c:set var="subject" value="${rate.character.herosName}" scope="page" />
								<p><a href="/character?charId=${rate.character.id}">${subject}</a></p>
							</c:if>
							<c:if test="${rate.character.herosName==null&&subject!=rate.character.identity}">
								<c:set var="subject" value="${rate.character.identity}" scope="page" />
								<p><a href="/character?charId=${rate.character.id}">${subject}</a></p>
							</c:if>
							<c:forEach var="i" begin="1" end="${rate.value}" step="1">
								<a href="/putCharacterRate?value=${i}&charId=${rate.character.id}&requestOrigin=commonUserPage" class="star" id="star1" style="color:red">&#9733</a>
							</c:forEach>
							<c:forEach var="i" begin="1" end="${5-rate.value}" step="1">
								<a href="/putCharacterRate?value=${rate.value+i}&charId=${rate.character.id}&requestOrigin=commonUserPage" class="star" id="star1">&#9733</a>
							</c:forEach>
						</div>

					</c:forEach>				
				</div>
			</div>

			<div class="userBox" id="commentUserBox">
				<h2 class="avengersFont">COMMENTAIRES</h2>
				<div class="insideBox">
					<c:set var="subject" value="" scope="page" />
					<c:forEach items="${movieComments}" var="comment">
							<c:if test="${subject==comment.movie.title}">
								<div class="commentItem">
							</c:if>
		
							<c:if test="${subject!=comment.movie.title}">
								<div class="userItem">
								<c:set var="subject" value="${comment.movie.title}" scope="page" />
								<p><a href="/movie?movieId=${comment.movie.id}">${subject} :</a></p>
							</c:if>
							<div class="post">
								<span>${comment.user.username} </span>
								<span class="date">${comment.date}</span>
								<p>${comment.content}</p>
								<div class="suppBox">
									<button><a href="/deleteMovieComment?movieId=${comment.movie.id}&movieCommentId=${comment.id}&requestOrigin=commonUserPage" class="suppr">Supprimer</a></button>
								</div>
							</div>
						</div>
					</c:forEach>
					<c:forEach items="${characterComments}" var="comment">
							<c:if test="${comment.character.herosName==null||subject==comment.character.herosName}">
								<div class="commentItem">	
							</c:if>	

							<c:if test="${comment.character.herosName!=null&&subject!=comment.character.herosName}">
								<div class="userItem">
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
									<button><a href="/deleteCharacterComment?charId=${comment.character.id}&characterCommentId=${comment.id}&requestOrigin=commonUserPage" class="suppr">Supprimer</a></button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="footer.jsp" %>
</html>