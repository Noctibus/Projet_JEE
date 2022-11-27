<!DOCTYPE html>
<html>
	<%@ include file="header.jsp" %>
    <main id="mainMovie"> 	
		<%@ include file="menu.jsp" %>

	  	<div id="templine">
			<p>Bonjour, il est <%=new java.util.Date()%></p>
			<%=new MovieComment()%>
	  	</div>
    </main>
	<%@ include file="footer.jsp" %>

</html>