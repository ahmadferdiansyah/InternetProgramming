<%-- 
    Document   : sales
    Created on : Jan 1, 2021, 4:31:08 AM
    Author     : ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/WEB-INF/header.jspf"%>
<jsp:useBean id="userData" scope="session" class="com.infobean.UserData"/>
<jsp:setProperty name="userData" property="*"/>

<html>
<head>
    <title>JSP Page</title>
</head>
<body>
    <h2>Selamat Datang, <%=userData.getNamaUser()%></h2>
    ID ANDA = <jsp:getProperty name="userData" property="idUser" /><br/>
    USIA ANDA = <jsp:getProperty name="userData" property="umur" /><br/>
    <p><a href="index.jsp">LOGIN</a></p>
</body>
</html>