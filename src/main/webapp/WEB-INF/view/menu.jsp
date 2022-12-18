<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<section class="avengersFont" id="menu" >
    <a href="index">Accueil</a>
    <a href="movies">Films</a>
    <a href="characters">Personnages</a>
    <c:if test="${sessionScope.user == null}">
        <a href="login">
            Connexion
        </a>
    </c:if>
    <c:if test="${sessionScope.user != null}">
        <a href="userPage">
            <c:out value="${sessionScope.user.username}"/>
        </a>
    </c:if>
</section>