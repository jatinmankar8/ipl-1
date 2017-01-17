<html>
    <head>

        <title>JSP Page</title>
        <script>
         function a()
         {
             //alert("Entered");
             
             document.getElementById('s').value=document.getElementById('try').value;
             //alert(document.getElementById('s').value);
             //var r=window.open("tr1.jsp");
         }

                </script>
    </head>
    <body>
   <form method="get" action="tr1.jsp">
        <input type="submit" value="success" name="try" id="try" onclick="a()">
        <input type="hidden" value="s" name="s" id="s">
    </form>

    </body>
</html>
