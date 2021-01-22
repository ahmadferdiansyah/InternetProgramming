<%-- 
    Document   : index3
    Created on : Jan 18, 2021, 8:25:19 PM
    Author     : ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="jsp.*, java.util.*"%>
<jsp:useBean id="catalogBean" scope="page" class="jsp.CatalogBean"/>

<%
Vector<Category> vCategory = catalogBean.getAllCatalog();
%>

<html>
<head>
    <title>Online Ticket</title>
</head>
<body>
    <%@ include file="header.jspf"%>

    <table border="1">
        <tr>
            <td align="center"><b>Daftar Kategori</b></td>
            <td align="center"><b>Deskripsi</b></td>
        </tr>
    <%
    Iterator<Category> it = vCategory.iterator();
    while (it.hasNext()) {
        Category c = it.next();
    %>
        <tr>
            <td><a href="catalog.jsp?action=view&id=<%=c.getId()%>"><%=c.getName()%></a></td>
            <td><%=c.getDescription()%></td>
        </tr>
    <%
    }
    %>
    </table>
</body>
</html>