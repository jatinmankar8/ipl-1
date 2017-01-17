<html>
<head>
<script>
nam=new Array();
var i=0;
nam=new Array();
function f()
{
   i=1;
   s="a"+i+".jpeg";
   document.getElementById('i').src=s; 

}
function p()
{
    i--;
	s="a"+i+".jpeg";
    if(i>-1)
    document.getElementById('i').src=s; 
}
function n()
{
    i++;
	s="a"+i+".jpeg";
    if(i<25)
    document.getElementById('i').src=s; 
}
function e()
{
    i=25;
	s="a"+i+".jpeg";
   document.getElementById('i').src=s; 
}
</script>
</head>
<body>
<% out.println("photos");%>
<center>
<form>
<input type="button" value="first" onClick="f()">
<input type="button" value="Previous" onClick="p()">
<input type="button" value="Next" onClick="n()">
<input type="button" value="End" onClick="e()">
</form>
<img src="11.jpeg" name="i" id="i"></img>
</center>
</body>
</html>