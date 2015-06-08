<%-- 
    Document   : AddUser
    Created on : Jun 7, 2015, 9:34:36 PM
    Author     : Spek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add User</title>
        <link rel="stylesheet" type="text/css" href="../css/webstyle.css">
    </head>
    <body>
        <header>
        <ul>
            <img src="../images/logo.jpg" alt="logo" align="left" width="150" height="150">
            <li><a href="/hospital">Home</a></li>
            <li><a href="news.asp">News</a></li>
            <li><a href="contact.asp">Contact</a></li>
            <li><a href="about.asp">About</a></li>
        </ul>
        </header>
        <div id="content">
        
        <jsp:useBean id="CrtUser" class="beans.CrtUser" scope="session"/>
        <form method="post" action="CrtUser">
            <p>Utilizador: <input type="text" name="id" size="6"/>   password: <input type="password" name="pwd" size="6"/>
            <p>tipo:    <select>
                        <option value="Admin">Administrativo</option>
                        <option value="Enfermeiro">Enfermeiro</option>
                        </select> 
                <input type="submit" value="Criar"/>
        </form>
        </div>
    </body>
</html>
