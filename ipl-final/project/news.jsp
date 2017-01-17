<html>

    <head>
       
        <title>Headlines</title>
    <style>
        marquee { font-family:cursive; font-size:small; color:teal}
        .a { color:green; font-size:medium; padding:9px}
        .b { color:black; font-size:small; padding:9px}
        .a1 { color:green; font-size:large; padding:9px}
        .b1 { color:black; font-size:medium; padding:9px}
        .c { color:blue ;}
        .z { color:purple; font-size:small; font-family:fantasy}
        .d { position:absolute; height:200px; width:400px; border:1px ;border-style:inset; border-color:maroon; }
        .e { position:absolute; height:250px; width:400px; border:1px ;border-style:inset; border-color:maroon; }
        .e1 { position:absolute; height:200px; width:450px; border:1px ;border-style:inset; border-color:maroon; }
</style>
<script>
    function w(val)
    {
        //alert(document.getElementById("lab").value);
        document.getElementById("lab").value=val;
    }

var index=1;
var counter = 1;
var flag = true;
var colorArray=("FF0000","FFFF00","00FF00","00FFFF","0000FF","FF00FF");
function startdemo()
{
   
    window.setInterval("rundemo()",150);
}

function rundemo()
{
   if(flag)
       glowtext.filters("glow").strength=index++;
   else
       glowtext.filters("glow").strength=index--;

   if(index==1)flag=!flag;
   if(index==7)flag=!flag;
}


</script>
    </head>
	<%@ include file="home.jsp" %>
    <body onLoad="startdemo()">
       <%@ page import="java.sql.*"%>
       <%
       try
               {
           String im,path2;
           String path1="file:///C:/Documents%20and%20Settings/visual/My%20Documents/NetBeansProjects/final1/web/";
            int t=600,l=100,i=0,j=0,t1=300,l1=300;
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection c=DriverManager.getConnection("jdbc:odbc:webtech3");
            Statement st=c.createStatement();
            ResultSet rs=st.executeQuery("select * from headnews");
            out.println("<form action='det.jsp' method='get'> <input type='hidden' name='lab' id='lab' value='a'>");
            while(rs.next())
               {
               if(j==0)
                   {
                   im=rs.getString("story1");
               path2=path1+im;

               out.println("<span class='e' style='top:"+t1+"px; left:"+l1+"px;'>");
               out.println("<br><center><h3>Latest News</h3></center><p class='a1'><br>");
              
               out.println(rs.getString("title"));
                out.println("<img src='"+im+"' height='100' width='100' style='float:right'>");
               out.println("<br></p><p class='b1'>");
               out.println(rs.getString("gist"));
               j++;
               out.println("<br><input type='submit' name='"+j+"' id='"+j+"' value='Read more..' onClick='w(this.id)'>");
               out.println("</span>");

                   }
               else
                   {
               if(i==0)
                   l=100;
               else
                   l=550;
               im=rs.getString("story1");
               out.println("<span class='d' style='top:"+t+"px; left:"+l+"px;'>");
               out.println("<p class='a'>");
               
               out.println(rs.getString("title"));
               out.println("<img src='"+im+"' height='100' width='100' style='float:right'>");
               out.println("</p><div class='b'>");
               out.println(rs.getString("gist")+"...");
               j++;
               out.println("<br><input type='submit' name='"+j+"' id='"+j+"' value=' Read more.. ' onClick='w(this.id)'>");
               out.println("</span>");
               if(i==1)
               t+=250;
               i++;
               i=i%2;
}
                                     }
           c.close();
           out.println("</form>");
           }
       catch(Exception e)
               {
           out.println(e);
           }
            %>
            <%
            try
{
                int i1=0,p,tar,m;
                float n1,n;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:webtech3");
Statement st=c.createStatement();
ResultSet rs=st.executeQuery("select * from headl");
while(rs.next())
{
    if(i1==0)
        {
    p=rs.getInt("score");
    out.println("<marquee>");
    out.println(rs.getString("team1")+" Vs "+rs.getString("team2"));
    out.println("<p style='color:green'>Score:"+p);
    out.println("/"+rs.getInt("wickets"));
    n1=rs.getFloat("overs");
     out.println(" Overs:"+n1);
    tar=rs.getInt("target");
    //out.println("Target:"+tar);
    if(tar!=0)
    {
    
    
    m=tar-p+1;

    out.println("Target:"+tar);
    out.println("<p style='color:maroon'>Require "+m+" runs in ");


     n=n1*6;
     out.println((int)n+" balls</marquee>");
     out.println("<a href='news.jsp' target=_self>Update ScoreBoard</a>");
        }
        i1++;
        }
        else
            {
                if(rs.getInt("result")==1)
                    {
                    String resul="";
                    String t1=rs.getString("team1");
                    String t2=rs.getString("team2");
                    int p1=rs.getInt("target");
                     p=rs.getInt("score");
                     int r=rs.getInt("wickets");
                     r=10-r;
                     int q=p1-p;

                    int res;
                    if((q)>0)
                        res=1;
                    else if(q<0)
                        res=2;
                    else
                        res=0;
                        
                    p1--;
                if(res==1)
                   resul=t1;
                else if(res==2)
                    resul=t2;
                 int l1=850;
                int t=300;
                out.println("<span class='e1' style='top:"+t+"px; left:"+l1+"px;'>");
                out.println("<br><span  id = 'glowtext' style = 'padding-left:100px; position: absolute; filter:glow(color = red, strength = 5 ); font-size: large'>Latest Updates</span><p class='b'>");

                out.println("<br>Previous Match Result :<div class='z'>");
                out.println(resul+" won the match<br></div>");
                out.println("Match details:<div class='z'>"+t1+" Vs "+t2+"<br>");
                out.println(t1+" Score :  "+p1);
                out.println("<br>"+t2+" Score : "+p);

                if(res==1)
                out.println(resul+" won the match by "+(q-1)+" runs");
                else if(res==2)
                 out.println(resul+" won the match by "+r+" wickets");
                out.println("</div>");
            }
                }
            }
}

catch(Exception e)
{
out.println(e);
}
%>
    </body>
</html>
