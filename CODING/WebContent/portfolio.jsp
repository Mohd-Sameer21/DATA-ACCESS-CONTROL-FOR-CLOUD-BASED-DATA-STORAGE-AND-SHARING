<!DOCTYPE html 5.0>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Portfolio</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="new.css" rel="stylesheet" type="text/css" />

</head>

<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/><br/>
<h1>
<div class="row">

<div class="column">
          <a href="index.jsp" class="active">Home</a><br/><br/>
          <a href="Login.jsp" >Login</a><br/><br/>
         <a href="portfolio.jsp">Admin</a><br/><br/>
          <a href="contact.jsp">Contact Us</a><br/><br/>
        </div>
   <div class="column1">
       
          <form action="AdminLogin" method="post">
          <h3 align="center">Admin Login:</h3>
        <table align="center">
        <tr><td style="font-size: 20px; color: red;">AdminName:</td><td><input type="text" name="adminname"></input></td></tr>
        <tr><td style="font-size: 20px; color: red;">Password:</td><td><input type="password" name="adminpass"></input></td></tr>
        <tr><td style="font-size: 20px; color: red;"><input type="submit" name="submit" value="Login"></input></td></tr>
        </table>
        </form>
      
</div></div></h1>

</body>
</html>
