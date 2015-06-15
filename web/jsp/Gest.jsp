<%-- 
    Document   : Admin
    Created on : Jun 3, 2015, 3:29:17 PM
    Author     : Gonçalo Faria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"session="false"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
                        <li><a href="AddPaciente">Novo paciente</a></li>
                        <li><a href="AltaPaciente">Alta paciente</a></li>
                        <li><a href="Contactos">Contactos</a></li>
                        <li><a href="Acerca">Acerca</a></li>
                        <li><a href="Logout">Logout</a></li>
                        <%}else if(tipo.toString().equals("recep")){%>
                        <li><a href="Home">Home</a></li>
                        <li><a href="AddVisita">Nova visita</a></li>
                        <li><a href="RmVisita">Saida visita</a></li>
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
            <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/hospital" user="root"  password="root"/>
 
            <sql:query dataSource="${snapshot}" var="result">
                select distinct p.nome,p.idade,p.doenca,p.id_qt,p.visitNum,(select count(*) from Visita where p.id_pac = id_pac) as actVis from Pacientes p where p.alta=0;
            </sql:query>
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
                    <% for(int i=121; i <= 144; i++) { %>
                    <c:set var="i" value="<%=i%>"/>
                    <td>
                        <c:forEach var="row" items="${result.rows}">  
                        <c:choose>
                            <c:when test = "${row.id_qt eq i}">
                            nome:<c:out value="${row.nome}"/>
                            <p>idade:<c:out value="${row.idade}"/>
                            <p>doenca:<c:out value="${row.doenca}"/>
                            <p>Num. Visitas:<c:out value="${row.visitNum}"/>
                            <p>Visitas em curso:<c:out value="${row.actVis}"/>
                            </c:when>
                        </c:choose>
                        </c:forEach>
                    </td>
                    <% } %>
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
                    <% for(int i=97; i <= 120; i++) { %>
                    <c:set var="i" value="<%=i%>"/>
                    <td>
                        <c:forEach var="row" items="${result.rows}">  
                        <c:choose>
                            <c:when test = "${row.id_qt eq i}">
                            nome:<c:out value="${row.nome}"/>
                            <p>idade:<c:out value="${row.idade}"/>
                            <p>doenca:<c:out value="${row.doenca}"/>
                            <p>Num. Visitas:<c:out value="${row.visitNum}"/>
                                <p>Visitas em curso:<c:out value="${row.actVis}"/>
                            </c:when>
                        </c:choose>
                        </c:forEach>
                    </td>
                    <% } %>
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
                    <% for(int i=73; i <= 96; i++) { %>
                    <c:set var="i" value="<%=i%>"/>
                    <td>
                        <c:forEach var="row" items="${result.rows}">  
                        <c:choose>
                            <c:when test = "${row.id_qt eq i}">
                            nome:<c:out value="${row.nome}"/>
                            <p>idade:<c:out value="${row.idade}"/>
                            <p>doenca:<c:out value="${row.doenca}"/>
                            <p>Num. Visitas:<c:out value="${row.visitNum}"/>
                            <p>Visitas em curso:<c:out value="${row.actVis}"/>
                            </c:when>
                        </c:choose>
                        </c:forEach>
                    </td>
                    <% } %>
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
                    <% for(int i=49; i <= 72; i++) { %>
                    <c:set var="i" value="<%=i%>"/>
                    <td>
                        <c:forEach var="row" items="${result.rows}">  
                        <c:choose>
                            <c:when test = "${row.id_qt eq i}">
                            nome:<c:out value="${row.nome}"/>
                            <p>idade:<c:out value="${row.idade}"/>
                            <p>doenca:<c:out value="${row.doenca}"/>
                            <p>Num. Visitas:<c:out value="${row.visitNum}"/>
                            <p>Visitas em curso:<c:out value="${row.actVis}"/>
                            </c:when>
                        </c:choose>
                        </c:forEach>
                    </td>
                    <% } %>
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
                    <% for(int i=25; i <= 48; i++) { %>
                    <c:set var="i" value="<%=i%>"/>
                    <td>
                        <c:forEach var="row" items="${result.rows}">  
                        <c:choose>
                            <c:when test = "${row.id_qt eq i}">
                            nome:<c:out value="${row.nome}"/>
                            <p>idade:<c:out value="${row.idade}"/>
                            <p>doenca:<c:out value="${row.doenca}"/>
                            <p>Num. Visitas:<c:out value="${row.visitNum}"/>
                            <p>Visitas em curso:<c:out value="${row.actVis}"/>
                            </c:when>
                        </c:choose>
                        </c:forEach>
                    </td>
                    <% } %>
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
                    <% for(int i=1; i <= 24; i++) { %>
                    <c:set var="i" value="<%=i%>"/>
                    <td>
                        <c:forEach var="row" items="${result.rows}">  
                        <c:choose>
                            <c:when test = "${row.id_qt eq i}">
                            nome:<c:out value="${row.nome}"/>
                            <p>idade:<c:out value="${row.idade}"/>
                            <p>doenca:<c:out value="${row.doenca}"/>
                            <p>Num. Visitas:<c:out value="${row.visitNum}"/>
                            <p>Visitas em curso:<c:out value="${row.actVis}"/>
                            </c:when>
                        </c:choose>
                        </c:forEach>
                    </td>
                    <% } %>
                    
                </tr>
            </table>
        
        </div>
    </body>
</html>
