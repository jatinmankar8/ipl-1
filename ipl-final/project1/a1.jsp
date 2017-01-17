HTML>
<HEAD>

    <style>
            o1 {border-style:solid;
                border-width:1px;
              
                float:right;
                }
                </style>
</HEAD>
<body bgcolor='da6677'><BR>


<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%

try
{
int one=1;
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection c=DriverManager.getConnection("jdbc:odbc:webtech1");
       Statement st=c.createStatement();
   ResultSet rs=st.executeQuery("select * from tab2 where teamno="+one+"");
out.println("<p id='o1'> ");
   out.println("<table border=1 color=blue>");
   out.println("<tr>");
   out.println("<th>TEAM PLAYERS</th>");
   out.println("<th>POSITIONS</th>");

     out.println("</tr>");


   while(rs.next())
   {
     String s=rs.getString("players");
     String s1=rs.getString("position");
out.println("<tr>");
      out.println("<td>"+s+"</td>");
      out.println("<td>"+s1+"</td>");
   out.println("</tr>");
   }

}
catch(Exception e)
{
   out.println("Error:"+e);
}
%>

</BODY>
</HTML>
