<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
	<main class="bigMain">
		<%@ include file="menu.jsp" %>	
		<div id="registerBox">
			<p>Modifiez vos informations personnelles :</p>
            <c:if test="${not empty error}">
                <div class="error">${error}</div>
                <c:remove var="error" />
            </c:if>
            <form action="/personalInformations" method="post">
                <div class="space">
                    <label for="emailAddress">Adresse e-mail :</label><br>
                    <input type="email" name="emailAddress" value="${sessionScope.userInformations.emailAddress}" required><br>
                </div>
                <div class="space">
                    <label for="age">Age :</label><br>
                    <input type="number" name="age" value="${sessionScope.userInformations.age}" required><br>
                </div>
                <div class="space">
                    <label for="gender">Genre (facultatif) :</label><br>
                    <input type="text" name="gender" value="${sessionScope.userInformations.gender}"><br>
                </div>
                <input type="submit" value="Confirmer">
            </form>
        </div>
	</main>
	<%@ include file="footer.jsp" %>
</html>