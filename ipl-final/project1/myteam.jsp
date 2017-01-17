


<HTML>
<HEAD>
<TITLE>teams12</TITLE>
<style type="text/css">
div.s1 { position:absolute;
         top:90px; left:300px;
         height:50px;width:300px;
         z-index: 1; }
div.s2 { position:absolute;
         top:90px; left:600px;
         height:50px;width: 150px;
          background-color:yellow;}

div.s3 { position:absolute;
         top:200px; left:300px;
         height:50px;width: 150px;
         z-index:3; }
div.s4 { position:absolute;
         top:200px; left:600px;
         height:50px;width: 150px;

         z-index:4; }
div.s5 { position:absolute;
         top:200px; left:300px;
         height:50px;width: 150px;

         z-index:3; }
div.s6 { position:absolute;
         top:20px; left:900px;
         height:50px;width: 150px; }
     </style>
</HEAD>
<body>
<center>
 <%@ include file="home.jsp" %>
<br><br><br><br><br><br><br><br><br><br>
<%@ page import="java.sql.*,java.util.*" %>
<center><h1>Team Members</h1><center>

<%
int i=0;
int j=0;
String hen="pl";
int top2=200;
try
{
 int one=1,k;
 int top1=500,left1=0;
 String two="2";
String a[]= {"CHENNAI SUPER KINGS","RAJASTHAN ROYALS","KINGS X1 PUNJAB","DELHI DAREDEVILS","MUMBAI INDIANS","KNIGHT RIDERS","DECCAN CHARGERS","ROYAL CHALLENGERS"};
 String three="3";
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    ResultSet rs;
    Statement st;

    
  int i1=0; 
for(j=0;j<8;j++)
        {
        left1=400;
        top1=top1+300;
        k=0;
       Connection c=DriverManager.getConnection("jdbc:odbc:web1");
      st=c.createStatement();
      
        rs=st.executeQuery("select * from tabb where teamno="+one+"");
        //out.println("<img src='logo.bmp'></img>");
     while(rs.next())
   {
     
    String s=rs.getString("players");
	out.println("<a name="+hen+j+">");
    if(k>5)
        {
      out.println("<br><span style='position:absolute; left:600; font-family:Arial Rounded MT Bold;'>"+s);
  out.println("</span>");
       }
       else
           {
           
      out.println("<br><span style='position:absolute; left:"+left1+";font-family:Arial Rounded MT Bold;'>"+s);
      out.println("</span>");
      
      }

 out.println("</a>");
    k++;

    }


    out.println("<br><br><hr>");
        st.close();
    c.close();
    one++;
 }

out.println("<br><span style='position:absolute; font-size:17px; left:290; top:650; font-family:Lucida Sans Unicode;color:#de2678;'>"+a[0]);
out.println("</span>");
out.println("<br><span style='position:absolute;  font-size:17px;left:290; top:890; font-family:Lucida Sans Unicode;color:#de2678;'>"+a[1]);
out.println("</span>");
out.println("<br><span style='position:absolute;  font-size:17px; left:290; top:1150; font-family:Lucida Sans Unicode;color:#de2678;'>"+a[2]);
out.println("</span>");
out.println("<br><span style='position:absolute;  font-size:17px;  left:290; top:1400; font-family:Lucida Sans Unicode;color:#de2678;'>"+a[3]);
out.println("</span>");
out.println("<br><span style='position:absolute;   font-size:17px; left:290; top:1700; font-family:Lucida Sans Unicode;color:#de2678;'>"+a[4]);
out.println("</span>");



out.println("<br><span style='position:absolute;   font-size:17px; left:290; top:1990; font-family:Lucida Sans Unicode;color:#de2678;'>"+a[5]);
out.println("</span>");


out.println("<br><span style='position:absolute;   font-size:17px; left:290; top:2220; font-family:Lucida Sans Unicode;color:#de2678;'>"+a[6]);
out.println("</span>");

out.println("<br><span style='position:absolute;   font-size:17px; left:290; top:2550; font-family:Lucida Sans Unicode;color:#de2678;'>"+a[7]);
out.println("</span>");


/*out.println("<br><span style='position:absolute;  font-size:17px;  left:290; top:1900; font-family:Lucida Sans Unicode;color:#de2678;'>"+a[6]);
out.println("</span>");
out.println("<br><span style='position:absolute;  font-size:17px; left:290; top:2000; font-family:Lucida Sans Unicode;color:#de2678;'>"+a[7]);
out.println("</span>");
out.println("<br><span style='position:absolute;  font-size:17px; left:290; top:2900; font-family:Lucida Sans Unicode;color:#de2678;'>"+a[8]);*/
out.println("</span>");
out.println("<br><img span style='position:absolute; left:800; top:480; ' src='chsu.GIF'>");
out.println("</span>");
out.println("<br><img span style='position:absolute; left:800; top:750; ' src='four.GIF'>");
out.println("</span>");
out.println("<br><img span style='position:absolute; left:800; top:1000; ' src='one.GIF'>");
out.println("</span>");
out.println("<br><img span style='position:absolute; left:800; top:1250; ' src='dd.GIF'>");
out.println("</span>");
out.println("<br><img span style='position:absolute; left:800; top:1550; ' src='seven.GIF'>");
out.println("</span>");
out.println("<br><img span style='position:absolute; left:800; top:1800; ' src='five.GIF'>");
out.println("</span>");
out.println("<br><img span style='position:absolute; left:800; top:2100; ' src='three.GIF'>");
out.println("</span>");
out.println("<br><img span style='position:absolute; left:800; top:2400; ' src='eight.GIF'>");
out.println("</span>");



}
catch(Exception e)
{
   out.println("Error:"+e);
}
%>
</CENTER>
</BODY>
</HTML>
