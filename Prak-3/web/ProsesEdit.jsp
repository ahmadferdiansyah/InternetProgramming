<%-- 
    Document   : ProsesEdit
    Created on : Jan 13, 2021, 7:00:27 AM
    Author     : ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="gb" scope="page" class="com.infobean.GuestBookBean"/>

<%
String message = "";
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String address = request.getParameter("address");
String company = request.getParameter("company");
String email = request.getParameter("email");
boolean r = gb.edit(id, name, address, company, email);
if(r) {
    message = "Edit successful";
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
</body>
</html>
