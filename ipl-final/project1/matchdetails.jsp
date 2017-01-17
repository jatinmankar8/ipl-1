<HTML>
<HEAD>
<TITLE>MATCH DETAILS</TITLE>
</HEAD>
<body>

 <%@ include file="home.jsp" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%


Calendar cal = new GregorianCalendar();
       
       int year = cal.get(Calendar.YEAR);
       int day = cal.get(Calendar.DAY_OF_MONTH);
       int month = cal.get(Calendar.MONTH);
       String ss= day +"/"+(month + 1) + "/" + year;
try
{

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection c=DriverManager.getConnection("jdbc:odbc:w1");
       Statement st=c.createStatement();

       ResultSet rs=st.executeQuery("select * from sched1");

   out.println("<table border='1'  cellspacing='1' style=' position:absolute; left:200px; top:-250px;'  >");
   out.println("<tr style='font-family:Curlz MT; font-size:17pt; color:blue;'>");
   out.println("<th>Date</th>");
   out.println("<th>Venue</th>");
   out.println("<th colspan='2'>Teams</th>");
   //out.println("<th>Team2</th>");
   out.println("<th>Team1 Score</th>");
   out.println("<th>Team2 Score</th>");
out.println("<th>WINNERS </th>");
out.println("<th>MAN OF THE MATCH</th>");
//out.println("<th>score</th></style></tr>");

   while(rs.next())
   {
     String s=rs.getString("date");
     String s1=rs.getString("venue");
     String s2=rs.getString("team1");
     String s3=rs.getString("team2");
     String s4=rs.getString("won1");
     String s6=rs.getString("won2");
     String s8=rs.getString("score");
     String s9=rs.getString("wickets");

     int de= s.indexOf('/');
     int de2= s.lastIndexOf('/');
     int de3=s.length();

     String dat=s.substring(0,de);
     String mon=s.substring(de+1,de2);
     String yea=s.substring(de2+1,de3);

     int x =Integer.parseInt(dat);
     out.println("<br>");
     int y =Integer.parseInt(mon);
     out.println("<br>");
     int z =Integer.parseInt(yea);
     out.println("<br>");

 if(x<=day)
 {
out.println("<tr height='100' style='font-family:LucidaBright;font-size:12pt; color:purple; top:200px;'>");
     out.println("<td>"+s+"</td>");
     out.println("<td>"+s1+"</td>");
      out.println("<td><img style='width:80px;height:60px;' src='"+s2+"'></style></td>");
       out.println("<td><img style='width:80px;height:60px;' src='"+s3+"'></style></td>");
        out.println("<td>"+s4+"</td>");
        
          out.println("<td>"+s6+"</td>");
          
            out.println("<td>"+s8+"</td>");
   out.println("<td>"+s9+"</td>");

out.println("</style></tr>");
 }
   }
out.println("</style></table>");
out.println("<br><img style='position:absolute;left:1400; top:200;'src='pro1.gif'>");
out.println("</img>");
}
catch(Exception e)
{
   out.println("Error:"+e);}

%>

</BODY>
</HTML>