<html>
    <head>
        <title>JSP Page</title>
        <style>
	input { width:120px; color:black; background-image:url(click.gif) }
	div { color:white; font-family:maradona }
    th { color:maroon; font-family:Copperplate Gothic Light; font-size:16pt;}
    td { color:navy; font-family:sans-serif }
    </style>
<style>
    div { color:green; position:absolute;background-color:white;  }
   
</style>
<script>
    function re(te)
    {
         document.getElementById('val').value=te;
    }
   
function blinking_header()
{
if (!document.getElementById('blink').style.color)
	{
	document.getElementById('blink').style.color="green";
	}
if (document.getElementById('blink').style.color=="green")
	{
	document.getElementById('blink').style.color="black";
	}
else
	{
	document.getElementById('blink').style.color="green";
	}
timer=setTimeout("blinking_header()",100);
}

function stoptimer()
{
clearTimeout(timer);
}
</script>
    </head>
    <body onload="blinking_header()" onunload="stoptimer()"><br><br>
	<%@ include file="home.jsp" %>
        <%// out.println("<img src='666.jpg' height=100px width:150px style='left:500px;'>");%>
       
        <%@ page import="java.sql.*" %>
        <%try
{
           
            String s1;
            String s2;
            int i=1;
            out.println("<a href='newtopic.jsp' target='_self' id='blink' style='float:right'>Create new topic:</a>");
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection c=DriverManager.getConnection("jdbc:odbc:webtech1");
       Statement st=c.createStatement();
       ResultSet rs=st.executeQuery("Select * from main");
      int i1=1;
       out.println("<br><br<center><span style='position:absolute; left:590; top:190;'>");
	out.println("<img src='112.jpg' style='position:absolute; left:-580; top: -120' width=200></img></span></center>");
       // filter:glow(strength=3,color=red)'>FORUM TOPICS</span></center>");
        out.println("<span style='position:absolute;top:270;left:250'>");
        out.println("<form name='f' method='get' action='a.jsp'>");
        out.println("<input type='hidden' id='val' name='val' value='1'>");
        out.println("<br><br><table border='1' cellspacing='4' cellpadding='27'><tr><th>No</th><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>Created by</th><th>Created on</th><th>Count</th><th>View Comments</th></tr>");
       while(rs.next())
       {
           out.println("<tr>");
            i=rs.getInt("id");
            s2="top"+i;
            s1=rs.getString("title");
            out.println("<td>"+i1+"</td>");
            out.println("<td>"+s1+"</td>");
            out.println("<td>"+rs.getString("name")+"</td>");
            out.println("<td>"+rs.getString("date")+"</td>");

                Connection c1=DriverManager.getConnection("jdbc:odbc:webtech1");
                Statement st1=c.createStatement();
                ResultSet rs1=st1.executeQuery("Select * from "+s2);
                int count=0;
                while(rs1.next())
                    {
                    count++;
                    }
          c1.close();
          st1.close();
          out.println("<td>"+count+"</td>");
          out.println("<td><input type='image' name="+s2+" id="+s2+" value='View Topic' onClick='re(this.id)'height=21></td></tr>");
          //out.println("<div><p><button name=s2 id=s2 onClick='re(this.value)' value=s2 type='submit'>");
            
            
            i1++;
       }
        st.close();
        c.close();
        out.println("</table>");
        out.println("</form>");
	  
      
 }
      catch(Exception e)
      {
         out.println(e);
      }

%>
    </body>
</html>
