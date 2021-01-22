<%-- 
    Document   : index2
    Created on : Jan 18, 2021, 8:24:13 PM
    Author     : ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="jsp.*, java.util.*"%>
<jsp:useBean id="catalogBean" scope="page" class="jsp.CatalogBean"/>

<%
Vector<Product> vCatalog = catalogBean.getPromotionProducts();
%>

<html>
<head>
    <title>Online Ticket</title>
</head>
<body>
    <%@ include file="header.jspf"%>

    <%
    Iterator<Product> it = vCatalog.iterator();
    while (it.hasNext()) {
        Product p = it.next();
    %>
        <div style="display: flex;">
            <img src="<%=p.getImage()%>" style="max-width: 200px; margin-right: 20px;">
            <div style="display: flex; flex-direction: column; justify-content: center;">
                <b><%=p.getName()%></b>

                <br/>
                <table>
                <tr>
                    <td>Search Name:</td>
                    <td><%=p.getSKU()%></td>
                </tr>
                <tr>
                    <td>Company:</td>
                    <td><%=p.getBrand()%></td>
                </tr>
                <tr>
                    <td>Category:</td>
                    <td><%=p.getCategory().getName()%></td>
                </tr>
                <tr>
                    <td style="vertical-align: top;">Description:</td>
                    <td><%=p.getDescription()%></td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td><%=p.getPrice()%> IDR</td>
                </tr>
                </table>
                <br/>

                <form method="POST" action="shopcart.jsp" style="margin: 0;">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="<%=p.getId()%>">
                    Quantity: <input type="number" style="width: 3rem;" name="qty" value="1"> <input type="submit" value="Add to cart">
                </form>
            </div>
        </div>

        <br/>
    <%
    }
    %>
</body>
</html>
