<!DOCTYPE html>
<html>
	<%@ include file="headerStars.jsp" %>
    <main id="mainIndex">
     
		<section id="intro" >
		<div>        
			<h1>Bienvenue dans l'univers des Avengers !</h1>         
			<p>Vous pouvez retrouver sur ce site tous les films Avengers ainsi que les personnages les plus iconics de l'univers Marvel. </p>
		</div>
		</section>
		
		<section id="pages" >
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