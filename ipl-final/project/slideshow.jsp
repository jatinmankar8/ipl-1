<html>
<head>
<style>
h1 { color:#89adc1 }
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
 document.getElementById('i').width='400';
 document.getElementById('i').height='400';
}
</script>
</head>
<body onload="st()" unload="ste()">
<h1>Indian Premier League</h1>
<img name="i" id="i" src="1.jpg" style="float:right" widhth="400" height="400" onClick="dis()">
</body>
</html>
