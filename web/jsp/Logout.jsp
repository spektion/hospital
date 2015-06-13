<%-- 
    Document   : Logout
    Created on : Jun 13, 2015, 6:20:36 PM
    Author     : Spek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
        <link rel="stylesheet" type="text/css" href="css/webstyle.css">
    </head>
    <body>
        <% 
    HttpSession s = request.getSession(false);
    s.invalidate();
   %>
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
            </ul>
        </div>
        <div id="content">
        <h3>Logged Out</h3>
        <meta http-equiv="refresh" content="5; url=/hospital" />
        </div>
   
    </body>
</html>
