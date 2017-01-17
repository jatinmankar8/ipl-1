<HTML>
<HEAD>
   <style type="text/css">
 td { color:white;}

div.S9    { color:black;
		position: absolute;
           top:249px; left: 1000px;
           height: 300px; width: 250px;
           background-color: #00BFFF ;
           z-index: 7; font-family:Berlin Sans FB;
		}

a {
	text-decoration:none;
	color:white;
   }

.textbox { 
		background-color: #00BFFF;
		color: blacks; 
          }
</style>


<script>
  
 
function c(i)
    {	
		var s=i;
		//alert(s);
		var n=document.getElementById(s).value;
		document.Calendar.dateInfo.value = n;		
    }



  </script>


<TITLE>CREDIT</TITLE>
</HEAD>
<body vlink="silver" alink="white">
<BR>
<center>

<%@ page import="java.sql.*,java.util.*" %>

<%

Calendar cal1 = new GregorianCalendar();
     int month1 = cal1.get(Calendar.MONTH);
     int year1 = cal1.get(Calendar.YEAR);
     int day1 = cal1.get(Calendar.DAY_OF_MONTH);
     String ss1= day1 +"/"+(month1 + 1) + "/" + year1;
String q1="",g1="";
int i1=1;
int l1=1;
int m_a1[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
int m_m1[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};


try
{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c1=DriverManager.getConnection("jdbc:odbc:webtech2");
Statement st1=c1.createStatement();
   
ResultSet rs1=st1.executeQuery("select * from sched");%>

<div class="S9">
<br>
<form method="post" action="" name="Calendar">
EVENT LIST
<table border="1" class="table_txt" style="width: 150px; border-collapse: collapse; border-color: #cfcfcf;">


  <% month1++;
   while(rs1.next())
   {
     String s01=rs1.getString("date");
     String s11=rs1.getString("team1");
     String s21=rs1.getString("team2");
     String s31=rs1.getString("venue");

     int de1= s01.indexOf('/');
     int de21= s01.lastIndexOf('/');
     int de31=s01.length();

     String dat1=s01.substring(0,de1);
     String mon1=s01.substring(de1+1,de21);
     String yea1=s01.substring(de21+1,de31);
     
     	int x1 =Integer.parseInt(dat1);
	int y1 =Integer.parseInt(mon1);
     	int z1 =Integer.parseInt(yea1);

	if(y1==month1)
        {
            q1="TEAM1:"+s11+"\n\nTEAM2:"+s21+"\n\nVENUE:"+s31;
		 out.println("<input type='hidden'  id='"+x1+"' value='"+q1+"'>");
		 m_a1[x1]=x1;
           continue;
         }


}

for(l1=1;l1<31;l1++)
{
if(m_a1[l1]==0)
{
		out.println("<input type='hidden'  id='"+l1+"' value='no schedule to display'>");
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
  <td> <a href="javascript:c(1)">1</a></td>
  <td> <a href="javascript:c(2)">2</a></td>
  <td> <a href="javascript:c(3)">3</a></td>	
  <td> <a href="javascript:c(4)">4</a></td>
</tr>
<tr>
  <td> <a href="javascript:c(5)">5</a></td>
  <td> <a href="javascript:c(6)">6</a></td>
  <td> <a href="javascript:c(7)">7</a></td>
  <td> <a href="javascript:c(8)">8</a></td>
  <td> <a href="javascript:c(9)">9</a></td>
  <td> <a href="javascript:c(10)">10</a></td>	
  <td> <a href="javascript:c(11)">11</a></td>
</tr>
<tr>
  <td> <a href="javascript:c(12)">12</a></td>
  <td> <a href="javascript:c(13)">13</a></td>
  <td> <a href="javascript:c(14)">14</a></td>
  <td> <a href="javascript:c(15)">15</a></td>
  <td> <a href="javascript:c(16)">16</a></td>
  <td> <a href="javascript:c(17)">17</a></td>	
  <td> <a href="javascript:c(18)">18</a></td>
</tr>
<tr>
  <td> <a href="javascript:c(19)">19</a></td>
  <td> <a href="javascript:c(20)">20</a></td>
  <td> <a href="javascript:c(21)">21</a></td>
  <td> <a href="javascript:c(22)">22</a></td>
  <td> <a href="javascript:c(23)">23</a></td>
  <td> <a href="javascript:c(24)">24</a></td>	
  <td> <a href="javascript:c(25)">25</a></td>
</tr>
<tr>
  <td> <a href="javascript:c(26)">26</a></td>
  <td> <a href="javascript:c(27)">27</a></td>
  <td> <a href="javascript:c(28)">28</a></td>
  <td> <a href="javascript:c(29)">29</a></td>
  <td> <a href="javascript:c(30)">30</a></td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
</tr>
</table>
<br>
<textarea rows="7" cols="20" name="dateInfo" class="textbox">
Click on the date to see the events.
</textarea>
</form>
</div>
<%
}
catch(Exception e)
{
   out.println("Error:"+e);
}
%>
</center>
</BODY>
</HTML>