<html>
<head>
<title>YOUR TICKET</title>
<style>

div.S2  {
		position: absolute;
        	top: 10px;
		left: 10px;
      	height: 1000px; 
		width: 1800px;
         	z-index:8;
		background:url("wp.jpg");
         }

div.S1 {
		position: absolute;
        	top: 100px;
		left: 25px;
      	height: 200px; 
		width: 700px;
		background:url("585.jpg");
		border-style: ridge;
		z-index:5;
		font-family: Lucida Calligraphy;
		word-spacing: 5px;
		font-size:13pt;
		color: black;
}

</style>
<script type="text/javascript">

function printpage()
{
window.print();
}
function disable()
{
if (event.button == 2)
  {
  alert("Sorry.. NO RIGHT CLK.");
  }
}
</script>
</head>
<body onmousedown="disable()">

<%@ page import="java.sql.*,java.util.*" %>
<%     
try
{
String team1="";
String team2="";
String event="";
String venue="";
String category="";
String cat1="cat1";
String cat2="cat2";
String cat3="cat3";


String match=request.getParameter("match");
String cat=request.getParameter("cat");
String tickets=request.getParameter("num");
String amount=request.getParameter("total");
String remain=request.getParameter("remain");
String user=request.getParameter("name");
String email=request.getParameter("email");
String addr=request.getParameter("addr");
String phone=request.getParameter("phone");
String card=request.getParameter("card");
String cname=request.getParameter("cname");
String cno=request.getParameter("cno");


if(cat.equals(cat1))
{
category="CORPORATE BOX";
}
else if(cat.equals(cat2))
{
category="PAVILION TERRACE";
}
else if(cat.equals(cat3))
{
category="GROUND STAND";
}

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:webtech2"); 
Statement st=c.createStatement();
st.executeUpdate("insert into booking values('"+match+"','"+cat+"','"+tickets+"','"+amount+"','"+user+"','"+email+"','"+phone+"','"+addr+"','"+card+"','"+cname+"','"+cno+"')");
st.close();

st=c.createStatement();
st.executeUpdate("update tickets set "+cat+"='"+remain+"' where match='"+match+"' ");
st.close();

st=c.createStatement();
ResultSet rs=st.executeQuery("select * from sched where id='"+match+"' "); 
while(rs.next())
{
team1=rs.getString("team1");
team2=rs.getString("team2");
event=rs.getString("date");
venue=rs.getString("venue");
}
/*
out.println(match);
out.println(email);
out.println(card);
out.println(cname);
out.println(cno);
out.println(match);
*/

out.println("<div class='S2'><br><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type='button' value='Print ticket' onclick='printpage()' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href='tickets.jsp'>BUY MORE</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href='homepage1.jsp'>home</a></div2>");
out.println("<div class='S1'>");
out.println("<pre><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");

out.println(team1+" vs "+team2);
out.println("</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADMIT:"+tickets);
out.println("VENUE:"+venue+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+category);
out.println("DATE:"+event);
out.println(" ");
out.println("TICKET HOLDER:");
out.println(user+" <br> "+addr+" <br> "+phone+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COST:"+amount);

out.println("</pre></div>");
//response.sendRedirect("tickets.jsp");
}

catch(Exception e)
{
   out.println("Error:"+e);
}

%>

</body>
</html>