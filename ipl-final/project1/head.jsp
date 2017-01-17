<html>
<body>
<%@ page import="java.sql.*"%>
<%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:webtech");
Statement st=c.createStatement();
ResultSet rs=st.executeQuery("select * from headl");
while(rs.next())
{
    int p=rs.getInt("score");
    out.println(rs.getString("team1")+" Vs "+rs.getString("team2"));
    out.println("<p style='color:green'>Score:"+p);
    out.println("/"+rs.getInt("wickets"));
    float n1=rs.getFloat("overs");
     out.println(" Overs:"+n1);
    int tar=rs.getInt("target");
    //out.println("Target:"+tar);
    if(tar!=0)
    {
    int m;
    float n;
    m=tar-p+1;

    out.println("Target:"+tar);
    out.println("<p style='color:maroon'>Require "+m+" runs in ");

     
     n=n1*6;
     out.println((int)n+" balls");
        }
//out.println("</marquee>");
}
}
catch(Exception e)
{
out.println(e);
}
%>
</body>
</html>