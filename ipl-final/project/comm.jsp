
<html>
    <head>
        
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="java.sql.*"%>
        <%@ page import="java.util.*"%>
        <%
        try
                {
                  String ss=request.getParameter("g");
                  out.println("re:"+ss);
                  String s1=request.getParameter("na");
                  String s2=request.getParameter("na1");
                  Calendar cal = new GregorianCalendar();
                  int month = cal.get(Calendar.MONTH);
                  int year = cal.get(Calendar.YEAR);
                  int day = cal.get(Calendar.DAY_OF_MONTH);
                  String s= day +"/"+(month + 1) + "/" + year;
                  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                  Connection c=DriverManager.getConnection("jdbc:odbc:webtech1");
                  Statement st=c.createStatement();
                 
                  st.executeUpdate("insert into "+ss+" values('"+s2+"','"+s1+"','"+s+"')");
                  out.println("<form><input type='hidden' name='val' value='"+ss+"'></form>");
                  st.close();
                  c.close();
                  response.sendRedirect("index.jsp");
                }
        catch(Exception e)
                {
                 out.println(e);
                }
        %>
    </body>
</html>
