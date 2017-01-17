<html>
    <head>
    <title>
        Designing chart
    </title>
    <body>
        <%@ page import="java.sql.*;"%>
        <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection c=DriverManager.getConnection("jdbc:odbc:webtech1");
        Statement st=c.createStatement();
        ResultSet rs=st.executeQuery("select * from chart");
        int pos=100,to=500;
        int inter=0;
        float r=0;
         out.println("<p style='position:absolute; width:0px; height:600px;background-color:black; top:25; left:70; border:solid;'></p>");
          out.println("<p style='position:absolute; width:800px; height:0px;background-color:black; top:500; left:25; border:solid;'></p>");

        while(rs.next())
            {
            String s=rs.getString("team");
            int m=rs.getInt("matchplay");
            int n=rs.getInt("matchwon");
            r=m/n;
            r=r*50;
            inter=500-(int)r;
            out.println("<p style='position:absolute; width:35px; height:"+r+"px;background-color:maroon; top:"+inter+"; left:"+pos+"; border:solid;'></p>"+s);
            out.println("<br>");
            pos+=80;
            }
        %>
    </body>
</head></html>