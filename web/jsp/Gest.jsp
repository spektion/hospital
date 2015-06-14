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
            <p></p>
            <table class="center" id="t01">
                <tr>
                    <th colspan="2">Andar</th>
                    <th colspan="4">Quarto A</th>		
                    <th colspan="4">Quarto B</th>
                    <th colspan="4">Quarto C</th>
                    <th colspan="4">Quarto D</th>
                    <th colspan="4">Quarto E</th>
                    <th colspan="4">Quarto F</th>
                </tr>
                <tr>
                    <td rowspan="2">6</td>
                    <td>Cama</td>
                    <!-- quarto A -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto B -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto C -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto D -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto E -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto F -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                </tr>
                <tr>
                    <td>Paciente</td>
                    <!-- quarto A -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto B -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto C -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto D -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto E -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto F -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                </tr>
                <tr>
                    <td rowspan="2">5</td>
                    <td>Cama</td>
                    <!-- quarto A -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto B -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto C -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto D -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto E -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto F -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                </tr>
                <tr>
                    <td>Paciente</td>
                    <!-- quarto A -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto B -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto C -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto D -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto E -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto F -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                </tr>
                <tr>
                    <td rowspan="2">4</td>
                    <td>Cama</td>
                    <!-- quarto A -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto B -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto C -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto D -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto E -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto F -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                </tr>
                <tr>
                    <td>Paciente</td>
                    <!-- quarto A -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto B -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto C -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto D -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto E -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto F -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                </tr>
                <tr>
                    <td rowspan="2">3</td>
                    <td>Cama</td>
                    <!-- quarto A -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto B -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto C -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto D -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto E -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto F -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                </tr>
                <tr>
                    <td>Paciente</td>
                    <!-- quarto A -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto B -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto C -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto D -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto E -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto F -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                </tr>
                <tr>
                    <td rowspan="2">2</td>
                    <td>Cama</td>
                    <!-- quarto A -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto B -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto C -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto D -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto E -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto F -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                </tr>
                <tr>
                    <td>Paciente</td>
                    <!-- quarto A -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto B -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto C -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto D -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto E -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto F -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                </tr>
                <tr>
                    <td rowspan="2">1</td>
                    <td>Cama</td>
                    <!-- quarto A -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto B -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto C -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto D -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto E -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                    <!-- quarto F -->
                    <td>I</td>		
                    <td>II</td>
                    <td>III</td>		
                    <td>IV</td>
                </tr>
                <tr>
                    <td>Paciente</td>
                    <!-- quarto A -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto B -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto C -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto D -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto E -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                    <!-- quarto F -->
                    <td></td>		
                    <td></td>
                    <td></td>		
                    <td></td>
                </tr>
            </table>
        
        </div>
    </body>
</html>
