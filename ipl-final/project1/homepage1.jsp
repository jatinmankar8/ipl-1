

<html>
    <head>

        <title>JSP Page</title>
	<style>
	button { color:maroon; width:120; }
	div { color:white; font-family:maradona }
	h1 { color:#89adc1; }


 td { color:white;}

div.S9    { color:black;
		position: absolute;
           top:595px; left: 1000px;
           height: 300px; width: 250px;
           background-color:#99BFFb ;
           z-index: 7; font-family:Berlin Sans FB;
		}

a {
	text-decoration:none;
	color:white;
   }

.textbox { 
		background-color: #001f7f;
		color: WHITE; 
          }
.h { position:absolute; left:200; top:50 }
.z1 { position: absolute;
	color:white;
	left: 0px;
	background: url("main-nav-blue-page.gif") repeat-x;
	height: 70px;
	width:190px;
	border: 1px solid #fff;
	text-align: center;
	text-transform: uppercase;
	font-weight: bold;
	text-decoration:none;

}

a:hover{
	
	color: #89adc1;
}

.hide1{
      display: none;
}

.show1{
      display: block;
}

.fix {background-attachment: fixed;
}
.s1
{
border-style: solid;
border-color: #008fff;
top:25;
left:25;
position:absolute;
}



       </style>
<script>
var i=1;
function st()
{
  setInterval("dis()",1500);
}
function ste()
{
  clearInterval();
}
function dis()
{
  i++;
  var c=i%26;
  var na='a'+c+'.jpg';
 document.getElementById('i').src=na;
 document.getElementById('i').width='300';
 document.getElementById('i').height='300';
}

	menu = new Array();
	for(var j=0;j<4;j++)
		menu[(j+1)]='hide1';

		function showHide11(theid){
		var s = document.getElementById(theid);
		if(menu[theid] != 'show1') {
		   s.className = 'show1';
		   menu[theid] = 'show1';
		}
		}

		function showHide12(theid){
		var s1 = document.getElementById(theid);
		{
		   s1.className = 'hide1';
		   menu[theid] = 'hide1';
		}	
		}

  
 
function c(i)
    {	
		var s=i;
		//alert(s);
		var n=document.getElementById(s).value;
		document.Calendar.dateInfo.value = n;		
    }
</script>
</head>
<%@ include file="home.jsp"%> 
<body onload="st()" unload="ste()">
<h1 style="position:absolute;left:200px;">Indian Premier League</h1><br><br>

<img name="i" id="i" src="1.jpg" style="float:right" width="300" height="300" onClick="dis()">

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
		out.println("<input type='hidden'  id='"+l1+"' value='no event to display'>");
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

            <p>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<div style="position:absolute; top:300; left:250px; color:BLACK; width:650px; text-align:justify; ">
<p >The league is scheduled to start in April 2008 and will last for 44 days, involving
59 matches. The prize money for the league will be around Rs 13 crore (US $3million).
Each team will have a pool of 16 players, of whom eight can be international and four
from the Under-22 level or from the catchment area where the team is based.
<br>
<p>The governing council consists of Chairman and Commissioner Lalit Modi, Sunil
Gavaskar, MAK Pataudi and Ravi Shastri, Rajiv Shukla, Chirayu Amin, Inderjit Singh
Bindra and Arun Jaitley. Although it is going to be a franchise system, some foreign
players have already been contracted by the BCCI to play in the IPL.
<br>
Prize Money Comparison
The BCCI?s Indian Premier League will feature eight teams / franchises in its inaugural
year, who will compete for $3m in prize money, the world?s richest domestic cricket
event.
<br>
<br>
<p>The 2006 Stanford 20/20 Cricket Tournament in the Caribbean had offered prize money
of $1m to the winning team half of the total prize money pool.
<br>
<br>
<p>"England?s Twenty20 Cup winner receives 42,000 pounds (approx. US$84,000), South
Africa?s Pro20 champions R350,000 (approx. US$47,000) and Australia?s KFC Twenty20 Big
Bash winner gets A$32,000 (approx. US$29,000)."


<br><p>Barring the Stanford 20/ 20, the Twenty20 Leagues in other countries, are not
privately owned, they are merely existing county/ state and provincial teams
re-packaged by their governing bodies and are funded by domestic cricket bodies in
Australia, England and South Africa.
BCCI unveils Indian Premier League
<br>
<p><u>NEW DELHI: (14th September 2007)</u>
The Board of Control for Cricket in India (BCCI) on Thursday launched the Indian
Premier League (IPL) on the lines of football?s English Premier League and the National
Basketball League (NBA) of the U.S.
<br>
<p>In an apparent reaction to Essel Group?s Indian Cricket League (ICL) that has
generated much debate, the BCCI paraded Australia bowling great Glenn McGrath and
former New Zealand captain Stephen Fleming in the Capital to support the IPL. India?s
captain Rahul Dravid, Sachin Tendulkar, Sourav Ganguly and Anil Kumble were also part
of the glittering launch attended by the President of the International Cricket Council
(ICC), Ray Mali, and chiefs of various cricket boards.
<br>
<p><u>Big prize money</u><br>
On the occasion, the BCCI and the ICC also unveiled a $5 million prize money Champions
Twenty20 League. The added incentive of being part of the IPL will be the chance to
play in the Champions Twenty20 League to be organised by the ICC.
<br>
<p>Just as in the UEFA Champions League, the winner and runner-up team of the IPL will
qualify for the Champions League, to be played in October 2008. For a start, domestic
Twenty20 leagues would be conducted by the cricket boards of Australia, South Africa
and England, to have an eight-team Champions League.
<br>
<p>The IPL, India?s domestic Twenty20 league will debut in April 2008 with 59 matches
spread over 44 days. The IPL will primarily be played under lights with play beginning
at 5 p.m. Two matches will be scheduled each day.
<br>

</div>.
    </body>
</html>
