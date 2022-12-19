<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="headerBG.jsp" %>
	<main>
		<%@ include file="menu.jsp" %>	
		<div id="registerBox">
			<p>Modifiez vos informations personnelles :</p>
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
                <input type="radio" id="genre" value="Homme" name="genre" />
                    Homme
                </input>
                <input type="radio" id="genre" value="Femme" name="genre">
                    Femme
                </input>
                <input type="radio" id="genre" value="Autre" name="genre">
                    Autre
                </div>
                <input type="submit" value="Confirmer">
            </form>
        </div>
	</main>
	<%@ include file="footer.jsp" %>
</html>