<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="headerBG.jsp" %>
    <main> 	
		<%@ include file="menu.jsp" %>
        <div id="herosList">
        <c:forEach items="${characters}" var="character">
            <c:if test="${character.getHerosName()!=null}">
                <div class="heros"><a href="character?charId=${character.getId()}"> ${character.getHerosName()}</a></div> 
            </c:if>
            <c:if test="${character.getHerosName()==null}">
                <div class="heros"><a href="character?charId=${character.getId()}"> ${character.getIdentity()}</a></div> 
            </c:if>
        </c:forEach>
    </div>
    </main>
	<%@ include file="footer.jsp" %>
</html>