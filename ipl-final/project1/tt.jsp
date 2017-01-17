<html>
<body>
<%
  out.println("Hi");
    for (int i = 0; i < 10; i++)
      {
  out.println("Number of itartion = " + i);
  out.println("Wait:");
      try
      {
        Thread.sleep(4000);

            }catch (InterruptedException ie)
            {
  out.println(ie.getMessage());
            }
        }
    %>
</body>
</html>