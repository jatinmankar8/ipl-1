<html>

<body>
<%@ page import="java.sql.*" %>
<%
try
{       String s1;
        String s2;
        String s3;
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection c=DriverManager.getConnection("jdbc:odbc:webtech");
       Statement st=c.createStatement();
       ResultSet rs=st.executeQuery("Select * from main");
       while(rs.next())
       {
          s1=rs.getString("id");
          s2=rs.getString("title");
          out.println("Id:"+s1);
          out.println("Topic:"+s2);
       }

 }
      catch(Exception e)
      {
         out.println(e);
      }



%>
</body>
</html>
