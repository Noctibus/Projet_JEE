<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="headerBG.jsp" %>
	<main>
		<%@ include file="menu.jsp" %>	
		<div id="registerBox">
            <c:if test="${not empty error}">
                <div class="error">${error}</div>
                <c:remove var="error" />
            </c:if>
            <form action="/changePassword" method="post">
                <div class="space">
                    <label for="username">Mot de passe actuel :</label><br>
                    <input type="password" name="currentPassword" required><br>
                </div>
                <div class="space">
                    <label for="newPassword1">Nouveau mot de passe :</label><br>
                    <input type="password" name="newPassword1" required minlength="6"><br>
                </div>
                <div class="space">
                    <label for="newPassword2">Confirmation du nouveau mot de passe :</label><br>
                    <input type="password" name="newPassword2" required minlength="6"><br><br>
                </div>
                <input type="submit" value="Confirmer">
            </form>
        </div>
	</main>
	<%@ include file="footer.jsp" %>
</html>