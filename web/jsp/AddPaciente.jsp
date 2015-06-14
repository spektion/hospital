<%-- 
    Document   : AddPaciente
    Created on : Jun 14, 2015, 1:07:25 PM
    Author     : Spek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acerca</title>
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
                    if(tipo.toString().equals("enf")){  
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
                        <li></li>
        <%}%>
            </ul>
        </div>
        <div id="content">
            <jsp:useBean id="CrtPaciente" class="beans.CrtPaciente" scope="session"/>
            <form method="post" action="CrtUser">
                <p>Nome: <input type="text" name="nome" size="16"/>   
                   idade: <input type="number" name="idade" size="6"/>
                   doença: <input type="text" name="doenca" size="16"/>
                <p>numero de visitas:    <select name="nvisitas">
                        <option value="0">0</option>
                        <option value="2">2</option>
                        <option value="4">4</option>
                    </select> 
                    <p>pode ter visitas:    <select name="visita">
                        <option value="true">sim</option>
                        <option value="false">não</option>
                    </select> 
                    <input type="submit" value="Criar"/>
            </form>
        
        
        </div>
               
    </body>
</html>
