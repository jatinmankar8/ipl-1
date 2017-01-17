<HTML>
<HEAD>

<script language="javascript">
			function charOnly(myfield, e) 
			{
				 var key;
				 var keychar;
				 if (window.event)
					key = window.event.keyCode;
				 else if (e)
					key = e.which;
				 else
					return true;
				 keychar = String.fromCharCode(key);
				 if ((key==null) || (key==0) || (key==8) || (key==9) || (key==13) || (key==27) )
					return true;
				 else if ((("abcdefghijklmnopqrstuvwxyz. ABCDEFGHIJKLMNOPQRSTUVWXYZ").indexOf(keychar) > -1))
					return true;
				 else
					return false;
			}

			function numbersOnly(myfield, e, dec) 
			{
				 var key;
				 var keychar;
				 if (window.event)
					key = window.event.keyCode;
				 else if (e)
					key = e.which;
				 else
					return true;
				 keychar = String.fromCharCode(key);
				 if ((key==null) || (key==0) || (key==8) || (key==9) || (key==13) || (key==27) )
					return true;
				 else if ((("0123456789").indexOf(keychar) > -1))
					return true;
				 else
					return false;
			}
			
			function checkemail(email)
			{
				var reg = /^([A-Za-z0-9_\-\.])+[\@]([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
				if(reg.test(email.value) == false) {
					alert('Invalid Email Address');
					email.value="";
					
				}
			}

			function chklength(e){
				if(e.value<30)
					alert("age between 30 and 60");
			}


				function chk(e){
				if(e.value==null || e.value=="" )
					{
					e.focus();
					alert("enter value for all fields");
					}
			}
		</script>


<TITLE>CREDIT</TITLE>
<style type="text/css">

.blue-page a{color: #182775;}


.blue-page .main-nav{
	width: 980px;
	border: 1px solid #fff;
	background: url("main-nav-blue-page.gif") repeat-x;
}

.blue-page .main-nav{
	width: 980px;
	border: 1px solid #fff;
	background: url("main-nav-blue-page.gif") repeat-x;
}
.main-nav div{
	position: relative;
	float: left;
	left: 42%;
	text-align: center;
}
.main-nav ul{
	position: relative;
	float: left;
	left: -50%;
	text-align: center;
}

.rt { margin-left:100px;}


.com-rt {
margin-left:400px;}

.main-nav p, .main-nav a{float: left; margin-left:1px;}
.main-nav a{
	height: 20px;
	font-weight: bold;
	color: #fff;
	text-transform: uppercase;
	text-decoration: none;
	background: url("main-nav-default.gif") repeat-x;
	padding: 9px 19px 0;
}
.blue-page .main-nav a{
	background: url("main-nav-blue-page.gif") repeat-x;
	padding: 7px 20px 0;
	height: 22px;
}
.main-nav a:hover{background-position: 0 100%;}

.blue-page .main-nav .active a, .blue-page .main-nav a:hover{
	background-position: 0 100%;
	color: #203885;
}

.content-column{
	width:639px;
	margin:0 0 0 5px;
	display:inline;
	float:left;
	background:url("bg-content-column-t.gif");
}
.content-column .frame{
	background:url("bg-content-column-b.gif") no-repeat 0 100%;
	width:639px;
	overflow:hidden;
	padding:0 0 15px;
}

.content-column h2{
	margin:0;
	line-height:50px;
	width:639px;
	background:url("bg-h2.gif");
	text-indent:22px;
	font-size:14px;
	color:#00316D;
	text-transform:uppercase;
}
.blue-page .content-column h2{
	color: #00316d;
}
.separator{
	width:631px;
	height:15px;
	margin:0 auto;
	background:url("bg-separator.gif");
}

.hide{
      display: none;
}

.show{
      display: block;
}

.l_sch{float:left; padding-left:6px;}
.r_sch{float:right; padding-right:6px;}


 p.aligned-right {border-style: solid;
		  background-color: black;
                  float: left;}
 .clearleft {clear:left;}

</style>
</HEAD>
<body class="blue-page">
<div class="main-nav">
<div>
<ul><p><a href="/home.html" title="Home" >Home</a></p>
<p class="active"><a href="/scores-and-schedule.html" title="Scores & Schedule" >Scores & Schedule</a></p>
<p><a href="/statistics.html" title="Stats" >Stats</a></p>
<p><a href="/teams.html" title="Teams" >Teams</a></p>
<p><a href="/IPL-players.html" title="Players" >Players</a></p>
<p><a href="/latest-news.html" title="News" >News</a></p>

<p><a href="/latest-videos.html" title="Videos" >Videos</a></p>
<p class="last"><a href="/latest-photos.html" title="Photos" >Photos</a></p>
</ul>						

</div>
</div>

<%@ page import="java.sql.*,java.util.*" %>

<%
      
try
{
String match=request.getParameter("tabm");
String category=request.getParameter("tabsel");
String number=request.getParameter("tabnum");
String avail="0";
int cost=0;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:webtech2");
Statement st=c.createStatement();
ResultSet rs=st.executeQuery("select * from tickets where match='"+match+"' ");

//out.println("<div><p class='aligned-right'><img src='tick.gif' width='400px' height='500px'></p><br class='clearleft' ></div>");


//out.println(match);
//out.println(category);
//out.println(number);

while(rs.next())
{
	String s1=rs.getString("match");
		
		if(category.equals("cat1"))
			{
     			 avail=rs.getString("cat1");
			 cost=1000;
			}
		if(category.equals("cat2"))
			{
     			avail=rs.getString("cat2");
			cost=500;
			}
		if(category.equals("cat3"))
			{
     			avail=rs.getString("cat3");
			cost=250;
			}

//out.println(cost);
//out.println(avail);
int availnum=Integer.parseInt(avail);
int num=Integer.parseInt(number);
int total=cost*num;
int remain=availnum-num;
%>

<div id="twocolumn">
<div class="content-column">
<div class="frame">
<h2>Tickets for IPL</h2>
<div class="separator">
</div>
<center><font color="purple" face=""  size="6">TICKET DETAILS<br><br>
</font></center>
<div class="rt">
<%


if(availnum>=num)
{
out.println("<form action='pay.jsp'  method='post'>");
out.println("<br><pre>MATCHID:			<input type='text' name='match' value='"+match+"'> ");
out.println("<br>CATEGORY:			<input type='text' name='cat' value='"+category+"' >");
out.println("<br>NUMBER OF TICKETS:		<input type='text' name='num' value='"+num+"'>");
out.println("<br>TOTAL AMOUNT:			<input type='text' name='total' value='"+total+"'>");
out.println("<br>AVAIL:			<input type='text' name='remain' value='"+remain+"'>");
out.println("<br>");

out.println("NAME:			<input type='text' name='name' onkeypress='return charOnly(this,event)' onblur='chk(this)'  ><br>");
out.println("EMAIL:			<input type='text' name='email' onblur='checkemail(this)' onblur='chk(this)'   ><br>");
out.println("ADDRESS:		<input type='text' name='addr'><br>");
out.println("MOBILE:			<input type='text' name='phone' onkeypress='return numbersOnly(this,event)' onblur='chk(this)'   ><br>");

out.println("CREDIT CARD INFO:<br>");
out.println("CARD :			<input type='text' name='card' onkeypress='return charOnly(this,event)' onblur='chk(this)'  ><br>");
out.println("NAME ON CARD:		<input type='text' name='cname' onkeypress='return charOnly(this,event)' onblur='chk(this)'   ><br>");
out.println("NUMBER:			<input type='text' name='cno' onkeypress='return numbersOnly(this,event)'  onblur='chk(this)'  ><br>");
out.println("					<input type='submit' value='pay'></pre><br>");
out.println("</form>");
}

else
{
out.println("TICKETS NOT AVAILABLE<br>");
out.println("ONLY"+availnum+"TICKETS MORE");
}
}

st.close();
c.close();
}
catch(Exception e)
{
   out.println("Error:"+e);
}
%>

</div>
</div>
</div>
</div>
</div>
</BODY>
</HTML>