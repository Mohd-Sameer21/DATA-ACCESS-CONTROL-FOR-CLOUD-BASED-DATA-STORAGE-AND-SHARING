<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="new.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/><br/>
  <h2>

<center>
  <div class="nav">
   <div class="nav li">
  
          <li><a href="User.jsp">Home</a></li>     
          <li><a href="contact.jsp">Contact Us</a></li>
          <li><a href="UserLogout" class="clr">Logout</a></li>
      </div>
      </center>
      <br/>
  <div class="row">

<div class="column">
  
    Our Work<br/><br/>
     
   
      <a href="User.jsp">Upload</a><br/><br/>
      <a href="ViewParticularUserTable">View All Table</a><br/><br/>
      <a href="recFiles.jsp">Files Received</a><br/><br/>
      <a href="requestkey.jsp">Request Key</a><br/><br/>
      <a href="OpenReq.jsp">Open Key Requests</a><br/><br/>
      <a href="OpenRes.jsp">Open Key Responses</a><br/><br/>
          
       </div>    

       <center>
 <div class="column1"> 
 
<center>
<%
String from = request.getParameter("from");
String fname = request.getParameter("fileName");
//System.out.println(" "+from);
//System.out.println(" "+fname);
HttpSession httpSession=request.getSession();
String to=httpSession.getAttribute("username").toString().trim();;

//System.out.println(" "+to);
%>
<form action="key" method="post">

<pre>
File Name :	<input type="text" name="fname" value="<%=fname%>"/>

Recipient  :	<input type="text" name="Recipient" value="<%=from%>"/>

File Owner :	<input type="text" name="fowner" value="<%=to%>"/>

Key :	<input type="text" name="key"/>

<input type="submit" value="submit">
</pre>
</form>
</center>

</center>
   </div></div>
</h2>
</body>
</html>