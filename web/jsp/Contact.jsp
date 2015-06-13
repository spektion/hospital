<%-- 
    Document   : Contact
    Created on : Jun 8, 2015, 3:18:20 PM
    Author     : Spek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contactos</title>
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
                <% 
                    try{
                    HttpSession sessions = request.getSession(false);
                    Object user = sessions.getAttribute("User");
                    Object tipo = sessions.getAttribute("Tipo");
                    if(tipo.toString().equals("admin") || tipo.toString().equals("enf")||tipo.toString().equals("recep")){  
                %>
                        <li><a href="Home">Home</a></li>
                        <li><a href="Contactos">Contactos</a></li>
                        <li><a href="Acerca">Acerca</a></li>
                        <li><a href="Logout">Logout</a></li>
                     <%}
                    }catch(java.lang.NullPointerException er){%>
                        <li><a href="/hospital">Home</a></li>
                        <li><a href="Contactos">Contactos</a></li>
                        <li><a href="Acerca">Acerca</a></li> 
        <%}%>
            </ul>
        </div>
        <div id="content">
        <h3>Contactos</h3>
        
        <p>Endereço: R. de Santa Marta 50, 1169-1024 Lisboa</p>
        <p>Telemóvel:21 359 4000</p>
        <p>Horário: Todos os dias · 09:00 – 00:00</p>
        
        </div>
    </body>
</html>
