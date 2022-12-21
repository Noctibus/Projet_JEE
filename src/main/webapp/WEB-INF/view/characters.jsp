<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="headerBG.jsp" %>
    <main> 	
		<%@ include file="menu.jsp" %>
        <!--<div id="herosList">-->
            <div class="scroll">
                <section id="line">
                    <c:forEach items="${characters}" var="character">
                        <a class="space" href="character?charId=${character.getId()}">
                            <img class="charactersPicture" src='${character.pictureAddress}'/> 
                        </a>
                    </c:forEach>
                </div>
            </section>
    </main>
	<%@ include file="footer.jsp" %>
</html>


