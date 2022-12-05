<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
	<%@ include file="headerBG.jsp" %>
	<main class="main" id="loginMain">
	<%@ include file="menu.jsp" %>	
	<a class="space" id="register" href="register">Nouveau sur la page ? Inscrivez-Vous.</a>
	<div id="loginBox">
		<form id="formLogin" action="/checkUser" method="post">
			<div class="space">
				<label for="username">Identifiant:</label><br>
				<input type="text" id="username" name="username"><br>
			</div>
			<div class="space">
				<label for="password">Mot de passe:</label><br>
				<input type="password" id="password" name="password"><br><br>
			</div>
			<input type="submit" value="Connexion">
		</form>
	</div>
	</main>
	<%@ include file="footer.jsp" %>
</html>