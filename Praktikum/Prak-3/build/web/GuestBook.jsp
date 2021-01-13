<%-- 
    Document   : GuestBook
    Created on : Jan 13, 2021, 6:59:21 AM
    Author     : ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="gb" scope="page" class="com.infobean.GuestBookBean"/>

<%
String message = "";
String name = request.getParameter("name");
String address = request.getParameter("address");
String company = request.getParameter("company");
String email = request.getParameter("email");
if (name != "" && address != "" && company != "" && email != "") {
    boolean r = gb.insertIntoDB(name, address, company, email);
    if (r) {
        message = "Thank you " + name + " for registering";
    } else {
        message = "Error";
    }
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
