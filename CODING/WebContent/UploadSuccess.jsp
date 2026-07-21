<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.BeanClasses.UploadBean"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>UploadSuccessjsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="new.css" rel="stylesheet" type="text/css" />
</head>
<body background="images/bc10.jpg">
<br/><br/><br/><br/><br/><br/>
  <h2>

<center>
  <div class="nav">
   <div class="nav li">
  
          <li><a href="User.jsp">Home</a></li> 
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
 <div class="column1" style="font-size: 25px; color: purple;"> 

      <h2 style="font-size: 25px; color: red;">File has been uploaded successfully..</h2><br>
 <%
UploadBean bean=new UploadBean();
String s = session.getAttribute("key").toString().trim();

out.print("Key Value  ::  "+" "+s);

%> 
    </center>
   </div></div>
</h2>
</body>
</html>