

<html>
    <head>

        <title>JSP Page</title>
	<style>
	button { color:maroon; width:120; }
	div { color:white; font-family:maradona }
	h1 { color:#89adc1; }
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
</script>
</head>
<%@ include file="home.jsp"%> 
<body onload="st()" unload="ste()">
<h1 style="position:absolute;left:200px;">Indian Premier League</h1>
<img name="i" id="i" src="1.jpg" style="float:right" width="300" height="300" onClick="dis()">



            <p>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<div style="position:absolute; left:200px; color:black">
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

</div>
    </body>
</html>
