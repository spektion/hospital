<%-- 
    Document   : errorpage
    Created on : Jun 20, 2015, 9:08:51 PM
    Author     : Spek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginError</title>
        <link rel="stylesheet" type="text/css" href="css/webstyle.css">
    </head>
    <body>
        <header>
            <p></p>
            <img src="images/logo.jpg" alt="logo" align="left" width="100" height="100">
        <p> Hospital Santa Marta </p>
        </header>
        <div id="menu">
            <ul>
            <li><a href="/hospital">Home</a></li>

            <li><a href="Contactos">Contactos</a></li>
            <li><a href="Acerca">Acerca</a></li>
            <li></li>
            </ul>
        </div>
        <div id="content">
        <h3>Erro de autorizações na aplicação</h3>
        <% 
                    try{
                    HttpSession sessions = request.getSession();%>
                    <meta http-equiv="refresh" content="5; url=Home" />
                    <%}catch(java.lang.NullPointerException er){%>
        <meta http-equiv="refresh" content="5; url=/hospital" />
        <%}%>
        </div>
    </body>
</html>
