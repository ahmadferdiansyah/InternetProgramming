<%-- 
    Document   : shopcart
    Created on : Jan 18, 2021, 8:26:38 PM
    Author     : ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="jsp.*, java.util.*"%>
<jsp:useBean id="cart" scope="session" class="jsp.ShoppingCartBean"/>

<%
String action = request.getParameter("action");
if (action != null) {
    String productId = request.getParameter("id");
    if (action.equals("add")) {    
        int qty = Integer.parseInt(request.getParameter("qty"));
        cart.addToCart(productId, qty);
    } else if (action.equals("delete")) {
        cart.removeFromCart(productId);
    }
}
%>

<html>
<head>
    <title>Online Ticket</title>
    <style>
    td {
        padding: 10px;
    }
    </style>
</head>
<body>
    <%@ include file="header.jspf"%>

    <h3>Keranjang Belanja</h3>

    <%
    if (cart.getTotal() == 0) {
    %>
        <h4>Keranjang belanja Anda masih kosong</h4>
    <%
    } else {
    %>

    <table border="1">

    <tr style="background: yellow; color: white;">
        <td><b>Search Name</b></td>
        <td><b>Nama</b></td>
        <td><b>Jumlah</b></td>
        <td><b>Harga</b></td>
        <td><b>Subtotal</b></td>
        <td><b>Action</b></td>
    </tr>

    <%
    Iterator<CartItem> it = cart.getCart().iterator();
    while (it.hasNext()) {
        CartItem item = it.next();
        Product p = item.getProduct();
    %>
        <tr>
            <td><%=p.getSKU()%></td>
            <td><%=p.getName()%></td>
            <td><%=item.getQuantity()%></td>
            <td><%=p.getPrice()%></td>
            <td><%=item.getSubtotal()%></td>
            <td>
                <form method="POST" action="shopcart.jsp" style="margin: 0;">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="id" value="<%=p.getId()%>">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
    <%
    }
    %>

    <tr>
        <td colspan="6" style="vertical-align: center; text-align: center; background: green; color: white;">
            <b>Total: <%=cart.getTotal()%> IDR<%%>
        </td>
    </tr>

    </table>

    <%
    }
    %>

    <br/>
    <br/>
    <a href="index.jsp">Belanja Lagi</a>
</body>
</html>