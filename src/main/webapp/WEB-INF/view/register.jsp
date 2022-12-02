<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <%@ include file="headerStars.jsp" %>
    <main class="mainPage">
        <%@ include file="menu.jsp" %>
        <form action="/registerNewUser" method="post">
            <div class="space">
                <label for="username">Username :</label><br>
                <input type="text" id="username" name="username"><br>
            </div>
            <div class="space">
                <label for="password">Password :</label><br>
                <input type="" name="password1"><br>
            </div>
            <div class="space">
                <label for="password">Confirm Password :</label><br>
                <input type="" name="password2"><br><br>
            </div>
            <input type="submit" value="Submit">
        </form>
	</main>
    <%@ include file="footer.jsp" %>
</html>