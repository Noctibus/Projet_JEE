<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="headerBG.jsp" %>
    <main> 	
		<%@ include file="menu.jsp" %>
        <div id="herosList">
            <c:forEach items="${characters}" var="character">
                <c:choose>
                    <c:when test="${character.getHerosName()!=null}">
                        <div class="heros"><a href="character?charId=${character.getId()}"> ${character.getHerosName()}</a></div> 
                    </c:when>
                    <c:otherwise>
                        <div class="heros"><a href="character?charId=${character.getId()}"> ${character.getIdentity()}</a></div> 
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
    </main>
	<%@ include file="footer.jsp" %>
</html>