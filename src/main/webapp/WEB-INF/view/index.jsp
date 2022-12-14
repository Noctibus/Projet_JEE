<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<%@ include file="headerBG.jsp" %>
<main id="mainIndex">
	
	<section id="intro" >   
		<h1>Bienvenue dans l'univers des </h1> <h1 class="avengersFont">Avengers !</h1>         
	<div id="welcome">     
		<span>Vous pouvez retrouver sur ce site tous les films Avengers ainsi que les personnages les plus iconiques de l'univers </span><span id="welcome" class="avengersFont"> Marvel.</span> 
	</div>
	</section>
	
	<section class="avengersFont" id="pages" >
		<div id = "buttons"> 
				<div><a href="movies">Films</a></div>
				<div><a href="characters">Personnages</a></div>
				<c:if test="${sessionScope.user == null}">
					<a href="login">
						Connexion
					</a>
				</c:if>
				<a href="userPage">
					<c:out value="${sessionScope.user.username}"/>
				</a>

				<audio src="avengers.mp3" controller="true" autoplay autostart="true" type="audio/mp3" ></audio>
				
		</div>
	</section>
	
</main>
<%@ include file="footer.jsp" %>