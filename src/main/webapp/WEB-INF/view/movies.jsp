<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
    <main class="main"> 	
		<%@ include file="menu.jsp" %>
		<div class="scroll">
	  	<section id="line">
			<c:forEach items="${movies}" var="movie">
				<a href="movie?movieId=${movie.getId()}" class="space">
					<img class="testimg" style='width: 300px; height: 400px;' src='${movie.pictureAddress}'/>
				</a>
        	</c:forEach>
		</div>
		</section>
    </main>
	<%@ include file="footer.jsp" %>
</html>