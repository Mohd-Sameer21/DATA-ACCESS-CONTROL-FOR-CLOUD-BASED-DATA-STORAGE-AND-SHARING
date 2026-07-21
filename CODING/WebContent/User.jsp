<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.BeanClasses.UploadBean"%>
<%@page import="java.util.Random"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>userjsp</title>
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

<div class="column1">          

    		<script>
			function validateForm() {
				var x = document.forms["myForm"]["file"].value;
				if (x == null || x == "") {
					alert("Please Choose any file");
					return false;
				}
			}
		</script>
<form name="myForm" action="UploadFile" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">

<table border="1" align="center">
<th style="font-size: 30px;">Upload a File:</th>
<tr><td style="font-size: 25px; color: purple;">
<%    
    HttpSession httpSession=request.getSession();
    String username=httpSession.getAttribute("username").toString().trim();;
    
    httpSession.setAttribute("username", username);    
    
    out.print("Welcome :  "+username);
	Random random = new Random();
	int key = random.nextInt(1234567890);	
	httpSession.setAttribute("key", key);

%>
</td></tr>

<tr><td><input type="file" name="file" size="5000000000"></td>
<td><input type="submit" value="Upload"></td></tr>
</table>
</form>
        </div></div>       
       </h2>
</body>
</html>
