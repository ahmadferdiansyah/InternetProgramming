<%-- 
    Document   : index
    Created on : Jan 1, 2021, 3:19:42 AM
    Author     : ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>
                    <form method="GET" action="index.jsp">
                        <select name="image" size="5">
                            <option value="bungaputi.jpg" selected>Bunga Putih</option>
                            <option value="bungamerah.jpg">Bunga Merah</option>
                            <option value="bungapink.jpg">Bunga Pink</option>
                            <option value="bungabiru.jpg">Bunga Biru</option>
                            <option value="bungaungu.jpg">Bunga Ungu</option>
                        </select>
                        <br/>
                        <input type="submit" value="Submit">
                    </form>
                </td>

                <%
                String imgref = "images/";
                String param = request.getParameter("image");
                if (param == null) {
                    imgref += "bungaputih.jpg";
                } else {
                    imgref += param;
                }
                %>

                <td>
                    <img src="<%=imgref%>">
                    <p align="center"><%=imgref%></p>
                </td>
            </tr>
        </table>
    </body>
</html>