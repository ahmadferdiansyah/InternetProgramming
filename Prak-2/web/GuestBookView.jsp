<%-- 
    Document   : GuestBookView
    Created on : Jan 10, 2021, 8:02:42 PM
    Author     : ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@ page import="java.util.*, com.infobean.GuestBookBean"%>
<jsp:useBean id="gb" scope="page" class="com.infobean.GuestBookBean"/>

<%
Vector<GuestBookBean> vGuest = gb.viewGuestBook();
%>

<html>
<head>
<title>Guest Book</title>
</head>
<body>
    <h1>Guest List</h1>
    <%
    Iterator value = vGuest.iterator();
    while (value.hasNext()) {    
        GuestBookBean g = (GuestBookBean)value.next();
    %>
        <table>
        <tr>
            <td>Name:</td>
            <td><%=g.getName()%></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><%=g.getAddress()%></td>
        </tr>
        <tr>
            <td>Company:</td>
            <td><%=g.getCompany()%></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><%=g.getEmail()%></td>
        </tr>
        </table>
    <%
    }
    %>
</body>
</html>
