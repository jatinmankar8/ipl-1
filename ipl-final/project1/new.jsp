<html>
<head>



</head>
<body>
<p id="a" >hello</p>
<%String a="hello";%>
<SCRIPT language = "javascript" type="text/javascript">


daySchedule = new Array
daySchedule[1] = a;
daySchedule[2] = "Cohen Bat Mitzvah:  9am - 2pm"
daySchedule[5] = "Friends of Poodles annual dinner and dog ball:  7 - 11pm"
daySchedule[7] = "Community Church Sacred Harp Singing:  7 - 10pm"
daySchedule[9] = "Carson/Kathilde Wedding:  7:30pm"
daySchedule[10] = "Jimmy Buffet Fan Club dinner dance:  6:30 - 11pm"
daySchedule[12] = "Tri-county Divorced Parents board meeting:  11am - 1pm"
daySchedule[14] = "Churchill's 10th Anniversary Bash 7pm - 2am"
daySchedule[17] = "Irish Singles St. Patrick's Day Dance:  7:30pm - midnight"
daySchedule[20] = "Girl Scout Troop #1379 Silent Auction:  6 - 8 pm"
daySchedule[24] = "Thomason/Kirshtein 10th Anniversary Party: 2 - 5 pm"
daySchedule[26] = "St. Mary's Elementary teacher in-service:  8:30am - 4 pm"
daySchedule[28] = "B. Mevitz Camp administrators meeting:  Noon - 2:30 pm"
daySchedule[30] = "3rd Street Mission chili cook-off and gospel singing:  3pm - 10 pm"


function showDate(thisDay)
  {
    document.Calendar.dateInfo.value = daySchedule[thisDay]
  }

</script>


<table border="1">
<tr>
<td align="center" colspan="7"><b>March 2002</b>
</td>
</tr>
<tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td><a href="javascript:showDate(1)">1</a></td>
  <td><a href="javascript:showDate(2)">2</a></td>
</tr>
<tr>
  <td>3</td>	
  <td>4</td>
  <td><a href="javascript:showDate(5)">5</a></td>
  <td>6</td>
  <td><a href="javascript:showDate(7)">7</a></td>
  <td>8</td>
  <td><a href="javascript:showDate(9)">9</a></td>
</tr>
</table>

<form name="Calendar">
<textarea rows="7" cols="35" name="dateInfo">
Click on the underlined date to see the events and their scheduled times.
</textarea>
</form>

</body>
</html>
