
<html>
    <head>
        
        <title>JSP Page</title>
    </head>
    <body>
<center>
<br>
<br>
<br>
		<%@ include file="home.jsp" %></center>
        <%@ page import="java.sql.*"%>
        <%@ page import="java.io.*"%>
       <%
       try
               {
           int i=Integer.parseInt(request.getParameter("lab"));
           int j=1;
          // String path1="C:/Documents and Settings/visual/My Documents/NetBeansProjects/final1/web/";
	      String path1="C:/Program Files/Apache Software Foundation/Tomcat 6.0/webapps/ROOT/project/";
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection c=DriverManager.getConnection("jdbc:odbc:webtech3");
            Statement st=c.createStatement();
            ResultSet rs=st.executeQuery("select * from headnews");
            while(rs.next())
            {
             if(i==j)
                 {
                 String s=rs.getString("story");
                 String im=rs.getString("story1");
                 s=path1+s;
                 s=s+".txt";
                 out.println("<div style='position:absolute; left:200px; top:150px'><br><br><p style='color:green; font-size:16pt'>"+rs.getString("title")+"</p><br><br>");
                 FileReader fr=new FileReader(s);
                 BufferedReader br=new BufferedReader(fr);
                 out.println("<img src='"+im+"' height='300' width='300' style='float:right'>");
                 s=br.readLine();
                 while(s!=null)
                     {

                        out.println(s+"<br>");
                        s=br.readLine();
                     }
                 }
             j++;
            }
        out.println("</div>");
       }
       catch(Exception e)
               {
           out.println(e);
           }
       %>
    </body>
</html>
