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

<div class="S9">
<br>
<form method="post" action="" name="Calendar">
EVENT LIST
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

	if(y==month)
        {
            q="TEAM1:"+s1+"\n\nTEAM2:"+s2+"\n\nVENUE:"+s3;
		 out.println("<input type='hidden'  id='"+x+"' value='"+q+"'>");
		 m_a[x]=x;
           continue;
         }


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