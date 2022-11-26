<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
    <main>
     
		<section id="intro" >
		<div>        
			<h1>Bienvenue dans l'univers des Avengers!</h1>         
			<p>Vous pouvez retrouver sur ce site tous les films Avengers ainsi que les personnages les plus iconics de l'univers Marvel. </p>
		</div>
		</section>
		
		<section id="pages" >
			<div id = "buttons"> 
					<div><a href="movies">Films</a></div>
					<div><a href="characters">Personnages</a></div>
					<div><a href="login" id="white">Connexion</a></div>
					<audio controls>
						<source src="avengers.mp3" type="audio/mp3">
					</audio>
					
			</div>
		</section>
      
    </main>
    <%@ include file="footer.jsp" %>

</html>