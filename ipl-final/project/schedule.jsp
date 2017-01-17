<HTML>
<HEAD>
    <style type="text/css">
 td { color:white;}
div.S1    {position:absolute;
            left:200px;
            top:150px;
           height: 600px; width: 800px;
           color: white;
           background-color: blue;
           z-index: 5;
		background-image:url("55.bmp");}

div.S2    { color:white;
	position: absolute;
           top:259px; left: 290px;
           height: 360px; width: 610px;
           background-color: black;
           z-index: 7;}

div.S3  {position: absolute;
        bottom:302px; left: 30px;
         height: 62px; width: 90px;
         background-image:url("ipllogo.jpg");
         z-index: 1;}

</style>
<TITLE>CREDIT</TITLE>
</HEAD>
<body><BR>
<center>
<%@ include file="home.jsp" %>
<%@ page import="java.sql.*,java.util.*" %>

<%

Calendar cal = new GregorianCalendar();
       int month = cal.get(Calendar.MONTH);
       int year = cal.get(Calendar.YEAR);
       int day = cal.get(Calendar.DAY_OF_MONTH);
       String ss= day +"/"+(month + 1) + "/" + year;
       //out.println(ss);
try
{

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection c=DriverManager.getConnection("jdbc:odbc:webtech2");
       Statement st=c.createStatement();
   
       ResultSet rs=st.executeQuery("select * from sched");%>
       <div class="S1"></div>

<div class="S2">
<br>

<table border="1" class="table_txt" style="width: 610px; border-collapse: collapse; border-color: #cfcfcf">

						<tr>
							<td align="center" height="25" width="122"><strong><font color="white">Date</font></strong></td>
                            <td align="center" width="175"><strong><font color="white">Teams</font></strong></td>
							<td align="center" width="122"><strong><font color="white">Venue</font></strong></td>

						</tr>
  <% month++;
   while(rs.next())
   {
     String s=rs.getString("date");
     String s1=rs.getString("team1");
     String s2=rs.getString("team2");
     String s3=rs.getString("venue");
     int de= s.indexOf('/');
     int de2= s.lastIndexOf('/');
     int de3=s.length();
     
     String dat=s.substring(0,de);
     String mon=s.substring(de+1,de2);
     String yea=s.substring(de2+1,de3);
     
     int x =Integer.parseInt(dat);
     //out.println(x+"Date:<br>");
     int y =Integer.parseInt(mon);

     //out.println(y+"Month<br>");
     int z =Integer.parseInt(yea);
    // out.println(z+"year:<br>");
     
   // out.println(month+"month<br>");
    if(y>=month)
    {
      if(y==month)
          {
              if(x>=day)
              {
                  out.println("<tr><td>"+s+"</td>");
                  out.println("<td>"+s1+"vs"+s2+"</td>");

                 out.println("<td>"+s3+"</td></tr>");
               }
               continue;
           }
        out.println("<tr><td>"+s+"</td>");
        out.println("<td>"+s1+"vs"+s2+"</td>");
        out.println("<td>"+s3+"</td></tr>");
	}

   }
 out.println("</table>");
}
catch(Exception e)
{
   out.println("Error:"+e);
}
%>
</center>
</BODY>
</HTML>