<%-- 
    Document   : GuestBookView
    Created on : Jan 13, 2021, 7:00:04 AM
    Author     : ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*, com.infobean.GuestBookBean.Guest"%>
<jsp:useBean id="gb" scope="page" class="com.infobean.GuestBookBean"/>

<%
Vector<Guest> vGuest = gb.viewGuestBook();
%>

<html>
<head>
<title>Guest Book</title>
<link rel="stylesheet" />
<style>
    table{
        border-collapse:collapse;
        border-color: blue;
        border-width: 5px;
    }
    td{
        padding: 5px 10px;
        border-width: 5px;
    }
</style>
</head>
<body>
    <h1>Guest List</h1>
    <table border="1">
        <thead style="background-color: red;text-align: center;">
            <td><b>Name</b></td>
            <td><b>Address</b></td>
            <td><b>Company</b></td>
            <td><b>Email</b></td>
            <td><b>Edit</b></td>
            <td><b>Delete</b></td>
        </thead>
    <%
    Iterator value = vGuest.iterator();
    while (value.hasNext()) {    
        Guest g = (Guest)value.next();
    %>
        <tr>
            <td><%=g.getName()%></td>
            <td><%=g.getAddress()%></td>
            <td><%=g.getCompany()%></td>
            <td><%=g.getEmail()%></td>
            <td><a href="GuestBookEdit.jsp?id=<%=g.getId()%>">Edit</a></td>
            <td><a href="Delete.jsp?id=<%=g.getId()%>">Delete</a></td>
        </tr>
    <%
    }
    %>
    </table>

    <br/>
    <a href="index.jsp">BACK</a>
</body>
</html>
