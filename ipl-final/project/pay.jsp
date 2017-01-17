

<%@ page import="java.sql.*,java.util.*" %>

<%
      
try
{
String match=request.getParameter("match");
String cat=request.getParameter("cat");
String tickets=request.getParameter("num");
String amount=request.getParameter("total");
String remain=request.getParameter("remain");
out.println(remain);

String user=request.getParameter("name");
String email=request.getParameter("email");
String addr=request.getParameter("addr");
String card=request.getParameter("card");
String cname=request.getParameter("cname");
String cno=request.getParameter("cno");

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:webtech2"); 
Statement st=c.createStatement();
st.executeUpdate("insert into booking values('"+match+"','"+tickets+"','"+amount+"','"+user+"','"+email+"','"+addr+"','"+card+"','"+cname+"','"+cno+"')");
st.close();

st=c.createStatement();
st.executeUpdate("update tickets set "+cat+"='"+remain+"' where match='"+match+"' ");
st.close();

response.sendRedirect("tickets.jsp");
}

catch(Exception e)
{
   out.println("Error:"+e);
}


%>