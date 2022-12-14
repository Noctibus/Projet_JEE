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
			<c:if test="${not empty error}">
                <div class="error">${error}</div>
                <c:remove var="error" />
            </c:if>
				<div>
					<label for="username">Identifiant :</label>
				</div>
				<input type="text" id="username" name="username" required>
			</div>
			<div class="space">
				<div>
					<label for="password">Mot de passe :</label>
				</div>
				<input type="password" id="password" name="password" required minlength="6">
			</div>
			<input type="submit" value="Connexion">
		</form>
	</div>
	</main>
	<%@ include file="footer.jsp" %>
</html>