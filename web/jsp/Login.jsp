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
        <link rel="stylesheet" type="text/css" href="css/webstyle.css">
    </head>
    <body>
        <header>
            
            <img src="images/logo.jpg" alt="logo" align="left" width="100" height="100">
            <p> Hospital Santa Marta </p>
        </header>
        <div id="menu">
            <ul>
            <li><a href="/hospital">Home</a></li>
           
            <li><a href="Contact">Contact</a></li>
            <li><a href="About">About</a></li>
            </ul>
        </div>
        <div id="content">
            
        <jsp:useBean id="login" class="beans.LoginApp" scope="session"/>
        <h2>
            we care!!!
        </h2>
        <h3>
            Faça o login
        </h3><h3>
            <form method="post" action="LoginApp">
                <p>Utilizador: <input type="text" name="id" size="6"/>   password: <input type="password" name="pwd" size="6"/>
                    <input type="submit" value="Login"/>
            </form>
        </h3>
        </div>
    </body>
</html>
