<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<%@ include file="headerStars.jsp" %>
    <main id="mainIndex">
     
		<section id="intro" >   
			<h1>Bienvenue dans l'univers des </h1> <h1 class="avengersFont">Avengers !</h1>         
		<div id="welcome">     
			<span>Vous pouvez retrouver sur ce site tous les films Avengers ainsi que les personnages les plus iconics de l'univers </span><span id="welcome" class="avengersFont"> Marvel.</span> 
		</div>
		</section>
		
		<section class="avengersFont" id="pages" >
			<div id = "buttons"> 
					<div><a href="movies">Films</a></div>
					<div><a href="characters">Personnages</a></div>
					<div><a href="login" id="white">Connexion</a></div>
					<object id="music">
						<param name="autostart" value="true">
						<param name="src" value="avengers.mp3">
						<param name="autoplay" value="true"> 
						<param name="controller" value="true">
						<embed src="avengers.mp3" controller="true" autoplay="true" autostart="true" type="audio/mp3" />
					</object>
					
			</div>
		</section>
      
    </main>
    <%@ include file="footer.jsp" %>

</html>