<html>
<head>
<style>
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
  var c=i%25;
  var na='a'+c+'.jpg';
 document.getElementById('i').src=na;
 document.getElementById('i').width='300';
 document.getElementById('i').height='300';
}
</script>
</head>
<body onload="st()" unload="ste()">
<h1 style="position:absolute;left:200px;">Indian Premier League</h1>
<img name="i" id="i" src="1.jpg" style="float:right" width="300" height="300" onClick="dis()">
</body>
</html>
