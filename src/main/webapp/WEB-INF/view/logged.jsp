<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="headerBG.jsp" %>
	<main>
		<%@ include file="menu.jsp" %>	
		<div id="logout">
			<a href="logout"><button>Déconnexion</button></a>
			<a href="removeUser"><button>Supprimer l'utilisateur</button></a>
		</div>
	</main>
	<%@ include file="footer.jsp" %>
</html>