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
                    HttpSession sessions = request.getSession();
                    Object user = sessions.getAttribute("User");
                    Object tipo = sessions.getAttribute("Tipo");
                    if(tipo.toString().equals("admin")){  
                %>
                        <li><a href="Home">Home</a></li>
                        <li><a href="Contactos">Contactos</a></li>
                        <li><a href="Acerca">Acerca</a></li>
                        <li><a href="Logout">Logout</a></li>
                <%}else{%>
                        <jsp:forward page="Errorpage" />
                <%}
                    }catch(java.lang.NullPointerException er){%>
                        <jsp:forward page="hospital" />
                <%}%>
            </ul>
        </div>
        <div id="content">
        
        <jsp:useBean id="CrtUser" class="beans.CrtUser" scope="session"/>
        <form method="post" action="CrtUser">
            <p>Utilizador: <input type="text" name="id" size="6"/>   password: <input type="password" name="pwd" size="6"/>
            <p>tipo:    <select name="tipe">
                        <option value="enf">Enfermeiro</option>
                        <option value="recep">Recepção</option>
                        <option value="admin">Administração</option>
                        </select> 
                <input type="submit" value="Criar"/>
        </form>
        </div>
    </body>
</html>
