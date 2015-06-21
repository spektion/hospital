<%-- 
    Document   : AltaPaciente
    Created on : Jun 14, 2015, 8:49:22 PM
    Author     : Spek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Paciente</title>
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
                    if(tipo.toString().equals("enf")){  
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
            <jsp:useBean id="DisablePaciente" class="beans.DisablePaciente" scope="session"/>
            <% 
                HttpSession sessions = request.getSession(false);
                Object dburl = sessions.getAttribute("DBurl");
                Object dbuser = sessions.getAttribute("DBuser");
                Object dbpwd = sessions.getAttribute("DBpwd");
                pageContext.setAttribute("url",dburl.toString());
                pageContext.setAttribute("dbuser",dbuser.toString());
                pageContext.setAttribute("dbpwd",dbpwd.toString());
            %>
            <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="${url}" user="${dbuser}"  password="${dbpwd}"/>
            <sql:query dataSource="${snapshot}" var="result">
                select * from Pacientes where alta=0;
            </sql:query>
            <form method="post" action="DisablePaciente">
                
                <p>Paciente a dar alta   <select name="paciente">
                        <c:forEach var="row" items="${result.rows}">
                            
                            <option value="${row.id_pac}">nome:<c:out value="${row.nome}"/></option>
                        </c:forEach>
                        </select>
                 
                    <input type="submit" value="Alta"/>
            </form>
        
        
        </div>
               
    </body>
</html>
