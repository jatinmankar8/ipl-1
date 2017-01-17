
<html>
<head>

<script language="JavaScript" type="text/JavaScript">
	menu = new Array();
	for(var j=0;j<4;j++)
		menu[(j+1)]='hide';
	function showHide(theid)
	{
		var s = document.getElementById(theid);
		if(menu[theid] != 'show') 
		{
		   s.className = 'show';
		   menu[theid] = 'show';
		}
	else
		{
		   s.className = 'hide';
		   menu[theid] = 'hide';
		}
	
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

			function chk(e,alert){
				if(e.value==null || e.value=="" || e.value=="0" )
					{
					e.focus();
					alert("Enter the Number of tickets!!!");
					return false;
					}
			}

function formvalidation(thisform)
{
with (thisform)
{
if (chk(tabnum,"hello")==false) {tabnum.focus(); return false;};
}
}


</script>


<style>

.rt { margin-left:100px;left:200px;}
.com-rt {
margin-left:400px;
left:200px;}

.content-column{top:200px;
	width:639px;
	margin:100 200 0 400px;
	display:inline;
	float:left;
	background:url("bg-content-column-t.gif");
}
.content-column .frame{top:200px;
	background:url("bg-content-column-b.gif") no-repeat 0 100%;
	width:639px;
	overflow:hidden;
	padding:0 0 15px;
}

.content-column h2{
	top:200px;
	margin:0;
	line-height:50px;
	width:639px;
	background:url("bg-h2.gif");
	text-indent:22px;
	font-size:14px;
	color:#00316D;
	text-transform:uppercase;
}
.blue-page .content-column h2{top:200px;
	color: #00316d;
}
.separator{
	width:633px;
	height:15px;
	margin:0 auto;
	background:url("bg-separator.gif");left:200px;
}

.hide{
      display: none;left:200px;
}

.show{
      display: block;left:200px;
}

.twocolumn { margin:200;top:200px;}
.l_sch{float:left; padding-left:6px;left:200px;}
.r_sch{float:right; padding-right:6px;left:200px;}
</style>
	
</head>

<body>

<%@ include file="home.jsp" %>


<div class="content-column">
<div class="frame">
<h2>Tickets for IPL</h2>
<div class="separator">
</div>

<center><font color="purple" face=""  size="6">CHOOSE YOUR VENUE<br><br>
</font></center>
<div class="rt">
<form action="chumma.jsp" method="post" onsubmit="return formvalidation(this)" >
<strong><img src="icon.jpg" style="border:none;" width="15" height="15" onclick="showHide('1')" >MATCHES IN CHENNAI</strong>
<div id="1" class="hide">
<input type="radio" name="tabm"  value="CSKP" CHECKED>Chennai Super Singers vs Punjab Kings<br>
<input type="radio" name="tabm"  value="CSKR" >Chennai Super Singers vs Knight Riders<br>
<input type="radio" name="tabm"  value="CSRC" >Chennai Super Singers vs Royal Challengers<br>
<input type="radio" name="tabm"  value="CSRR" >Chennai Super Singers vs Rajasthan Royals<br>
</div>
<br>
<strong><img src="icon.jpg" style="border:none;" width="15" height="15" onclick="showHide('2')">MATCHES IN KOLKATA</strong>
	<div id="2" class="hide">
<input type="radio" name="tabm"  value="KRDC" >Kolkata Knight Riders vs Deccan Chargers<br>
<input type="radio" name="tabm"  value="KRDD" >Kolkata Knight Riders vs Delhi Daredevils<br>
<input type="radio" name="tabm"  value="KRKP" >Kolkata Knight Riders vs Punjab Kings<br>
<input type="radio" name="tabm"  value="KRRR" >Kolkata Knight Riders vs vs Rajasthan Royals<br>

</div>
<br>
<strong><img src="icon.jpg" style="border:none;" width="15" height="15" onclick="showHide('3')">MATCHES IN MUMBAI</strong>
	<div id="3" class="hide">
<input type="radio" name="tabm"  value="MIRR" >Mumbai Indians vs Rajasthan Royals<br>
<input type="radio" name="tabm"  value="MIRC" >Mumbai Indians vs Royal Challengers<br>
<input type="radio" name="tabm"  value="MICS" >Mumbai Indians vs Chennai Super Kings<br>
<input type="radio" name="tabm"  value="MIKR" >Mumbai Indians vs Knight Riders<br>

</div>
<br>
<strong><img src="icon.jpg" style="border:none;" width="15" height="15" onclick="showHide('4')">MATCHES IN DELHI</strong>
	<div id="4" class="hide">
<input type="radio" name="tabm"  value="DDKP" >Delhi Daredevils vs Knight Riders<br>
<input type="radio" name="tabm"  value="DDMI" >Delhi Daredevils vs Mumbai Indians<br>
<input type="radio" name="tabm"  value="DDCS" >Delhi Daredevils vs Chennai Super Kings<br>
<input type="radio" name="tabm"  value="DDRR" >Delhi Daredevils vs Rajasthan Royals<br>

</div>

</div>
<br>
<br>

<div class="separator">
</div>

<center><font color="purple" face=""  size="6">SELECT CATEGORY<br><br>
</font></center>
<div class="rt">




<input type="radio" name="tabsel"  value="cat1" CHECKED >CORPORATE BOX<br>
<input type="radio" name="tabsel"  value="cat2" >PAVILION TERRACE<br>
<input type="radio" name="tabsel"  value="cat3" >GROUND STAND<br>

</div>
<br>
<br>
<div class="separator">
</div>
<br>
<br>
<div class="rt">
<font color="purple" face="" size="5">NUMBER OF TICKETS : 
</font>
<input type="text" maxlength="2" value="1" name="tabnum" onkeypress="return numbersOnly(this,event)"></div>
<br>
<br>
<div class="com-rt">
<input type="submit"  value="VIEW AVAILABILITY" >
</form>
</div>
</tr>
</table>
</div>
</div>
</div>

</body>
</html>
