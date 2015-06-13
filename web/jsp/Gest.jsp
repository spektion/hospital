<%-- 
    Document   : Admin
    Created on : Jun 3, 2015, 3:29:17 PM
    Author     : Gonçalo Faria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"session="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
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
                    if(tipo.toString().equals("admin")){  
                %>
                        <li><a href="Home">Home</a></li>
                        <li><a href="AddUser">Novo User</a></li>
                        <li><a href="Contactos">Contactos</a></li>
                        <li><a href="Acerca">Acerca</a></li>
                        <li><a href="Logout">Logout</a></li>
                     <%}else if(tipo.toString().equals("enf")){%>
                        <li><a href="Home">Home</a></li>
                        <li><!--<a href="AddUser">-->Novo paciente<!--</a>--></li>
                        <li><!--<a href="AddUser">-->Alta paciente<!--</a>--></li>
                        <li><a href="Contactos">Contactos</a></li>
                        <li><a href="Acerca">Acerca</a></li>
                        <li><a href="Logout">Logout</a></li>
                        <%}else if(tipo.toString().equals("recep")){%>
                        <li><a href="Home">Home</a></li>
                        <li><!--<a href="AddUser">-->Nova visita<!--</a>--></li>
                        <li><!--<a href="AddUser">-->Saida visita<!--</a>--></li>
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
        
        
        </div>
    </body>
</html>
