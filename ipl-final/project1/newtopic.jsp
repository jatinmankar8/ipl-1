<html>
    <head>
        
        <title>JSP Page</title>
        <style>
            form {color:purple; }
            td { color:#aa544e }
	button { background-color:maroon; width:120; }
	div { font-color:white; font-family:maradona }
    </style>
    </head>
    <body>
   <%@ include file="home.jsp"%>
        <center>
               
        
        <form method="get" action="topicadd.jsp">
            <br><br><br>
                <h3>Create a new topic</h3>
            <table>
                
                <tr>
                    <td>
                    Name:
                    </td>
                    <td>
                        <input type="text" size="40" name="name" ><br><br>
                    </td>
                </tr>

                 <tr>
                    <td>
                    Title:
                    </td>
                    <td>
                        <input type="text" size="40" name="title" ><br><br>
                    </td>
                </tr>

                <tr>
                    <td>
                    Comments:
                    </td>
                    <td>
                        <textarea rows="10" cols="30" name="comment" > Enter your Comments here....</textarea><br><br>
                    </td>
                </tr>

                <tr>

                    <td>
                        <input type="submit" value="Confirm" >
                           <input type="reset" value="Reset" >
                    </td>
                </tr>
            </table>
        </form>
        </center>
    </body>
</html>
