<html>
    <head>
    <title>
        Designing chart
    </title>
    <body>

<BR><BR><BR><BR>
<%@ include file='home.jsp' %>
        <%@ page import="java.sql.*;"%>
        <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection c=DriverManager.getConnection("jdbc:odbc:webtech1");
        Statement st=c.createStatement();
        ResultSet rs=st.executeQuery("select * from chart");
        int pos=400,to=700;
        int inter=0;
        float r=0;
	out.println("<marquee behavior='alternate'><h1>Performance chart</h1></marquee>");
         out.println("<p style='position:absolute; width:0px; height:400px;background-color:black; top:350; left:370; border:solid;'></p>");
          out.println("<p style='position:absolute; width:800px; height:0px;background-color:black; top:700; left:275; border:solid;'></p>");
		out.println("<p style='position:absolute; top:850; left:275;'><h2 style='color:red'>Performance</h2></p>");

        while(rs.next())
            {
            String s=rs.getString("team");
           int m=rs.getInt("matchplay");
            int n=rs.getInt("matchwon");
           r=m/n;
            r=r*50;
            inter=700-(int)r;
            out.println("<p style='position:absolute; width:35px; height:"+r+"px;background-color:maroon; top:"+inter+"; left:"+pos+"; border:solid;'></p>");
            out.println("<br>");
            pos+=80;
            }
        %>
    </body>
</head></html>