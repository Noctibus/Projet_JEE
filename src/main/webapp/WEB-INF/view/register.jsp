<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
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
            <form action="/registerNewUser" method="post">
                <div class="space">
                    <label for="username">Identifiant :</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="space">
                    <label for="password">Mot de passe :</label>
                    <input type="password" name="password1" required minlength="6">
                </div>
                <div class="space">
                    <label for="password">Confirmez le mot de passe :</label>
                    <input type="password" name="password2" required minlength="6">
                </div>
                <input type="submit" value="S'inscrire">
            </form>
        </div>
	</main>
    <%@ include file="footer.jsp" %>
</html>