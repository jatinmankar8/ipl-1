


<HTML>
<HEAD>
<TITLE>CREDIT</TITLE>
</HEAD>
<body><BR>
  
    <%@ include file="home.jsp" %>

<%@ page import="java.sql.*,java.util.*,java.lang.*" %>

<%
int one=1;
int two=100;

try
{

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection c=DriverManager.getConnection("jdbc:odbc:w1");
       Statement st=c.createStatement();
       ResultSet rs=st.executeQuery("select * from sched");
  
 //out.println("<marquee>  <b><br><br><br><br> <b><br><br><p style=' font-size:37pt; color:#abee34;  font-family:Arial Rounded MT Bold;' >TEAMS</style></p></b></marquee>");

  while(rs.next())
   {
         
      String ss=rs.getString("id");
      int a=Integer.parseInt(ss);
if(a==1)
{ out.println("<table style=' position:absolute; left:400px; top:300px;  font-family:Copperplate Gothic Light;color:blue;'>");
   out.println("<tr>");

     String s=rs.getString("date");
     String s1=rs.getString("image");
     String s2=rs.getString("team1");
     String s4=rs.getString("won1");
     String s5=rs.getString("lost1");
     String s8=rs.getString("score");
      float i1=Integer.parseInt(s4);
     float i2=Integer.parseInt(s5);
     float i3=(i1-i2);
     float i4=(i3/10);
     String s9=String.valueOf(i4);

int z1=Integer.parseInt(s4);
int z2=Integer.parseInt(s5);
int z3=(z1+z2);
String s10=String.valueOf(z3);
     
out.println("<tr><td rowspan=4><a href='myteam.jsp#pl0'><img src='chsu.GIF'></img></a></td>");
out.println("<th><h4>TEAM:</h4></th>");
      out.println("<td><h3>"+s2+"</h3></td>");
       //out.println("<td>"+s3+"</td>");

 out.println("<tr><th><h4>MATCHES PLAYED:</h4></th>");
         out.println("<td><h3>"+s10+"</h3></td></tr>");

       out.println("<tr><th><h4>MATCHES WON:</h4> </th>");
        out.println("<td><h3>"+s4+"</h3></td></tr>");
    
         out.println("<tr><th><h4>RATE:</h4></th>");
         out.println("<td><h3>"+s9+"</h3></td></tr>");
         
         out.println(" </style></table>");

out.println("<img style='position:absolute; left:1000px; top:300px;  width:160px;height:100px; ' src='m1.GIF'>");

out.println("<img style='position:absolute; left:1200px; top:300px;  width:160px;height:100px; ' src='jk.GIF'>");

         out.println("<br><br>");
        
}

if(a==2)
{ out.println("<table style='position:absolute; left:400px; top:500px;font-family:Copperplate Gothic Light;color:#ffcc33;'>");
   out.println("<tr>");

     String s=rs.getString("date");
  
     String s2=rs.getString("team1");
     String s4=rs.getString("won1");
     String s5=rs.getString("lost1");
     String s8=rs.getString("score");
      float i1=Integer.parseInt(s4);
     float i2=Integer.parseInt(s5);
     float i3=(i1-i2);
     float i4=(i3/10);
     String s9=String.valueOf(i4);
int z1=Integer.parseInt(s4);
int z2=Integer.parseInt(s5);
int z3=(z1+z2);
String s10=String.valueOf(z3);

out.println("<tr><td rowspan=4><a href='myteam.jsp#pl1'><img src='four.GIF'></img></a></td>");
out.println("<th><h4>TEAM:</h4></th>");
      out.println("<td><h3>"+s2+"</h3></td>");
       //out.println("<td>"+s3+"</td>");
 out.println("<tr><th><h4>MATCHES PLAYED:</h4></th>");
         out.println("<td><h3>"+s10+"</h3></td></tr>");
       out.println("<tr><th><h4>MATCHES WON:</h4> </th>");
        out.println("<td><h3>"+s4+"</h3></td></tr>");
   
         out.println("<tr><th><h4>RATE:</h4></th>");
         out.println("<td><h3>"+s9+"</h3></td></tr>");
         //out.println("<img src="+s1+"/>");
out.println("<img style='position:absolute; left:600px; top:20px; width:160px;height:100px; ' src='ma.GIF'>");
out.println("<img style='position:absolute; left:800px; top:20px; width:160px;height:100px; ' src='nik.GIF'>");

         out.println(" <hr></style></table>");
         out.println("<br><br>");
        // out.println("<img src="+s1+"/>");
}
      if(a==3)
{
          out.println("<table style='position:absolute; left:400px; top:700px;font-family:Copperplate Gothic Light;color:#9999cc'> ");
   out.println("<tr>");
     String s=rs.getString("date");
     String s1=rs.getString("image");
     String s2=rs.getString("team1");
     String s4=rs.getString("won1");
     String s5=rs.getString("lost1");
     String s8=rs.getString("score");
      float i1=Integer.parseInt(s4);
     float i2=Integer.parseInt(s5);
     float i3=(i1-i2);
     float i4=(i3/10);
     String s9=String.valueOf(i4);
int z1=Integer.parseInt(s4);
int z2=Integer.parseInt(s5);
int z3=(z1+z2);
String s10=String.valueOf(z3);

out.println("<tr><td rowspan=4><a href='myteam.jsp#pl2'><img src='one.GIF'></img></a></td>");
out.println("<th><h4>TEAM:</h4></th>");
      out.println("<td><h3>"+s2+"</h3></td>");
       //out.println("<td>"+s3+"</td>");
 out.println("<tr><th><h4>MATCHES PLAYED:</h4></th>");
         out.println("<td><h3>"+s10+"</h3></td></tr>");
       out.println("<tr><th><h4>MATCHES WON:</h4> </th>");
        out.println("<td><h3>"+s4+"</h3></td></tr>");
  
         out.println("<tr><th><h4>RATE:</h4></th>");
         out.println("<td><h3>"+s9+"</h3></td></tr>");
         //out.println("<img src="+s1+"/>");
out.println("<img style='position:absolute; left:600px; top:10px; width:160px;height:100px; ' src='m.gif'>");
out.println("<img style='position:absolute; left:800px; top:10px; width:160px;height:100px; ' src='pep1.GIF'>");

         out.println(" <hr></style></table>");
         out.println("<br><br>");
}
     
if(a==4)
{
   
          out.println("<table style='position:absolute; left:400px;top:900px;font-family:Copperplate Gothic Light;color:#FF0000'>");
   out.println("<tr>");
     String s=rs.getString("date");
     String s1=rs.getString("image");
     String s2=rs.getString("team1");
     String s4=rs.getString("won1");
     String s5=rs.getString("lost1");
     String s8=rs.getString("score");
      float i1=Integer.parseInt(s4);
     float i2=Integer.parseInt(s5);
     float i3=(i1-i2);
     float i4=(i3/10);
     String s9=String.valueOf(i4);
int z1=Integer.parseInt(s4);
int z2=Integer.parseInt(s5);
int z3=(z1+z2);
String s10=String.valueOf(z3);

out.println("<tr><td rowspan=4><a href='myteam.jsp#pl3'><img src='dd.GIF'></img></a></td>");
out.println("<th><h4>TEAM:</h4></th>");
      out.println("<td><h3>"+s2+"</h3></td>");
       //out.println("<td>"+s3+"</td>");
 out.println("<tr><th><h4>MATCHES PLAYED:</h4></th>");
         out.println("<td><h3>"+s10+"</h3></td></tr>");
       out.println("<tr><th><h4>MATCHES WON:</h4> </th>");
        out.println("<td><h3>"+s4+"</h3></td></tr>");
   
         out.println("<tr><th><h4>RATE:</h4></th>");
         out.println("<td><h3>"+s9+"</h3></td></tr>");
         //out.println("<img src="+s1+"/>");
out.println("<img style='position:absolute; left:600px; top:30px; width:160px;height:100px; ' src='rad.GIF'>");
out.println("<img style='position:absolute; left:800px; top:30px; width:160px;height:100px; ' src='sam.GIF'>");

         out.println(" <hr></style></table>");
         out.println("<br><br>");
}
if(a==5)
{
          out.println("<table style='position:absolute; left:400px;top:1100px;font-family:Copperplate Gothic Light;color:#006699'>");
   out.println("<tr>");
     String s=rs.getString("date");
     String s1=rs.getString("image");
     String s2=rs.getString("team1");
     String s4=rs.getString("won1");
     String s5=rs.getString("lost1");
     String s8=rs.getString("score");
      float i1=Integer.parseInt(s4);
     float i2=Integer.parseInt(s5);
     float i3=(i1-i2);
     float i4=(i3/10);
     String s9=String.valueOf(i4);
int z1=Integer.parseInt(s4);
int z2=Integer.parseInt(s5);
int z3=(z1+z2);
String s10=String.valueOf(z3);

out.println("<tr><td rowspan=4><a href='myteam.jsp#pl4'><img src='seven.GIF'></img></a></td>");
out.println("<th><h4>TEAM:</h4></th>");
      out.println("<td><h3>"+s2+"</h3></td>");
       //out.println("<td>"+s3+"</td>");
 out.println("<tr><th><h4>MATCHES PLAYED:</h4></th>");
         out.println("<td><h3>"+s10+"</h3></td></tr>");
       out.println("<tr><th><h4>MATCHES WON:</h4> </th>");
        out.println("<td><h3>"+s4+"</h3></td></tr>");
     
         out.println("<tr><th><h4>RATE:</h4></th>");
         out.println("<td><h3>"+s9+"</h3></td></tr>");
         //out.println("<img src="+s1+"/>");
out.println("<img style='position:absolute; left:600px; top:40px; width:160px;height:100px; ' src='tata.GIF'>");
out.println("<img style='position:absolute; left:800px; top:40px; width:160px;height:100px; ' src='ti.GIF'>");

         out.println(" <hr></style></table>");
         out.println("<br><br>");
        // out.println("<img src="+s1+"/>");
}
if(a==6)
{
          out.println("<table style='position:absolute; left:400px;top:1300px;font-family:Copperplate Gothic Light;color:#990000'>");
   out.println("<tr>");
     String s=rs.getString("date");
     String s1=rs.getString("image");
     String s2=rs.getString("team1");
     String s4=rs.getString("won1");
     String s5=rs.getString("lost1");
     String s8=rs.getString("score");
      float i1=Integer.parseInt(s4);
     float i2=Integer.parseInt(s5);
     float i3=(i1-i2);
     float i4=(i3/10);
     String s9=String.valueOf(i4);
int z1=Integer.parseInt(s4);
int z2=Integer.parseInt(s5);
int z3=(z1+z2);
String s10=String.valueOf(z3);

out.println("<tr><td rowspan=4><a href='myteam.jsp#pl5'><img src='eight.GIF' height=100 width=100></img></a></td>");
out.println("<th><h4>TEAM:</h4></th>");
      out.println("<td><h3>"+s2+"</h3></td>");
       //out.println("<td>"+s3+"</td>");
 out.println("<tr><th><h4>MATCHES PLAYED:</h4></th>");
         out.println("<td><h3>"+s10+"</h3></td></tr>");
       out.println("<tr><th><h4>MATCHES WON:</h4> </th>");
        out.println("<td><h3>"+s4+"</h3></td></tr>");
   
         out.println("<tr><th><h4>RATE:</h4></th>");
         out.println("<td><h3>"+s9+"</h3></td></tr>");
         //out.println("<img src="+s1+"/>");
out.println("<img style='position:absolute; left:600px; top:50px; width:160px;height:100px; ' src='so.GIF'>");
out.println("<img style='position:absolute; left:800px; top:50px; width:160px;height:100px; ' src='mr.GIF'>");

         out.println(" <hr></style></table>");
         out.println("<br><br>");
}
 if(a==7)
{
          out.println("<table style='position:absolute; left:400px;top:1500px;font-family:Copperplate Gothic Light;color:#ffd700'>");
   out.println("<tr>");
     String s=rs.getString("date");
     String s1=rs.getString("image");
     String s2=rs.getString("team1");
     String s4=rs.getString("won1");
     String s5=rs.getString("lost1");
     String s8=rs.getString("score");
      float i1=Integer.parseInt(s4);
     float i2=Integer.parseInt(s5);
     float i3=(i1-i2);
     float i4=(i3/10);
     String s9=String.valueOf(i4);
int z1=Integer.parseInt(s4);
int z2=Integer.parseInt(s5);
int z3=(z1+z2);
String s10=String.valueOf(z3);

out.println("<tr><td rowspan=4><a href='myteam.jsp#pl6'><img src='five.GIF' height=100 width=100></img></a></td>");
out.println("<th><h4>TEAM:</h4></th>");
      out.println("<td><h3>"+s2+"</h3></td>");
       //out.println("<td>"+s3+"</td>");
 out.println("<tr><th><h4>MATCHES PLAYED:</h4></th>");
         out.println("<td><h3>"+s10+"</h3></td></tr>");
       out.println("<tr><th><h4>MATCHES WON:</h4> </th>");
        out.println("<td><h3>"+s4+"</h3></td></tr>");
     
         out.println("<tr><th><h4>RATE:</h4></th>");
         out.println("<td><h3>"+s9+"</h3></td></tr>");
         //out.println("<img src="+s1+"/>");
out.println("<img style='position:absolute; left:600px; top:60px; width:160px;height:100px; ' src='kin.GIF'>");
out.println("<img style='position:absolute; left:800px; top:60px; width:160px;height:100px; ' src='ic.GIF'>");

         out.println(" <hr></style></table>");
         out.println("<br><br>");
}

if(a==8)
{
      out.println("<table style='position:absolute; left:400px;top:1700px;font-family:Copperplate Gothic Light;color:#000033'>");
   out.println("<tr>");

     String s=rs.getString("date");
     String s1=rs.getString("image");
     String s2=rs.getString("team1");
     String s4=rs.getString("won1");
     String s5=rs.getString("lost1");
     String s8=rs.getString("score");
      float i1=Integer.parseInt(s4);
     float i2=Integer.parseInt(s5);
     float i3=(i1-i2);
     float i4=(i3/10);
     String s9=String.valueOf(i4);
int z1=Integer.parseInt(s4);
int z2=Integer.parseInt(s5);
int z3=(z1+z2);
String s10=String.valueOf(z3);
     out.println("<tr><td rowspan=4><a href='myteam.jsp#pl5'><img src='three.GIF' height=100 width=100></img></a></td>");
out.println("<th><h4>TEAM:</h4></th>");
      out.println("<td><h3>"+s2+"</h3></td>");
       //out.println("<td>"+s3+"</td>");
 out.println("<tr><th><h4>MATCHES PLAYED:</h4></th>");
         out.println("<td><h3>"+s10+"</h3></td></tr>");
       out.println("<tr><th><h4>MATCHES WON:</h4> </th>");
        out.println("<td><h3>"+s4+"</h3></td></tr>");
     
         out.println("<tr><th><h4>RATE:</h4></th>");
         out.println("<td><h3>"+s9+"</h3></td></tr>");
         //out.println("<img src="+s1+"/>");
out.println("<img style='position:absolute; left:600px; top:70px; width:160px;height:100px; ' src='hdfc.GIF'>");
out.println("<img style='position:absolute; left:800px; top:70px; width:160px;height:100px; ' src='bpl.GIF'>");

         out.println(" <hr></style></table>");
         out.println("<br><br>");
}
   out.println("<p style=' position:absolute; left:1050px; top:200px;font-size:17pt; color:#a20001;  font-family:Book Antiqua;' >SPONSORS</style></p>");
  }
 

}
catch(Exception e)
{
   out.println("Error:"+e);
}
%>

</BODY>
</HTML>