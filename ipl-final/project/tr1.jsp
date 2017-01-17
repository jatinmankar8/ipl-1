<html>
    <head>

        <title>JSP Page</title>
    </head>
    <body>
         <%@ page import="java.sql.*" %>
        <%
            String swq=request.getParameter("try");
            out.println(swq);
        %>
    </body>
</html>
