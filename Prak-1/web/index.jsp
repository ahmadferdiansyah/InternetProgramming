<%-- 
    Document   : index
    Created on : Jan 6, 2021, 3:51:54 AM
    Author     : ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="ngg" scope="session" class="com.infobean.NumberGuessBean"/>
        <jsp:setProperty name="ngg" property="*"/>
            <h1><u>Number Guess Game</u></h1>
            <h3>
                <%
                if (ngg.getNumGuesses() == 0) {
                %>
                Silahkan tebak sebuah bilangan antara 1 s/d 20.
                    <form method="GET" action="index.jsp">
                        Tebakan Anda = <input type="text" name="guess"><input type="submit" value="Tebak">
                    </form>
                <%
                } else {
                %>
                <%
                if (ngg.isMatch()) {
                %>
                Tebakan = <jsp:getProperty name="ngg" property="guess"/><br/>
                <i><jsp:getProperty name="ngg" property="hint"/></i><br/>
                Anda telah mencoba sebanyak <jsp:getProperty name="ngg" property="numGuesses"/> kali<br/>
                <br/>
                Silahkan <a href="index.jsp">COBA LAGI</a>
                <%
                ngg.reset();
                } else {
                %>
                Tebakan = <jsp:getProperty name="ngg" property="guess"/><br/>
                <i><jsp:getProperty name="ngg" property="hint"/></i><br/>
                Anda telah mencoba sebanyak <jsp:getProperty name="ngg" property="numGuesses"/> kali<br/>
                Silahkan tebak lagi bilangan antara 1 s/d 20.<br/>
                
                    <form method="GET" action="index.jsp">
                        Tebakan Anda = <input type="text" name="guess"><input type="submit" value="Tebak">
                    </form>
                <%
                }
                %>
            <%
            }
            %>
            </h3>
    </body>
</html>
