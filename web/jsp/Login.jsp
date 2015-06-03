<%-- 
    Document   : login
    Created on : Jun 3, 2015, 3:20:34 PM
    Author     : Gonçalo Faria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <jsp:useBean id="login" class="beans.LoginApp" scope="session"/>
        <h2>
            Safari
        </h2>
        <h3>
            Faça o login
        </h3><h3>
            <form method="post" action="LoginApp">
                <p>Utilizador: <input type="text" name="id" size="6"/>   password: <input type="password" name="pwd" size="6"/>
                    <input type="submit" value="Login"/>
            </form>
        </h3>
    </body>
</html>
