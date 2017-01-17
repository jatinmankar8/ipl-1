
<html>
    <head>
       
        <title>JSP Page</title>
    </head>
    <body>
     <%@ page import="java.sql.*,java.util.*" %>
     
<%
try
{
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection c=DriverManager.getConnection("jdbc:odbc:webtech1");
       Statement st=c.createStatement();
       Statement st1=c.createStatement();
       Calendar cal = new GregorianCalendar();
       int month = cal.get(Calendar.MONTH);
       int year = cal.get(Calendar.YEAR);
       int day = cal.get(Calendar.DAY_OF_MONTH);
       String s= day +"/"+(month + 1) + "/" + year;
       String s1=request.getParameter("name");
       String s4=request.getParameter("title");
       String s2=request.getParameter("comment");
       int s3=0,a=0;
       ResultSet rs=st.executeQuery("select id from main");
       while(rs.next())
           {
            a=rs.getInt("id");
           }
       a++;
       String p="top"+a;
       st.executeUpdate("insert into main VALUES("+a+",'"+s4+"','"+s1+"','"+s+"')");

       st.executeUpdate("create table "+p+" (comments varchar(200), name varchar(32), dat varchar(32))");
      // st1.executeUpdate("create table "+p+" (comments varchar(500), " +"name varchar(50), " +"date varchar(20));");


      // st.executeUpdate("create table "+p+"(comments char(500),name char(50),date char(50)");
       
       st.executeUpdate("insert into "+p+" values('"+s2+"','"+s1+"','"+s+"')");
       out.println(s1);
       out.println(s2);
       out.println(s3);
       out.println(s4);
	 st.close();
	c.close();
       out.println("<br><br><center><h1><font color='345fab'>Topic has been created Successfully!</font></h1>");
       response.sendRedirect("index.jsp");
}
      catch(Exception e)
      {

         out.println(e);
      }

%>
    </body>
</html>
