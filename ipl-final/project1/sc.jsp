<HTML>
<HEAD>
    <style type="text/css">
 td { color:white;}
div.S1    {position:absolute;
            left:300px;
            top:255px;
           height: 600px; width: 800px;
           color: white;
           background-color: blue;
           z-index: 5;
		background-image:url("1.bmp");}

div.S2    { color:white;
	position: absolute;
           top:385px; left: 390px;
           height: 350px; width: 610px;
           background-color: black;
           z-index: 7;}


.textbox { background-color:black; }

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
   	int p=0;    //out.println(ss);
	String last="";
try
{

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection c=DriverManager.getConnection("jdbc:odbc:webtech2");
       Statement st=c.createStatement();
   
       ResultSet rs=st.executeQuery("select * from sched");%>
       <div class="S1"></div>


<div class="S2">
<br>
<form action="sc1.jsp" method="post">

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
	String s4=rs.getString("val");

     int de= s.indexOf('/');
     int de2= s.lastIndexOf('/');
     int de3=s.length();
     
     String dat=s.substring(0,de);
     String mon=s.substring(de+1,de2);
     String yea=s.substring(de2+1,de3);
     
     int x =Integer.parseInt(dat);
     int y =Integer.parseInt(mon);
	int z =Integer.parseInt(yea);


    if(y>=month)
    {	

      if(y==month)
          {
              if(x>=day)
              {
                  out.println("<tr><td>"+s+"</td>");
			out.println("<td>"+s1+"  vs  "+s2+"</td>");
			out.println("<td>"+s3+"</td></tr>");
			last=s4;
			p++;
			if(p==6)
			break;
               }
			continue;
		}        
	out.println("<tr><td>"+s+"</td>");
        out.println("<td>"+s1+"  vs  "+s2+"</td>");
        out.println("<td>"+s3+"</td></tr>");
		last=s4;
		p++;
		if(p==6)
			break;
	
	}
   }
//out.println(last);
//out.println(p);
out.println("</table>");
out.println("<br><br><br><input type='hidden' value='"+last+"' name='last' class='textbox' size='0'><pre>        </pre>     ");
out.println("<input type='submit' value='   Next   '>");
out.println("</form>");
}
catch(Exception e)
{
   out.println("Error:"+e);
}
%>
</center>
</BODY>
</HTML>