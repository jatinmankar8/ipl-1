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

			function chk(e){
				if(e.value<9000000000)
					alert("Enter a valid mobile number");
			}
			function chk1(e){
				if(e.value<1000000000000000)
					alert("Enter a valid credit number");
			}



function checkform ( form )
{
if (form.name.value == "") 
{
alert( "Please enter your Name." );
form.name.focus();
return false ;
}
else if (form.email.value == "") 
{
alert( "Please enter your email address." );
form.email.focus();
return false ;
}
else if (form.addr.value == "") 
{
alert( "Please enter your address." );
form.addr.focus();
return false ;
}
else if (form.phone.value == "") 
{
alert( "Please enter your phone." );
form.phone.focus();
return false ;
}
else if (form.card.value == "") 
{
alert( "Please enter your card name." );
form.card.focus();
return false ;
}
else if (form.cname.value == "") 
{
alert( "Please enter your Name on Card." );
form.cname.focus();
return false ;
}
else if (form.cno.value == "") 
{
alert( "Please enter your Card number." );
form.cno.focus();
return false ;
}
else
return true ;
}
//-->
</script>

		</script>


<TITLE>CREDIT</TITLE>
<style type="text/css">

.rt { margin-left:100px;}


.com-rt {
margin-left:400px;}



.content-column{
	width:639px;
	margin:100 200 0 400px;
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

.hide{
      display: none;
}

.textbox { background-color:#00BFFf; }

</style>
</HEAD>
<body>

<%@ include file="home.jsp" %>
<div class="content-column">
<div class="frame">
<h2>Tickets for IPL</h2>
<div class="separator">
</div>
<center><font color="purple" face=""  size="6">TICKET DETAILS<br><br>
</font></center>
<div class="rt">

<%@ page import="java.sql.*,java.util.*" %>

<%
      
try
{
String match=request.getParameter("tabm");
String category=request.getParameter("tabsel");
String number=request.getParameter("tabnum");
String avail="0";
String eyfen="-";
int cost=0;
int chk=0;

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

if(avail.equals(eyfen))
{
chk=1;
}
//out.println(chk);
if(chk==0)
{
int availnum=Integer.parseInt(avail);
int num=Integer.parseInt(number);
int total=cost*num;
int remain=availnum-num;

%>


<%

if(availnum>=num)
{
out.println("<form action='pay.jsp' name='f1'  method='post' onsubmit='return checkform(this)' >");

out.println("<br><pre>MATCHID:				"+match+"<input type='hidden' name='match' value='"+match+"' class='textbox' > ");
out.println("<br>				<input type='hidden' name='cat' value='"+category+"' class='textbox'>  ");
out.println("<br>NUMBER OF TICKETS:			"+num+"<input type='hidden' name='num' value='"+num+"' class='textbox'>  ");
out.println("<br>TOTAL AMOUNT:				"+total+"<input type='hidden' name='total' value='"+total+"' class='textbox' >  ");
out.println("<br>					<input type='hidden' name='remain' value='"+remain+"' class='textbox'>");
out.println("<br><br><br><br><hr><br><br><br>");

out.println("NAME:			<input type='text' name='name' onkeypress='return charOnly(this,event)'  >  <br>");
out.println("EMAIL:			<input type='text' name='email' onblur='checkemail(this)'  >  <br>");
out.println("ADDRESS:		<input type='text' name='addr'><br>");
out.println("MOBILE:			<input type='text' name='phone' onkeypress='return numbersOnly(this,event)' maxlength='10' onblur='chk(this)' ><br>");

out.println("<br><hr><br><font size='3'><b>CREDIT CARD INFO:<b></font><br>");
//out.println("CARD :			<input type='text' name='card' onkeypress='return charOnly(this,event)' maxlength='16' ><br>");
out.println(" <br><br><br><input type='radio' name='card'  value='visa' checked> <img src='visa.jpg' style='border:none;' width='80' height='45'> <input type='radio' name='card'  value='master'><img src='master.jpg' style='border:none;' width='80' height='45'> <input type='radio' name='card'  value='discover'><img src='discover.jpg' style='border:none;' width='80' height='45'> <input type='radio' name='card'  value='americanexpress'><img src='aex.jpg' style='border:none;' width='80' height='45'> ");
out.println("<br><br><br><br><br><br><br>");
out.println("<br><br><br><br><br><br><br>");
out.println("<br><br><br><br><br><br><br>");
out.println("<br><br><br><br>NAME ON CARD:		<input type='text' name='cname' onkeypress='return charOnly(this,event)'     ><br>");
out.println("NUMBER:			<input type='text' name='cno' onkeypress='return numbersOnly(this,event)'  onblur='chk1(this)' maxlength='16'  ><br>");
out.println("					<input type='submit' value='pay' ></pre><br>");
out.println("</form>");
}

else
{
out.println("SORRY!!!    REQUESTED NUMBER OF TICKETS NOT AVAILABLE<br>");
out.println("ONLY "+availnum+" TICKETS MORE");
}
}
if(chk==1)
{
out.println("REQUEST FOR EXPIRED DATE - PLEASE CHECK MATCH DETAILS<br>");
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