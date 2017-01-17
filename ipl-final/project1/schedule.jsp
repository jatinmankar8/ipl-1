<HTML>
<HEAD>
    <style type="text/css">
 td { color:white;}
div.S1    {position:absolute;
            left:200px;
            top:150px;
           height: 600px; width: 800px;
           color: white;
           background-color: blue;
           z-index: 5;
		background-image:url("1.bmp");}

div.S2    { color:white;
		position: absolute;
           top:249px; left: 290px;
           height: 360px; width: 610px;
           background-color: black;
           z-index: 7;}

div.S3  {position: absolute;
        bottom:302px; left: 30px;
         height: 62px; width: 90px;
         background-image:url("ipllogo.jpg");
         z-index: 1;}

</style>


<script>
  
 
function c(i)
    {	
		
		var s=i;
		var n=document.getElementById(s).value;
				var y1= n.indexOf('.');
            		var y2= n.lastIndexOf('.');
                     	var y3=n.length;

				var z1=n.substring(0,y1);
                        var z2=n.substring(y1+1,y2);
                        var z3 =n.substring(y2+1,y3);
				var f=z1+" ";
				f=f+z2;
				f=f+z3;
				alert(f);
			
			    document.Calendar.dateInfo.value = f;	
    }



  </script>


<TITLE>CREDIT</TITLE>
</HEAD>
<body><BR>
<center>
<%@ include file="home.jsp" %>
<%@ page import="java.sql.*,java.util.*" %>

<%

Calendar cal = new GregorianCalendar();
       int month = cal.get(Calendar.MONTH);
       int year = cal.get(Calendar.YEAR);
       int day = cal.get(Calendar.DAY_OF_MONTH);
       String ss= day +"/"+(month + 1) + "/" + year;
	String q="";
	int i=1;
try
{

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection c=DriverManager.getConnection("jdbc:odbc:webtech2");
       Statement st=c.createStatement();
   
       ResultSet rs=st.executeQuery("select * from sched");%>

<div class="S2">
<br>
<form method="post" action="" name="Calendar">
<textarea rows="7" cols="35" name="dateInfo">
Click on the underlined date to see the events and their scheduled times.
</textarea>
<table border="1" class="table_txt" style="width: 610px; border-collapse: collapse; border-color: #cfcfcf">


  <% month++;
   while(rs.next())
   {
     String s=rs.getString("date");
     String s1=rs.getString("team1");
     String s2=rs.getString("team2");
     String s3=rs.getString("venue");
     int de= s.indexOf('/');
     int de2= s.lastIndexOf('/');
     int de3=s.length();

     
     String dat=s.substring(0,de);
     String mon=s.substring(de+1,de2);
     String yea=s.substring(de2+1,de3);
     
     	int x =Integer.parseInt(dat);
	int y =Integer.parseInt(mon);
     	int z =Integer.parseInt(yea);

    if(y>=month)
    {
      if(y==month)
          {
              if(x>=day)
              {
                	q=s+"."+s1+s2+"."+s3;
		    	out.println("<input type='hidden'  id='"+x+"' value='"+q+"'>");
			i++;
               }
               continue;
           }
			
            q=s+"."+s1+s2+"."+s3;
		out.println("<input type='hidden'  id='"+x+"' value='"+q+"'>");
		i++;
	}


   }


 out.println("<br><input type='button' value='show' onclick='c(13)'>");
	out.println("<br>");
 out.println("</table></form>");
}
catch(Exception e)
{
   out.println("Error:"+e);
}
%>
</center>
</BODY>
</HTML>