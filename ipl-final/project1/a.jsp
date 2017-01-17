<html>
    <head>
        <title>JSP Page</title>
<style>
    .a { color:purple; text-indent:20pt; font-family:cursive }
    .b { color:#aa544e; font-family:sans-serif}
    span { float:left; display:block }
</style>
<script type="text/javascript">
function blinking_header()
{
if (!document.getElementById('blink').style.color)
	{
	document.getElementById('blink').style.color="purple";
	}
if (document.getElementById('blink').style.color=="purple")
	{
	document.getElementById('blink').style.color="maroon";
	}
else
	{
	document.getElementById('blink').style.color="purple";
	}
timer=setTimeout("blinking_header()",100);
}

function stoptimer()
{
clearTimeout(timer);
}
</script>
    </head>
    <body onload="blinking_header()" onunload="stoptimer()">
      <center> <img src="113.jpg" height="200px" width="300px" style="float:right;"></center>
        <%@ page import="java.sql.*" %>
	  <%@ include file="home.jsp" %>
        <%
try
{       String s1;
        String s2;
        String s3;
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection c=DriverManager.getConnection("jdbc:odbc:webtech1");
       Statement st=c.createStatement();
       String d=request.getParameter("val");
       
       ResultSet rs=st.executeQuery("Select * from "+d);
     // 
       out.println("<span style='position:absolute; top:250px ; left:300px'" );
       while(rs.next())
       {
          s1=rs.getString("comments");
          s2=rs.getString("name");
          s3=rs.getString("dat");
          out.println("<div class='a'><br><p style='position:absolute; left:100'>"+s1+"</p><br><br></div>");
        out.println("<div class='b'>"+s2+"<br><br>"+s3+"<br>");
          out.println("<br><hr>");
          out.println("<br><br>");
          }
            out.println("<h3 id='blink' style='font-family:fantacy'>Post your Comments here</h3><center>");
            out.println("<form action='comm.jsp' method='get'>");
            out.println("<input type='hidden' name='g' value="+d+">");
            out.println(" <table><tr><td>Name:</td><td><input type='text' size=20 name='na' id='na'></td> </tr><tr></tr><tr><td></td><td></td></tr><tr><td>Comments:</td><td><textarea rows='8' cols='30' name='na1' id='na'>Enter your comments here...</textarea></td></tr></table>");
            out.println("<br><br><input type='submit' value='confirm'><input type='reset' value='Reset'></form></center>");
            out.println("</center></div>");
       st.close();
       c.close();
       out.println("</span>");

 }
      catch(Exception e)
      {
         out.println(e);
      }



%>
       

    </body>
</html>