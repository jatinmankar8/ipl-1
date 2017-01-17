<html>
<head>
<style>
button { background-color:purple }
</style>
<script>
nam=new Array();
var i=0,j=0;
function f()
{
   i=1;
   var na='a1.jpg';
	
   	document.getElementById('i').src=na; 
	document.getElementById('i').width='400';
 	document.getElementById('i').height='400';

}
function p()
{
    
	if(j==0)
	{
	document.getElementById('i').src='w.gif';
	document.getElementById('i').width='50';
	document.getElementById('i').height='50';

	j=1;
	setTimeout("n()",3000);
	}
     else
	{
    if(i>0)
	{
  var na='a'+i+'.jpg';
 document.getElementById('i').src=na;
 document.getElementById('i').width='400';
 document.getElementById('i').height='400';
 j=0;
 i--;
}
}
}
function n()
{
    i++;
  var c=i;
	if(j==0)
	{
	document.getElementById('i').src='w.gif';
	document.getElementById('i').width='50';
	document.getElementById('i').height='50';

	j=1;
	setTimeout("n()",3000);
	}
else
{
 if(i<25)
	{
  var na='a'+c+'.jpg';
 document.getElementById('i').src=na;
 document.getElementById('i').width='400';
 document.getElementById('i').height='400';
}
else
{
i--;
var na='a'+i+'.jpg';
 document.getElementById('i').src=na;
 document.getElementById('i').width='400';
 document.getElementById('i').height='400';

}
j=0;
}
}
function e()
{
    var na='a25.jpg';
	i=25;
       document.getElementById('i').src=na; 
	document.getElementById('i').width='400';
      document.getElementById('i').height='400';

}
</script>
</head>
<body>
<%@ include file="home.jsp"%><br><br><br><br><br><br><br><br><br>,br>
<center>
<form>
<input type="button" value="first" onClick="f()">
<input type="button" value="Previous" onClick="p()">
<input type="button" value="Next" onClick="n()">
<input type="button" value="End" onClick="e()">
</form>
<br><br>
<p><img src="a26.jpg" name="i" id="i"><p>
</center>
</body>
</html>