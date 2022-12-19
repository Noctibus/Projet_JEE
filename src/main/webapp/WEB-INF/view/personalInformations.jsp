<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="headerBG.jsp" %>
	<main>
		<%@ include file="menu.jsp" %>	
		<div id="registerBox">
			<p>Vos informations personnelles :</p>
            <form action="/personalInformations" method="post">
                <div class="space">
                    <label for="emailAddress">Adresse e-mail :</label>
                    <input type="email" name="emailAddress" value="${sessionScope.userInformations.emailAddress}" required>
                </div>
                <div class="space">
                    <label for="age">Age :</label>
                    <input type="number" name="age" value="${sessionScope.userInformations.age}" required>
                </div>
                <div class="space">
                    Genre:
                    <input type="radio" id="male" value="Homme" name="gender"/>
                    <label for="male">Homme</label>
                    <input type="radio" id="female" value="Femme" name="gender"/>
                    <label for="female">Femme</label>
                    <input type="radio" id="other" value="Autre" name="gender"/>
                    <label for="other">Autre</label>
                </div>
                <input type="submit" value="Confirmer">
            </form>
        </div>
	</main>
	<%@ include file="footer.jsp" %>
</html>