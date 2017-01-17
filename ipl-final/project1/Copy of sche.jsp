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
		background-image:url("1.bmp");}

div.S2    { color:black;
		position: absolute;
           top:249px; left: 290px;
           height: 360px; width: 610px;
           background-color: white;
           z-index: 7;}

div.S3  {position: absolute;
        bottom:302px; left: 30px;
         height: 62px; width: 90px;
         background-image:url("ipllogo.jpg");
         z-index: 1;}

</style>


<script>
  
 
function c(i)
    {	
		var s=i;
		alert(s);
		var n=document.getElementById(s).value;
		document.Calendar.dateInfo.value = n;		
    }



  </script>


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
String q="",g="";
int i=1;
int l=1;
int m_a[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
int m_m[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};


try
{

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection c=DriverManager.getConnection("jdbc:odbc:webtech2");
       Statement st=c.createStatement();
   
       ResultSet rs=st.executeQuery("select * from sched");%>

<div class="S2">
<br>
<form method="post" action="" name="Calendar">
<textarea rows="7" cols="20" name="dateInfo">
Click on the underlined date to see the events and their scheduled times.
</textarea>
<table border="1" class="table_txt" style="width: 150px; border-collapse: collapse; border-color: #cfcfcf;">


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
	int y =Integer.parseInt(mon);
     	int z =Integer.parseInt(yea);

    if(y>=month)
    {
     if(y==month)
        {
          if(x>=day)
           {
            q="TEAM1:"+s1+"\nvs\nTEAM2:"+s2+"\nVENUE:"+s3;
		 out.println("<input type='hidden'  id='"+x+"' value='"+q+"'>");
		 m_a[x]=x;
           }
           continue;
         }
			
        // q=s+"."+s1+s2+"."+s3;
	  // out.println("<input type='hidden'  id='"+x+"' value='"+q+"'>");
	  // m_m[x]=x;
	  // out.println(m_m[x]);

   }//(if(y>=month)

}

for(l=1;l<31;l++)
{
if(m_a[l]==0)
{
		 out.println("<input type='hidden'  id='"+l+"' value='no schedule to display'>");
}
}

%>
<tr>
<td align="center" colspan="7"><b>APRIL 2009</b>
</td>
</tr>
<tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td><a href="javascript:c(1)" value='m1'>1</a> </td>
  <td><input type='button' value='2' onclick='c(2)'> </td>
</tr>
<tr>
  <td><input type='button' value='3' onclick='c(3)'> </td>	
  <td><input type='button' value='4' onclick='c(4)'> </td>
  <td><input type='button' value='5' onclick='c(5)'> </td>
  <td><input type='button' value='6' onclick='c(6)'> </td>
  <td><input type='button' value='7' onclick='c(7)'> </td>
  <td><input type='button' value='8' onclick='c(8)'> </td>
  <td><input type='button' value='9' onclick='c(9)'> </td>
</tr>
<tr>
  <td><input type='button' value='10' onclick='c(10)'> </td>	
  <td><input type='button' value='11' onclick='c(11)'> </td>
  <td><input type='button' value='12' onclick='c(12)'> </td>
  <td><input type='button' value='13' onclick='c(13)'> </td>
  <td><input type='button' value='14' onclick='c(14)'> </td>
  <td><input type='button' value='15' onclick='c(15)'> </td>
  <td><input type='button' value='16' onclick='c(16)'> </td>
</tr>
<tr>
  <td><input type='button' value='17' onclick='c(17)'> </td>	
  <td><input type='button' value='18' onclick='c(18)'> </td>
  <td><input type='button' value='19' onclick='c(19)'> </td>
  <td><input type='button' value='20' onclick='c(20)'> </td>
  <td><input type='button' value='21' onclick='c(21)'> </td>
  <td><input type='button' value='22' onclick='c(22)'> </td>
  <td><input type='button' value='23' onclick='c(23)'> </td>
</tr>
<tr>
  <td><input type='button' value='24' onclick='c(24)'> </td>	
  <td><input type='button' value='25' onclick='c(25)'> </td>
  <td><input type='button' value='26' onclick='c(26)'> </td>
  <td><input type='button' value='27' onclick='c(27)'> </td>
  <td><input type='button' value='28' onclick='c(28)'> </td>
  <td><input type='button' value='29' onclick='c(29)'> </td>
  <td><input type='button' value='30' onclick='c(30)'> </td>
</tr>





<% 
//out.println("<br><input type='button' value='show' onclick='c(13)'>");

/*
else
{
	out.println("else");
	q="no schedule to display";
	out.println("<input type='hidden' id='"+l+"' value='"+q+"'>");
}
l++;

var y1= n.indexOf('.');
            		var y2= n.lastIndexOf('.');
                     	var y3=n.length;

				var z1=n.substring(0,y1);
                        var z2=n.substring(y1+1,y2);
                        var z3 =n.substring(y2+1,y3);
				var f=z1+" ";
				f=f+z2;
				f=f+z3;
				alert(f);
*/
//	out.println("<br>");
 out.println("</table></form>");
}
catch(Exception e)
{
   out.println("Error:"+e);
}
%>
</center>
</BODY>
</HTML>