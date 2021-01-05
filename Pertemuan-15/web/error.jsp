<%-- 
    Document   : error
    Created on : Jan 5, 2021, 1:49:13 AM
    Author     : ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  
<%@ page isErrorPage="true"%>

<html>
<head>
    <title>JSP Page</title>
</head>
<body>
    <h1>Exception!</h1>
    <h3><%=exception.getMessage()%></h3>
</body>
</html>