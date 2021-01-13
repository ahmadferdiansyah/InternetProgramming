<%-- 
    Document   : Delete
    Created on : Jan 13, 2021, 6:58:58 AM
    Author     : ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="gb" scope="page" class="com.infobean.GuestBookBean"/>

<%
String message = "";
int id = Integer.parseInt(request.getParameter("id"));
boolean r = gb.delete(id);
if(r) {
    message = "Delete successful";
} else {
    message = "Error";
}
%>

<html>
<head>
    <title>Guest Book</title>
</head>
<body>
    <h2>
        <%=message%>
        <br/>
        <a href="index.jsp">BACK</a>
        <br/>
        <a href="GuestBookView.jsp">VIEW GUEST BOOK</a>
    </h2>
    <br/>
</body>
</html>